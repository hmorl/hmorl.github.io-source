---
title: "Topographic Drummer"
date: 2019-02-14
image: img/topographic-drummer.png
categories: ["coding", "composition"]
draft: true
---

<div class = "video-container"><iframe src="https://player.vimeo.com/video/311011168" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>
This project is an exploration into using 2D data from different shapes to sequence and synthesize percussion sounds. It is a performable program designed for improvisation and on-the-fly beat creation, particularly with a minimal and microsound aesthetic. The user can put shapes on a canvas, modify parameters, send the shapes off in random directions and toggle a glitchy delay effect.

Each drum uses simple subtractive synthesis methods from the Maximilian library, consisting of a sine/saw/triangle wave, state variable filter and envelope for shaping percussive sounds. There are two ‘walkers’ (or ‘tracks’) that traverse the array of shapes, triggering three drums. Once a walker has chosen a new shape to go to, it triggers it, and the time to wait until choosing a new shape is the distance it has just travelled, quantized to sixteenth notes (minimum 1, maximum 6, depending on distance).

An independent quarter note kick drum can be toggled on or off with a key press, for keeping the beat. Other key commands are shown on screen, such as play/pause and master delay.

Mappings for each shape:

* X position: left-right pan position of the drum
* Y position: release time of the drum
* Shape: which drum (triangle = 0, square = 1, pentagon = 2)
* Size: velocity of the note