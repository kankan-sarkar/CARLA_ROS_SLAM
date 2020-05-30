import cv2
import numpy as np
import os
import glob
import time
import timeit
cap = cv2.VideoCapture('out.mkv')
# net = cv2.dnn.readNet("yolov3-tiny-obj_3800.weights","yolov3.cfg")
def myfun(file1):
    net = cv2.dnn.readNet("/home/kankan/Documents/backup/yolov3_20000.weights", "/home/kankan/PycharmProjects/YoloTrafficSignal/yolov3.cfg")
    classes = []
    with open("coco.names","r") as f:
        classes = [line.strip() for line in f.readlines()]
        print(classes)
    layer_names = net.getLayerNames()
    outputlayers = [layer_names[i[0] - 1] for i in net.getUnconnectedOutLayers()]

    # colors= np.random.uniform(0,255,size=(len(classes),3))
    # img = cv2.imread("00000001.png")
    img = cv2.imread(file1)
    img = cv2.resize(img,None,fx=1,fy=1)
    height,width,channels = img.shape


    #detecting objects
    blob = cv2.dnn.blobFromImage(img,0.00392,(608,608),(0,0,0),True,crop=False)
    net.setInput(blob)
    outs = net.forward(outputlayers)
    # print(outs[1])


    # Showing info on screen/ get confidence score of algorithm in detecting an object in blob
    class_ids = []
    confidences = []
    boxes = []
    for out in outs:
        for detection in out:
            scores = detection[5:]
            class_id = np.argmax(scores)
            confidence = scores[class_id]
            if confidence > 0.1:
                # onject detected
                center_x = int(detection[0] * width)
                center_y = int(detection[1] * height)
                w = int(detection[2] * width)
                h = int(detection[3] * height)

                # cv2.circle(img,(center_x,center_y),10,(0,255,0),2)
                # rectangle co-ordinaters
                x = int(center_x - w / 2)
                y = int(center_y - h / 2)
                # cv2.rectangle(img,(x,y),(x+w,y+h),(0,255,0),2)

                boxes.append([x, y, w, h])  # put all rectangle areas
                confidences.append(float(confidence))  # how confidence was that object detected and show that percentage
                class_ids.append(class_id)  # name of the object tha was detected

    indexes = cv2.dnn.NMSBoxes(boxes, confidences, 0.4, 0.6)
    print(class_ids)
    font = cv2.FONT_HERSHEY_PLAIN
    for i in range(len(boxes)):
        if i in indexes:
            x, y, w, h = boxes[i]
            label = str(classes[class_ids[i]])
            print("Value of i=",i)
            color = (255,0,0)
            cv2.rectangle(img, (x, y), (x + w, y + h), color, 2)
            cv2.putText(img, label, (x, y + 30), font, 1, (255, 255, 255), 2)
    # return img
    cv2.imshow("Image", img)
    cv2.waitKey(0)
    cv2.destroyAllWindows()

# print(timeit.timeit(myfun,number=10)/10)
myfun("/home/kankan/carla/Dist/CARLA_Shipping_0.9.7-2-g73f91e0b/LinuxNoEditor/PythonAPI/examples/_out/00156202.png")

# while cap.isOpened():
#     ret, frame = cap.read()
#     # if frame is read correctly ret is True
#     if not ret:
#         print("Can't receive frame (stream end?). Exiting ...")
#         break
#     cv2.imshow('frame', myfun(frame))
#     if cv2.waitKey(1) == ord('q'):
#         break
# cap.release()
# cv2.destroyAllWindows()