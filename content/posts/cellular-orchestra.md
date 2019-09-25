---
title: "Cellular Orchestra"
date: 2019-09-17
image: img/cellular-orchestra.png
categories: ["coding", "composition", "visuals"]
draft: false
---

<div class = "video-container"><iframe src="https://player.vimeo.com/video/359992816" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>

I am fascinated by cellular automata, and how the simplest of rules can form chaotic and complex structures. Cellular Orchestra is an computational art installation consisting of sound and light making creatures, communicating with each other and responding to their own portion of communally generated patterns. For this project I used a [1D automaton](https://en.wikipedia.org/wiki/Elementary_cellular_automaton), running on 4 Arduino Nanos, visualised using LED matrixes and sonified using the [Mozzi library](https://sensorium.github.io/Mozzi/).

![cellular orchestra circuit board inside box with components](/img/content/boardinbox.jpg#right)

#### Technical info

Each box contains:

* Arduino Nano
* 8Ω speaker driver
* PAM8403 audio amplifier module
* 32x8 LED matrix driven by MAX7219 chips
* 220Ω resistor and 100nF capcitor as a low-pass filter, to improve audio quality
* 2 capacitors (220uF and 100uF) in parallel, across 5V and GND of the LED matrixes, to filter out the interference.

The creatures of the Cellular Orchestra each generate a 32 pixel wide portion of the same elementary cellular automaton. It is 1-dimensional, so 1 line of cells is generated at a time (every second, in fact). The creatures store 8 previously generated lines, so we can observe the 2D patterns unfolding.

An elementary cellular automaton works by reading from the current state of each cell from left to right, and its left and right neighbours. This pattern of 3 cells is checked against the rule of the automaton - in the case of Cellular Orchestra, rule 30. The rule number corresponds to the binary representation of it, i.e. 00011110. See this [Wikipedia article](https://en.wikipedia.org/wiki/Rule_30) for more information.

There are different rulesets, each one producing different kinds of patterns, but rule 30 is known for its chaotic properties. Triangular shapes and line streaks appear in an unpredictable yet organic fashion. In nature, surprisingly or unsurprisingly, similar textures can be observed, for example on certain types of [cone snails](https://upload.wikimedia.org/wikipedia/commons/7/7d/Textile_cone.JPG).


The boxes generate a continuous pattern that wraps around (i.e. 1 goes into 2, into 3, into 4, into 1). To do this, after after every generation each box pushes their leftmost and rightmost state onto the network. The Arduinos are connected in a serial ring network, so if an Arduino receive a message, it uses the data if it has come from a neighbouring creature, then sends it on in case any other creature requires it. If it receives its own message, then that means the message has come full circle, so the message is ignored and not sent on.

#### Sonification

* Creature 1 "crackle" - low frequency sawtooth wave, with its pitch mapped to the population of its live cells. Creates a continuous popping sound.
* Creature 2 "wash" - slow modulating filtered noise, to provide sea-like ambience. Also emits sine wave "bloop" sounds when a large triangle is present.
* Creature 3 "brash" - emits ringing noise bursts when a large triangle is present.
* Creature 4 "quiet one" - plays a glitchy, gated sine wave tone, also mapped to population. 
This creature is quiet because its amplifier failed on the day before the exhibition, therefore the output from the Arduino is wired directly to the speaker. It could be heard, but only when the other 3 were not sounding.

#### Source Code
Available at [github.com/hmorl/cellular-orchestra](github.com/hmorl/cellular-orchestra)
<div style="clear:both;"></div>
![cellular orchestra circuit board and 32x8 LED matrix](/img/content/boardAndLED.jpg#left)
![cellular orchestra circuit boards](/img/content/boards.jpg#left)
