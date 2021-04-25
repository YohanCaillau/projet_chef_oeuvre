import cv2
import sys
import time
from objects_on_road_processor import ObjectsOnRoadProcessor

def save_image_and_speed(video_file):
    object_detection = ObjectsOnRoadProcessor()
    cap = cv2.VideoCapture(video_file + '.avi')
    fps = cap.get(cv2.CAP_PROP_FPS)
    
    timestamps = [cap.get(cv2.CAP_PROP_POS_MSEC)]
    calc_timestamps = [0.0]

    try:
        i = 0
        while cap.isOpened():
            _, frame = cap.read()
            object_detection.detect_objects(frame)
            # time when we finish processing for this frame 
            # new_frame_time = time.time()
            new_frame_time = cap.get(cv2.CAP_PROP_POS_MSEC)
            timestamps.append(new_frame_time)
            calc_timestamps.append(calc_timestamps[-1] + 1000/fps)
            print(object_detection.resume_driving.speed)
            cv2.imwrite("%s_%03d_%03d_%03d.png" % (video_file, i, object_detection.speed, new_frame_time), frame)
            i += 1
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break
    finally:
        cap.release()
        cv2.destroyAllWindows()



if __name__ == '__main__':
    save_image_and_speed(sys.argv[1])