# Hearing the Self: a Spectral Experience

We propose an interactive, audiovisual installation piece offering a glimpse into the human spectrum. Motivated by the concept of spectrum derived from Mathematics and Physics, we attempt to recreate the process by which the human brain *perceives* the world. The audience's face will be an interface through the use of computer vision.

![alt text](https://raw.githubusercontent.com/fdch/specexp/master/media/vid-269.jpeg)

In trying to answer the most fundamental questions of our existence, we unveil a daunting level of complexity in our universe. One such question is, *Where are we?*. This question's complexity grows quickly as we change contexts. It is easy to answer locally and even globally; we have well-established coordinates and descriptions for our place on Earth. But when we extend this question to the universe, we no longer have a canonical and precise answer. 

![alt text](https://raw.githubusercontent.com/fdch/specexp/master/media/vid-071.jpeg)

To answer this question, we must understand *perception*. Field’s medalist, Professor Alain Connes, suggests that our brain is a machine that performs an inverse Fourier Transform through which it constructs a geometric image from correlations of reflections of light. This is a small consequence of the idea that a correct way to answer the above question is that we are in the *spectrum of an operator*. Spectrum derives from the Latin word, specere, meaning "to look." "We have noted that we already are skilled at finding visual spatial patterns, but that we have far less experience with the spectral properties of the world, especially outside of the visible wavelengths." For this reason, the **spectral experience** is both visual and audio, where the audio acts by extending perception beyond what the eye can see.

Mathematically, the spectrum of an operator resides in the complex, or imaginary numbers. The spectrum has a fundamental role in trying to develop a unified theory of the universe. One model used by Theoretical Physicists consists of defining space-time through spectral properties. This has sparked a development into spectral geometry; comprehending the geometrical properties of a space by understanding its spectrum.

The **spectral experience** offers a glimpse into a different and larger reality, beyond what we think we can perceive - beyond what we consider *real*. More specifically, we would provide the experience of "a glimpse into one's own spectrum."

## The Experience

## Synopsis

An audience of one enters a dark room and performs an audiovisual installation from 2-6 minutes using only her face.

![alt text](https://raw.githubusercontent.com/fdch/specexp/master/media/vid-253.jpeg)

## Description
There is a soft, low frequency sound that invites the audience into the performing space. She finds a spotlight in the center, where she is expected to be during the performance. The light shines on her face as the performance begins. In front of her are two screens onto which the projection is mapped from behind. Two screens are needed to create an atmosphere of immersion. The sound comes from four speakers distributed in quadraphonic setup, englobing the audience. 

## Camera Feed
The core of this installation  depends on the video capturing of the performer's face. Using [facetracking software](https://github.com/kylemcdonald/FaceTracker) we obtain a 132 point mesh corresponding to the face captured by the camera feed. We then compute a Fast Fourier Transform on this data to obtain the spectral information we use to generate the sounds and the projections.

## Projection
The projected video displays lines and filled rectangles with different alpha values which represent spectral information of the incoming feed from the camera, such as: real and imaginary values as well as the magnitude of these values. After some operations on the spectrum, the IFFT is also displayed in a transformed way.

## Sound
Different oscillators in frequencies around 25-60Hz represent the first modes of the FFT performed on the mesh obtained from the audience's face. These low waves of sound are spatialized according to different phases obtained as well as from the spectrum of the face. This helps englobe the audience in an immersive experience. A higher layer of sound is then introduced, after which the interaction with the audience is more evident. Higher pitched grains of sounds are triggered according to the position of the face; once a position has been registered, the direction of the gaze establishes the axis around which sounds will move.

## The Math

In 1822 Joseph Fourier introduced the concept of Fourier series to decompose a signal into elementary terms. In this way, Fourier inadvertently tied the real functions to a decomposition with respect to the spectrum of the Laplace operator on an interval.

![alt text](https://raw.githubusercontent.com/fdch/specexp/master/media/vid-180.jpeg)

As mentioned above, data is taken of the audience's image and face. In this project we will be exploiting two different operators. On the one hand, analogously to Fourier, the Laplace operator of a two dimensional grid. The grid is the pixels of the image taken by the webcamera. On the other hand, we consider the graph Laplacian defined on the nodes coming from the FaceOSC.app.

## The Software

1. [Puredata](http://msp.ucsd.edu)

2. [Gem](https://github.com/umlaeute/Gem)

3. [pix_opencv](https://github.com/avilleret/pix_opencv)

## How to run

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
