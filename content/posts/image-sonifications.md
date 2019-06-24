---
title: "Image Sonifications"
date: 2016-06-10
image: img/image-sonifications.png
categories: ["coding", "composition"]
draft: false
---

Below are a set of sonifications I made of 3 famous works of art. I built a simple sonification system in [Processing](https://www.processing.org) that simplifies an image of the artwork into an array of large circular pixels. The program then ‘plays’ the pixels as notes by selecting them at random, which triggers notes using HSB (hue, saturation, brightness) data to derive pitches and rhythms.

When a pixel is triggered, 2 notes are played simultaneously. The pitch of the first note is mapped to hue, the second note is mapped to brightness, so is the delay time between triggering the next pixel. The saturation value is mapped to the velocity of the two notes played.

Though this was a fairly simple study, the results were quite pleasing.

Plans for improvement:

* Image traversal paths/routes so not just randomly selecting pixels
* Automatic mode selection
* Automatic timbral changes to create piece movement

<hr />

### *The Persistence of Memory* (1931) - Salvador Dalí

<div class="video-container no-float"><iframe src="https://www.youtube-nocookie.com/embed/R5IjdW5LdhY?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></div>


### *Impression, Sunrise* (1872) - Claude Monet

<div class="video-container no-float"><iframe src="https://www.youtube-nocookie.com/embed/3vxewNEzh98?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></div>


### *Untitled* (1987) by Jannis Kounellis

<div class="video-container no-float"><iframe src="https://www.youtube-nocookie.com/embed/n_9dHEcqbwE?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></div>
