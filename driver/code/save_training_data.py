import cv2
import sys
import time
from hand_coded_lane_follower import HandCodedLaneFollower
from objects_on_road_processor import ObjectsOnRoadProcessor

def save_image_and_steering_angle(video_file):
    lane_follower = HandCodedLaneFollower()
    cap = cv2.VideoCapture(video_file + '.avi')

    try:
        i = 0
        while cap.isOpened():
            _, frame = cap.read()
            lane_follower.follow_lane(frame)
            # time when we finish processing for this frame 
            new_frame_time = time.time() 
            cv2.imwrite("%s_%03d_%03d.png" % (video_file, i, lane_follower.curr_steering_angle), frame)
            i += 1
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break
    finally:
        cap.release()
        cv2.destroyAllWindows()

def save_image_and_speed(video_file):
    object_detection =  ObjectsOnRoadProcessor()
    cap = cv2.VideoCapture(video_file + '.avi')

    try:
        i = 0
        while cap.isOpened():
            _, frame = cap.read()
            object_detection.detect_objects(frame)
            # time when we finish processing for this frame 
            new_frame_time = time.time() 
            cv2.imwrite("%s_%03d_%03d.png" % (video_file, i, object_detection.speed, new_frame_time), frame)
            i += 1
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break
    finally:
        cap.release()
        cv2.destroyAllWindows()



if __name__ == '__main__':
    save_image_and_steering_angle(sys.argv[1])