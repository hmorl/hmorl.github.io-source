---
title: "t-SNE Sampler (machine learning project)"
date: 2019-05-10
image: img/tsne-sampler.png
categories: ["coding", "composition"]
draft: false
---

<div class = "video-container"><iframe src="https://player.vimeo.com/video/335258061" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>

I completed this project as part of Rebecca Fiebrink's Data and Machine Learning module at Goldsmiths. It uses the t-SNE algorithm to reduce the number of dimensions of audio analysis data, so that sounds are arranged in 2D space according to their likeness to one another. I used around 600 sounds, consisting of royalty free samples and my own field recordings.

For example, all the kick drums are together, all of the wooden percussion sounds are near eachother, and the hi-hat sounds are grouped - and suitably far away from the kick samples.

The project has 2 parts - an audio analysis and t-SNE generation Python script based on Gene Kogan's [audio t-SNE script](https://github.com/ml4a/ml4a-guides/blob/master/notebooks/audio-tsne.ipynb), and a sequencing program which uses the 2D t-SNE output, made in C++/openFrameworks and the ofxMaxim addon. The program can sync with Ableton Link-enabled applications.

Sounds are triggered by "Lens" objects. I liken these to sonic magnifying glasses, trawling over and uncovering the sonic artefacts. A Lens can be created by clicking and dragging to set its radius. All samples inside a Lens can be triggered. The speed and time that the triggering occurs depends on the "freq" and "phase offset" sliders for each Lens in the controls panel - meaning polyrhythms can be easily formed. Something that emerged which I liked was the ability to turn the frequency up super fast, creating a kind of granular synthesis / microsound aesthetic.

Each Lens triggers its samples at a set volume and relative speed/pitch, again according to the control panel. The wandering radius and speed controls make the Lens drift around its origin position, according to Perlin noise. This allows the Lens to travel into different neighbourhoods of sound, as well as just triggering sounds within a set region.

After each Lens collects all of its currently "in view" samples (this happens every frame), it sorts them by distance from the center of the Lens. A feature can be turned on which triggers the samples in order from closest to farthest. When this feature is turned off, the samples are chosen at random. I implemented this feature as an exploratory tool for sonifying the relationship between one sound and its neighbouring sounds. The "inner radius" parameter allows you to turn the Lens into a ring, where only sounds within the ring are triggered.

I found [this article](https://distill.pub/2016/misread-tsne/) really useful in learning how to interpret the results of the t-SNE and tune its parameters.