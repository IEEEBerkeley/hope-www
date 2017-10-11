================
Microcontrollers
================

In this lab, you will build circuits which are controlled by the Arduino microcontroller.

.. conetents::
.. sectnum::

Installing Arduino IDE
======================
Download and install:
https://www.arduino.cc/en/Main/Software

Blinking LED
====================
In this part of the lab, you will have an LED blink once every second, twice every second, and six times every second.

Assembling the Circuit
-----------------------
You will need an LED and 300 Ω resistor to assemble this circuit. Use the power supply to provide 5V and 20 milliamps to the Arduino board. 

#. Connect the anode of the LED to the resistor, and then connect the other end of the resistor to any one of the digital output pins of the Arduino numbered 2 to 13. Connect the LED’s cathode to ground.

Writing a Blink Sketch
----------------------


Ambient Light Meter
===================
For this part of the lab, you will creating a light meter which measures an amount of ambient light in the room with a photoresistor, and then represents the amount of light detected by turning on a certain number of LEDs.

Assembling the Circuit
----------------------
In order to start off, you will need five 300 Ω resistors, a 1 kΩ resistor and a photoresistor.

#. On the breadboard, connect each LED cathode (the shorter lead) to ground. Then, connect every LED anode (the longer lead) to a 300 Ω resistor. It is completeley up to you which of the Arduino digital pins you want to connect the resistors to.

#. After you have all five LEDs in place, set up the photoresistor. One lead of the photoresistor is connected to the positive rail on your breadboard. There will be two connections on the other lead. One connection is to the "A0" pin on the Ardiuno board. This pin is sepcial because it can recieve an  analog signal, unlike the digital pins. Then add the 1 kΩ resistor as shown in the image above in order to ground the sensor.

Writing a Meter Sketch
----------------------
We first have to make sure our sensor is sending data to the Arduino board before we begin to program the LEDs.

#. Write this code into your Arduino IDE.

#. In this program, we are taking the sensor information from pin A0 and displaying that data in the Serial Monitor. The Serial Monitor is a feature of the Arduino IDE, and can be accessed by clicking on the magnifying glass icon in top right corner of the program or pressing Ctrl + M (Command + M).

#. Compile and upload the program onto your Arduino. Once you have, open the Serial Monitor. You should see values appearing on the screen vertically. You will know if your sensor is working by blocking the photoresistor with your hand and then noticing a significant change in the values of the photoresistor.

#. Now you can set up the five LEDs of the circuit in the same manner as in the Blinking LED code with the pinMode() function.

#. Now, you will have a create a program in which a certain amount of LEDs are turned on depending on the value of A0.

