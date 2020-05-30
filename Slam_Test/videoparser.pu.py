# import numpy as np
# import cv2 as cv
# cap = cv.VideoCapture('out.mkv')
# while cap.isOpened():
#     ret, frame = cap.read()
#     # if frame is read correctly ret is True
#     if not ret:
#         print("Can't receive frame (stream end?). Exiting ...")
#         break
#     gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
#     cv.imshow('frame', gray)
#     if cv.waitKey(1) == ord('q'):
#         break
# cap.release()
# cv.destroyAllWindows()
import time
import glob
import os
import cv2
import numpy as np
net = cv2.dnn.readNetFromDarknet( "/home/kankan/PycharmProjects/YoloTrafficSignal/yolov3.cfg","/home/kankan/Documents/yolov3_20000.weights")
net.setPreferableBackend(cv2.dnn.DNN_BACKEND_CUDA)
net.setPreferableTarget(cv2.dnn.DNN_TARGET_CUDA)
def myfun(file1):
    classes = []
    with open("/home/kankan/PycharmProjects/YoloTrafficSignal/coco.names","r") as f:
        classes = [line.strip() for line in f.readlines()]
        #print(classes)
    layer_names = net.getLayerNames()
    outputlayers = [layer_names[i[0] - 1] for i in net.getUnconnectedOutLayers()]

    # colors= np.random.uniform(0,255,size=(len(classes),3))
    # img = cv2.imread("00000001.png")
    img = cv2.imread(file1)
    img = cv2.resize(img,None,fx=1,fy=1)
    height,width,channels = img.shape


    #detecting objects
    time1 = time.time() * 1000
    blob = cv2.dnn.blobFromImage(img,0.00392,(602,602),(0,0,0),True,crop=False)
    net.setInput(blob)
    outs = net.forward(outputlayers)
    time2 = time.time() * 1000
    print(time2 - time1)
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
    #print(class_ids)
    font = cv2.FONT_HERSHEY_PLAIN
    for i in range(len(boxes)):
        if i in indexes:
            x, y, w, h = boxes[i]
            label = str(classes[class_ids[i]])
            #print("Value of i=",i)
            color = (255,0,0)
            cv2.rectangle(img, (x, y), (x + w, y + h), color, 2)
            cv2.putText(img, label, (x, y + 30), font, 1, (255, 255, 255), 2)
            cv2.imshow("Cameras", img)
            if cv2.waitKey(10) & 0xFF == ord('q'):
                break
    return img
    # cv2.imshow("Image", img)
    # cv2.waitKey(0)
    # cv2.destroyAllWindows()



for file in glob.glob(os.path.join("/home/kankan/carla/Dist/CARLA_Shipping_0.9.7-2-g73f91e0b/LinuxNoEditor/PythonAPI/examples/_out","*.png")):
    # print(file)
    pass

for i in range(2412,3243):
    path=os.path.join("/home/kankan/carla/Dist/CARLA_Shipping_0.9.7-2-g73f91e0b/LinuxNoEditor/PythonAPI/examples/_out/",str(i)+".png")

    myfun(path)
    # cv2.imwrite("./output/"+str(i)+".png",)

    # print(i)
# video = cv2.VideoWriter("myvid.avi", 0, 20, (1280, 720))
# for i in range(2412,3243):
#     path=os.path.join("./output/",str(i)+".png")
#     video.write(cv2.imread(path))
#     print(i)
cv2.waitKey(0)
cv2.destroyAllWindows()
# video.release()
