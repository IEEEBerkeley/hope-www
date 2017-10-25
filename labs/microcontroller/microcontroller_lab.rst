================
Microcontrollers
================

In this lab, you will build microcontroller circuits on the Arduino Uno.

.. contents::
.. sectnum::

Installing Arduino IDE
======================
Download and install:
https://www.arduino.cc/en/Main/Software


Blinking LED
============
Earlier in this class, you soldered a board with a circuit that flashed LEDs
using analog circuits. This circuit had many components and was hard to modify
once you built it.

In this part of the lab, you will make an LED blink once every second, twice
every second, and six times every second.

Assembling the Circuit
-----------------------

   .. image:: ledblink_demo.jpg
      
You will need an LED and 300 Ω resistor to assemble this circuit.

#. Connect the anode (positive terminal) of the LED to the resistor and the
   cathode (negative terminal) to ground.
#. Connect the other end of the resistor to any one of the digital output pins of the Arduino numbered 2 to 13.

Writing a Blink Sketch
----------------------
You will use the program shown in the lecture slides. 

   .. image:: blink_code.png
     
#. Copy the program into your Arduino IDE.

#. Upload your program by pressing the on screen upload or Ctrl + U. When you press upload, Arduino in fact compiles your compiles your program. In other words, the Arduino IDE lets you know if there errors in your code. If you want to just compile, and not upload, then you can press the compile button on screen or Ctrl + R.

#. You may have a communication error between your computer and the Arduino board when you first try to upload. Please make sure that if you click and bring down the "Tools" menu (button is at the top), you see "Board: 'Arduino/Genuino Uno'". If you see any other board, change it to 'Arduino/Genuino Uno'. Also in the "Tools" menu, click on "Port" and select a different COM. Feel free to ask an instructor for help.

#. Alter the delay on the program to change how many times the LED blinks.

Ambient Light Meter
===================
For this part of the lab, you will creating a light meter which measures an amount of ambient light in the room with a photoresistor, and then represents the amount of light detected by turning on a certain number of LEDs.

Assembling the Circuit
----------------------

   .. image:: lightmeter_demo.png
      
In order to start off, you will need five 300 Ω resistors, a 1 kΩ resistor and a photoresistor.

#. On the breadboard, connect each LED cathode (the shorter lead) to ground. Then, connect every LED anode (the longer lead) to a 300 Ω resistor. It is completeley up to you which of the Arduino digital pins you want to connect the resistors to.

#. After you have all five LEDs in place, set up the photoresistor. One lead of the photoresistor is connected to the positive rail on your breadboard. There will be two connections on the other lead. One connection is to the "A0" pin on the Ardiuno board. This pin is special because it can recieve an  analog signal, unlike the digital pins. Then add the 1 kΩ resistor as shown in the image above in order to ground the sensor.

Writing a Meter Sketch
----------------------
We first have to make sure our sensor is sending data to the Arduino board before we begin to program the LEDs.

#. Copy this code into your Arduino IDE.

   .. image:: sensor_test.png

#. In this program, we are taking the sensor information from pin A0 and displaying that data in the Serial Monitor. The Serial Monitor is a feature of the Arduino IDE, and can be accessed by clicking on the magnifying glass icon in top right corner of the program or pressing Ctrl + M (Command + M).

#. Compile and upload the program onto your Arduino. Once you have, open the Serial Monitor. You should see values appearing on the screen vertically. You will know if your sensor is working by blocking the photoresistor with your hand and then noticing a significant change in the values of the photoresistor.

#. You can now set up the five LEDs of the circuit in the same manner as in the Blinking LED code with the pinMode() function.

#. Now, you will have to create a program in which a certain amount of LEDs are turned on depending on the value of A0.

Hint: Use conditional statements (such as if, else if, and else) to control your LEDs. Read more about them here: https://www.arduino.cc/en/Reference/If You may have also noticed that your sensor gives you values from 0 - 1024. In order to use this information, you have to use the built-in maps function: https://www.arduino.cc/en/Reference/Map


Extra Fun
=========

Serial Communication
--------------------
#. Write and test a program that echos characters sent to the Arduino back to
   the computer.

#. Using serial communication, write a program that blinks the LED a certain
   number of times based on the number sent to it via the serial interface.

Interactive Computation
-----------------------
So far, every time you wanted to make a program change you had to re-compile
and upload a binary to the Arduino. Using serial communication, how would you
make it so that you could program the Arduino on-the-fly?
