import cv2
import numpy as np
import os
import glob
# net = cv2.dnn.readNet("yolov3.weights","yolov3_back.cfg") # Yolov3
net = cv2.dnn.readNet("yolov3-spp.weights","yolov3-spp.cfg") # Yolov3-spp
class_mine=['Vehicle','Pedestrian','TrafficLights','Signs','Plant']
with open("coco.names","r") as f:
    classes = [line.strip() for line in f.readlines()]

layer_names = net.getLayerNames()
outputlayers = [layer_names[i[0] - 1] for i in net.getUnconnectedOutLayers()]
index=0
for file in glob.glob(os.path.join("/home/kankan/carla/Dist/CARLA_Shipping_0.9.7-2-g73f91e0b/LinuxNoEditor/PythonAPI/examples/_out","*.png")):
    index+=1
    img = cv2.imread(file)
    title, ext = os.path.splitext(os.path.basename(file))
    f=open(os.path.join('/home/kankan/Desktop/labelImg/data',title+'.txt'),'w+')
    img = cv2.resize(img,None,fx=1,fy=1)
    height,width,channels = img.shape
    blob = cv2.dnn.blobFromImage(img,0.005,(608,608),(0,0,0),True,crop=False)
    net.setInput(blob)
    outs = net.forward(outputlayers)
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
                if int(class_id) is 0:
                    class_id=1
                if int(class_id) is 3:
                    class_id=0
                if int(class_id) is 7:
                    class_id=2
                if int(class_id) is 2:
                    class_id=0
                if int(class_id) is 9:
                    class_id=2
                if int(class_id) is 12:
                    class_id=3
                if int(class_id) is 58:
                    class_id=4
                if class_id>4:
                    class_id=4
                    print("Detected an Extra object")
                    print(classes[class_id], detection[0], detection[1], detection[2], detection[3])
                    pass
                else:
                    #print(class_mine[class_id],detection[0],detection[1],detection[2],detection[3])
                    # print("%i %0.9f %0.9f %0.9f %0.9f\n"%(class_id, detection[0], detection[1], detection[2],detection[3]))
                    f.write("%i %0.9f %0.9f %0.9f %0.9f\n"%(class_id, detection[0], detection[1], detection[2],detection[3]))

                # cv2.circle(img,(center_x,center_y),10,(0,255,0),2)
                # rectangle co-ordinaters
                x = int(center_x - w / 2)
                y = int(center_y - h / 2)
                # cv2.rectangle(img,(x,y),(x+w,y+h),(0,255,0),2)

                boxes.append([x, y, w, h])  # put all rectangle areas
                confidences.append(float(confidence))  # how confidence was that object detected and show that percentage
                class_ids.append(class_id)  # name of the object tha was detected
    indexes = cv2.dnn.NMSBoxes(boxes, confidences, 0.4, 0.6)
    # colors= np.random.uniform(0,255,size=(len(classes),3))
    font = cv2.FONT_HERSHEY_PLAIN
    f.close()
    # for i in range(len(boxes)):
    #     if i in indexes:
    #         x, y, w, h = boxes[i]
    #         label = str(classes[class_ids[i]])
    #         cv2.rectangle(img, (x, y), (x + w, y + h), (255,0,0), 2)
    #         cv2.putText(img, label, (x, y + 30), font, 1, (255, 255, 255), 2)
    # if(index>8):
    #     break
    # cv2.imshow("Image", img)
    # cv2.waitKey(0)
    # cv2.destroyAllWindows()