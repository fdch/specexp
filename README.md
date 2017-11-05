# Hearing the Self: a Spectral Experience

Click [here](https://vimeo.com/241401699) or on the image to see the video:

[![Watch on Vimeo](https://raw.githubusercontent.com/fdch/specexp/master/media/vid-000.jpg)](https://vimeo.com/241401699)

This interactive, audio/visual installation simulates the process by which the human brain perceives the world. From a mechanical point of view, it has been suggested that the human brain is a machine that performs an inverse Fourier Transform through which it constructs a geometric image from correlations of reflections of light. While a significant component of the installation is visual, the audio acts via sonification to extend the perception beyond just what the eye can see. The audience is invited to experience spectral properties outside of the more familiar visible wavelengths. This piece simultaneously addresses that the mechanical component of perception, even when perceiving one's own self, is only a part of a complex process shaped by many external stimuli, one of the strongest being societal. The code is available [here](https://github.com/fdch/specexp)

![alt text](https://raw.githubusercontent.com/fdch/specexp/master/media/vid-180.jpeg)

In trying to answer the most fundamental questions of our existence, we unveil a daunting level of complexity in our universe. One such question is, *Where are we?*. This question's complexity grows quickly as we change contexts. It is easy to answer locally and even globally; we have well-established coordinates and descriptions for our place on Earth. But when we extend this question to the universe, we no longer have a canonical and precise answer. 

![alt text](https://raw.githubusercontent.com/fdch/specexp/master/media/vid-071.jpeg)

To answer this question, we must understand *perception*. Field’s medalist, Professor Alain Connes, suggests that our brain is a machine that performs an inverse Fourier Transform through which it constructs a geometric image from correlations of reflections of light. This is a small consequence of the idea that a correct way to answer the above question is that we are in the *spectrum of an operator*. Spectrum derives from the Latin word, specere, meaning "to look." "We have noted that we already are skilled at finding visual spatial patterns, but that we have far less experience with the spectral properties of the world, especially outside of the visible wavelengths." For this reason, the **spectral experience** is both visual and audio, where the audio acts by extending perception beyond what the eye can see.

Mathematically, the spectrum of an operator resides in the complex, or imaginary numbers. The spectrum has a fundamental role in trying to develop a unified theory of the universe. One model used by Theoretical Physicists consists of defining space-time through spectral properties. This has sparked a development into spectral geometry; comprehending the geometrical properties of a space by understanding its spectrum.

The **spectral experience** offers a glimpse into a different and larger reality, beyond what we think we can perceive - beyond what we consider *real*. More specifically, we would provide the experience of "a glimpse into one's own spectrum."

## The Experience

## Synopsis

In the first iteration of the experience, an audience of one enters a dark room and performs an audiovisual installation from 2-6 minutes using only her face. In this second iteration, the concept is expanded. The dark room is now a black box in the center of the room. Inside the black box there are three screens, each of which has its own camera that performs the face tracking. The data from the tracker is sent to a main computer which generates the audio filtering that is routed to the room, and the visual representations into the source screen. Up to three participants at a time can change the scenes with their faces or with a usb pedal/switch. The sound is the result of convolution of the cropped image (which often is being shown as its Fast Fourier Transform). Since the face tracking affects the cropping of the sensor (to match the face of the participant), the audio is reactive to the movements of the participant. Therefore, the three participants can interact with each other using the instrument to perform.

![alt text](https://raw.githubusercontent.com/fdch/specexp/master/media/vid-253.jpeg)

The spectators outside the black box can walk around and see the actual feed coming from the inside of the box. The auditory scene is enhanced with an extra ring of 4 speakers in a wider setup outside the black box, therefore producing an 8 channel spatial scene with some elevation, allowing for subtleties in the sonic landscape that were missing in the first iteration of the experience.

The overall exaggeration of this iteration is an attempt to intensify the increasing presence of the screen, the network and the constant surveilance of the self. It is also an attempt to enhance the playfulness of the experience by inviting two other participants to interact with, and by generating an explicit expectation and need to go inside the black box. The idea of the black box is simply to mimic the ubiquity of the computer in every day life, and serves to demythify the concept of the black box by inviting the participant inside. This demythification is also carried out by the use of open-source and recycled materials.

## The Math

In 1822 Joseph Fourier introduced the concept of Fourier series to decompose a signal into elementary terms. In this way, Fourier inadvertently tied the real functions to a decomposition with respect to the spectrum of the Laplace operator on an interval.

![alt text](https://raw.githubusercontent.com/fdch/specexp/master/media/vid-180.jpeg)

As mentioned above, data is taken of the audience's image and face. In this project we will be exploiting two different operators. On the one hand, analogously to Fourier, the Laplace operator of a two dimensional grid. The grid is the pixels of the image taken by the webcamera. On the other hand, we consider the graph Laplacian defined on the nodes coming from the FaceOSC.app.

## The Software

1. [Puredata](http://msp.ucsd.edu)

2. [Gem](https://github.com/umlaeute/Gem)

3. [pix_opencv](https://github.com/avilleret/pix_opencv)

## How to run (iteration 1)

![map](https://raw.githubusercontent.com/fdch/specexp/master/media/map.jpg)

`
$ cd bin
`

Fetch images (defaults to 600)

`
$ ./fetch 600
`

`
$ ./run
`

or run without GUI

`
$ ./run 1 "Audio Input device" "Audio  Output device name"
`

**Note:** Some countries (e.g. China) block Google searches, so here are some alternative search engines to obtain an updated *face* database:

### Yahoo
`
https://sg.images.search.yahoo.com/search/images;_ylt=A8tUwJrruuBZnHYAoXol4gt.?p=face&imgc=bw&fr=sfp&imgty=face&fr2=p%3As%2Cv%3Ai
`

### Bing

`
http://cn.bing.com/images/search?&q=bing+api&qft=+filterui:imagesize-custom_128_128+filterui:aspect-square+filterui:face-face+filterui:license-L2_L3_L5_L6&FORM=IRFLTR
`

Perhaps [this](https://www.gorkahernandez.com/blog/image-search-abstraction-layer-node-js/) might be useful for Bing.
