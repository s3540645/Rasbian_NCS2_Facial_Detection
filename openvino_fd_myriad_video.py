import cv2 as cv
import time

from os.path import expanduser
home = expanduser("~")
modelspath = home + '/OpenVINO/models/'

font                   = cv.FONT_HERSHEY_SIMPLEX
topRightCornerOfText = (450, 10)
topRightCornerOfText2 = (450, 40)
fontScale              = 0.4
fontColor              = (0,255,0)
lineType               = 2

fps = ""
detectfps = ""
framecount = 0
detectframecount = 0
time1 = 0
time2 = 0

# Load the model.
net = cv.dnn.readNet(modelspath + 'face-detection-adas-0001.xml',
                     modelspath + 'face-detection-adas-0001.bin')
# Specify target device.
net.setPreferableTarget(cv.dnn.DNN_TARGET_MYRIAD)

# Start Video Captured
cap = cv.VideoCapture(0)
cap.set(3,640) # set Width
cap.set(4,480) # set Height

while True:
    t1 = time.perf_counter()
    ret, frame = cap.read()
    #frame = cv.flip(frame, -1)
    blob = cv.dnn.blobFromImage(frame, size=(672, 384), ddepth=cv.CV_8U)
    net.setInput(blob)
    out = net.forward()
    for detection in out.reshape(-1, 7):
        confidence = float(detection[2])
        xmin = int(detection[3] * frame.shape[1])
        ymin = int(detection[4] * frame.shape[0])
        xmax = int(detection[5] * frame.shape[1])
        ymax = int(detection[6] * frame.shape[0])
        if confidence > 0.5:
            cv.rectangle(frame, (xmin, ymin), (xmax, ymax), color=(0, 255, 0))
        cv.putText(frame, fps, topRightCornerOfText, font,
            fontScale,fontColor, lineType)
        cv.putText(frame, detectfps, topRightCornerOfText2, font,
            fontScale,fontColor, lineType)
    # Save the frame to an image file.
    #cv.imwrite('out.png', frame)
    cv.imshow('video',frame)
    k = cv.waitKey(30) & 0xff
    if k == 27: # press 'ESC' to quit
        break
    # FPS calculation
    framecount += 1
    if framecount >= 15:
        fps       = "(Playback) {:.3f} FPS".format(time1/15)
        framecount = 0
        time1 = 0
        time2 = 0
    t2 = time.perf_counter()
    elapsedTime = t2-t1
    time1 += 1/elapsedTime
cap.release()
cv.destroyAllWindows()
