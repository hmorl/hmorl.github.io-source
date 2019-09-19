---
title: "Designer Trees"
date: 2019-05-18
image: img/designer-trees.png
categories: ["coding", "visuals"]
draft: false
---

<div class = "video-container"><iframe src="https://player.vimeo.com/video/336995450" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>

Interactive installation prototype that allows the participant to create their own trees with their movements and watch the trees grow on Earth, as the camera flies around in space.

Uses an implementation of the [Space Colonization Algorithm](http://algorithmicbotany.org/papers/colonization.egwnp2007.html) and Kinect. Built in openFrameworks/C++ with the ofxKinect and ofxOpenCv addons.

Once the tree generation algorithm was implemented, running it whilst showing the 3D world caused the frame rate to drastically drop below useable levels (~5fps). So, I implemented a threaded version of the tree generation algorithm. The growing of the branches occurs on a separate thread to the main drawing thread. This dramatically increases performance, and the camera and world are able to spin around smoothly whilst a tree is being generated.