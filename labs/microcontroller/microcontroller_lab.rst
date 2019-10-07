================
Microcontrollers
================

In this lab, you will familiarize yourself with the Arduino Uno microcontroller board
and experiment with a very essential and basic communication protocol: Serial
Peripheral Interface (SPI). If you have never worked with a breadboard before or would
like to read a well written article about how to use them, check out Sparkfun's 
`how to use a breadboard <https://learn.sparkfun.com/tutorials/how-to-use-a-breadboard/all>`_. 

`Back to HOPE main page <../../pcb.html>`_ 

.. contents::
.. sectnum::

Installing Arduino IDE
======================
Download and install:
https://www.arduino.cc/en/Main/Software

Technically, the online IDE would work too, if that's more your cup of tea. 

The Arduino language is built on a C++ base, and each "sketch" has two main functions: ``setup`` and ``loop`` . The code in ``setup`` is run once whenever
the Arduino is turned on, and the code in ``loop`` is run, well, forever in a loop after the setup completes. 

Want to learn more about the Arduino programming environment/code? Take a look at the `offical language reference <https://www.arduino.cc/reference/en/>`_.  

Blinking LED
============
As you learned in lecture, microcontroller General Purpose Input/Output pins have
a core set of pins called **Digital I/O**. We will use these pins on the Ardiuno
to control an LED and make it blink at any chosen interval!

.. .. sidebar:: Analog VS Digital: Basic Understanding

..     In analog circuits, the circuit "understands" a continous range of voltages. 
..     In digital, there are only two possible states: 0 and 1. An analogy can be made
..     with light switches. Digital circuits are analogous to classic flip switches, 
..     while analog circuits are analogous to dimmer switches. 


Assembling the Circuit
-----------------------

   .. image:: ledblink_demo.jpg
      
You will need an LED and X Ω resistor to assemble this circuit.

#. Connect the anode (positive terminal) of the LED to the resistor and the
   cathode (negative terminal) to ground.
#. Connect the other end of the resistor to any one of the digital output pins of the Arduino numbered 2 to 13.

The Blink Sketch
----------------
     
#. Find and open the Blink example code in the Arduino IDE. (File -> Examples -> 01.Basics -> Blink). 

#. Make sure to change the ``led`` variable to the pin number you've connected the LED to. 

#. Upload your program by pressing the on screen upload or Ctrl + U. When you press upload, Arduino in fact compiles your compiles your program. In other words, the Arduino IDE lets you know if there errors in your code. If you want to just compile, and not upload, then you can press the compile button on screen or Ctrl + R.

#. You may have a communication error between your computer and the Arduino board when you first try to upload. Please make sure that if you click and bring down the "Tools" menu (button is at the top), you see "Board: 'Arduino/Genuino Uno'". If you see any other board, change it to 'Arduino/Genuino Uno'. Also in the "Tools" menu, click on "Port" and select a different COM. Feel free to ask an instructor for help.

#. Alter the delay on the program to change how many times the LED blinks, or whether it stays on longer or shorter (this is called the 'duty cycle'). 

#. How would you add more LEDs? Hold off on implementing your ideas until you've reached the "More LEDs" section. 

Ambient Light Meter
===================
For this part of the lab, you will creating a light meter which measures an amount of ambient light in the room with a photoresistor.
Photoresistors are special resistor-like devices which has a resistance that is related to the amount of light the sensor is receiving. 

Assembling the Circuit
----------------------
      
It is good that we can control things like LEDs using basic digital out, but what around READING values? In this
next circuit, you will be using an analog pin of the Arduino to get a variable value measurement of the ambient light. 

   .. image:: lightmeter_demo.png

#. You will need a 1 kΩ resistor and a photoresistor.

#. Set up the photoresistor: one lead of the photoresistor is connected to the positive rail on your breadboard. 
   There will be two connections on the other lead. One connection is to an analog pin on the Ardiuno board. (any pin labled A[number])
   We will use A0 for this example, but feel free to chose any other one. 

#. Add the 1 kΩ resistor as shown in the image above in order to ground the sensor. The equivalent circuit is shown below. 

   .. image:: res_div.png

   What kind of circuit is this? How does it convert the variable resistance of the photoresistor into a readable voltage? 

Writing a Meter Sketch
----------------------
We first have to make sure our sensor is sending data to the Arduino board before we begin to program the LEDs.

#. Copy this code into your Arduino IDE, in either a new sketch or your existing Blink one. 

   .. image:: sensor_test.png

#. In this program, we are taking the sensor information from pin A0 and displaying that data in the Serial Monitor. The Serial Monitor is a feature of the Arduino IDE, and can be accessed by clicking on the magnifying glass icon in top right corner of the program or pressing Ctrl + M (Command + M).

#. Compile and upload the program onto your Arduino. Once you have, open the Serial Monitor. You should see values appearing on the screen vertically. 
   You will know if your sensor is working by blocking the photoresistor with your hand and then noticing a significant change in the values of the photoresistor.

More LEDs
=========

Now that you have a working LED control circuit, its time to spice it up with MORE leds!
Ask one of the lab TAs for either more individual LEDs or some form of an LED grid.
Now, its a pain to have to set each pin manually, and that would also mean taking up
more of the limited GPIO pins for basic on/off functionality! This is where the **Texas Instruments**
SN74HC595N integrated circuits come in! Known as a shift register, this IC takes in Serial data
and spits outs Parallel Data! 

``more about how this works blah blah``

What this IC allows us to do is utilize SERIAL COMMUNICATION over a few data control lines to control
lots of things! In our case, we will be utlizing the Arduino built-in SPI library and the SPI communication
protocol to "program" the shift registers.

  .. attention:: 
    The 74HC595N does not actually use the SPI protocol "officially", but works on a serial input, clock, and enable signal, which
    the SPI protocal helpfully provides (in fact, the SPI protocol consists of exactly those three things).

It will be extremely helpful and informational to check out the `datasheet for the SN74HC595N <http://www.ti.com/lit/ds/symlink/sn74hc595.pdf>`_.

Adding the Shift Register
-------------------------

#. Place the shift register IC across the DIP IC ravine on your breadboard.

   .. image:: DIP_RAVINE.jpg
      :height: 300px

#. Make sure to have the datasheet open! Find the **Pin Configuration and Functions** section and use it to help you wire up the IC correctly.
   The first column is the pin on the IC, while the **Target** column is which pin on the Arduino it should be connected to. 

======  ======  =============
IC Pin  Target  What it's for
======  ======  =============
VCC     5V      IC POWER
GND     GND     IC POWER
OE      GND     Output always Enabled
SRCLR   5V      Reclear pin, disabled
SER     11      Data Signal, in sync with Clock
SRCLK   13      Clock Signal
RCLK    2-13    "Chip Enable". Use any avaliable digital I/O
======  ======  =============

The *Qa* and *Qb* and such pins on the 595 are the parallel outputs, with A being the first and Q being the last. For now, simply
hook up the one LED you have to the *Qa* output, through an appropriate resistor of course. 

   .. image:: shift_oneled.png

Controlling the Shift Register
------------------------------

#. Start a new sketch in the Arduino IDE (or just stay with whatever you already have).

#. Complete the setup part of the sketch as shown below. Make sure to set the csPin to the number you connected the RCLK line too!

   .. image:: shift_set.png

#. For the actual communication to the device, create a helper function called ``writeSPI`` as shown below.

   .. image:: writeSPI.png
   
#. To make sure that the serial communication is working properly, make sure an LED is connected to the first output of the shift register, and 
   try writing a ``1`` to the shift register (in ``void setup``). The LED should light up. If not, double check your connections, LED direction, etc. 
   Which LEDs light up given an input value can be analyzed with an understanding of the BINARY NUMBER system. If you are unfamiliar with binary numbers,
   check out `this helpful tutorial <https://www.mathsisfun.com/binary-number-system.html>`_. The A-H outputs correspond respectively to the least ->
   most significant bits of the value you send to the 595 shift register (using the above code). If you wanted to make the LEDs attached at outputs A and
   Q to be the only ones that light up, what binary value would you have to send via SPI? 

#. Once you've verified that your Arduino can properly communicate with the 595 shift register, hook up LEDs to all the outputs (or use an LED segment bar) 
   and try to make them light in a pattern, or even better, in response to an analog input, such as the ambient light sensor!
   
   Use conditional statements (such as if, else if, and else) to control your LEDs. Read more about them here: https://www.arduino.cc/en/Reference/If You may have also noticed that your sensor gives you values from 0 - 1024. In order to use this information, you have to use the built-in maps function: https://www.arduino.cc/en/Reference/Map


.. hint:: 

   If you want to use the 7-segment LED, notice that it uses a **common cathode**, which means it cannot be hooked up the same way as the 
   single LED. Instead of connecting the LED pins to a high voltage, we will need to connect them to GND for them to light up. How would
   you need to change you understanding of the binary values in order to get the right LEDs to light up? 


Extra Fun
=========

Serial Communication
--------------------
#. Using serial communication, write a program that blinks the LED a certain
   number of times based on the number sent to it via the serial interface.

#. Use serial communication to set what value is displayed on a 7 segment 
   LED display. 

More LEDs
---------
#. Not enough LEDs with just one shift register? How would we add another shift register?

.. sidebar:: Slow Digital

   Many SPI or serial communication devices, such as the 595 shifter you are using for this lab, can handle communication
   at much higher frequencies than we are using now. The enable pin setting using Arduino's ``digitalWrite`` is actually 
   *incredibly* slow. If speed is an issue, lower-level firmware or `commands <https://emayssat.wordpress.com/2012/04/10/the-fastest-way-to-change-arduino-digital-ios/>`_ 
   would be necessary!

Serial Visualization
--------------------
#. With instructor permission, use the bench oscilloscopes to measure the serial data, 
   clock, and chip select lines when the Arduino is active. What frequency is the clock
   at? 

#. Write a new ``write`` function that doesn't use the SPI library functions but rather
   ``digitalWrite`` or direct port manipulation (this wonderful practice
   is known as "bit-banging" or 'software SPI'). 

Checkoff
========

Of course, it is 100% OK (and encouraged!) if the current state of your board uses each one of these checkoff items in 
one big circuit. 

#. Show off both a working LED blink at various speeds. 

#. Show off a working ambient light sensor. 

#. Show off and explain your circuit with the shift register programmed with SPI. Answer:

   #. What is the package name of the IC? 

   #. What are the benefits of using an IC like this? What are the drawbacks? What are other options?

   #. For fun: How old is the SNx4HC595 series? 

`Back to HOPE main page <../../pcb.html>`_ 
