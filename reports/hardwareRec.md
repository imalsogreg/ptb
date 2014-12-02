Psychophysics Test Computer Recommendations 
===========================================

Summary
-------

**Option A**: $1200/unit

 - Thinkpad T5xx series, i7 CPU
 - NVidia graphics card
 - Antergos Linux running Gnome desktop
 - TODO (price)

**Option B**: $1200/unit

 - Thinkpad T5xx series, i7 CPU
 - NVidia graphics card
 - Antergos Linux running Gnome desktop
 - TODO (price)

Goals
-----

 - Zero crashes
 - No noticeable stalling
 - Frame accuracy to 30 milliseconds
 - Computer-to computer consistency
 - Save position in test for possibility of resuming after crash, worst-case
 - Easy-to-maintain setup
 - Low cost?

Input Factors
-------------

**Keyboard & Mouse**

Keyboard is used for input in ERP and MEG experiments. USB keyboards add 10-20 milliseconds of jitter (1 or 2 video frames). Psychtoolbox authors prefer serial inputs - lower latency.

**Monitor**

Testing on laptop, big CRT monitor (Psychtoolbox authors' preference) not necessary because of lax frame-timing spec.

**Operating System**

Psychtoolbox preferred platform is Linux. Windows may be more familiar to users, but is harder to predict timing, crashes, input buffering, and system-to-system consistency. Linux is much more predictable here. It's possible to use a very friendly graphical Linux distribution, and get a deskop icon that will start Matlab and the specific Psychtoolbox test.

How does this work with computer encryption policies?