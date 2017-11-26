# Face Tracker

You need Raspberry Pi 3 for this:

First, get opencv

`
sudo apt-get install libopencv-dev
`

then make sure you have the FaceTracker submodule

replace the `face_tracker.cc` demo in FaceTracker/src/exe with `face_tracker_tcp.cc` from this directory 

edit the code on line 224 with the correct IP address of your computer.

finally change directory to Facetracker type `make`


