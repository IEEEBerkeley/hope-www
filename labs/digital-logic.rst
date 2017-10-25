=============
Digital Logic
=============

.. contents::
.. sectnum::

Truth Tables
============
#. Draw the truth table for *one* of the following: AND, OR, NAND, NOR

#. Draw the truth table for an XOR gate.

#. Draw the truth table for the logic expression :math:`A \bar{B} + C`.

#. Draw the truth table for the logic expression :math:`A \bar{B} + \bar{A}
   B`. Is there a better way to represent this expression?


Seat Belt Annunciator
=====================
A seat belt annunciator reminds the passenger-side rider to buckle their
seatbelt. The following logic signals are available from the car:

- *A*: The car is in motion
- *B*: The weight in the passenger seat exceeds 25 pounds
- *C*: The seatbelt is buckled

The output *O* determines whether to turn on the seat belt annunciator or not.

Design
------
#. Draw the truth table relating the inputs to the output *O*.

#. Write a sum of products expression for *O*.

#. Using any combination of AND, OR, NOT, and XNOR gates, design a digital
   circuit that generates the output *O*.

#. If necessary, redesign your circuit above to minimize the number of
   components needed to build your circuit. Remember:

   - 7404: 6 NOTs
   - 7408: 4 ANDs
   - 7432: 4 ORs

Prototype
---------
Prototype your circuit on a `solderless breadboard
<https://learn.adafruit.com/breadboards-for-beginners/breadboard-usage>`_.
Remember:

- These chips require VDD (+5 V) and GND.
- ICs sit across the trough on the breadboard. See the link above.
- See datasheets for the above chips for their pinouts.
- Using what you learned last week, determine the resistor required to limit
  the current when you connect a LED to the output of your circuit.
- Logic inputs must be LOW (connected to GND) or HIGH (connected to VDD).  Do
  not leave them floating (not connected to anything).

Show your circuit to an instructor and clean up.


Binary Adder
============
#. Write a truth table or sum of products expression for an adder that adds
   two bits, *A* and *B*, and outputs *S* (the sum) and *C* (the carry bit).

   - Hint: you may want to use XOR for one of the outputs

#. Write a truth table or sum of products expression for an adder that adds
   three bits, *A*, *B*, and *C*, and outputs *S* (the sum) and *C* (the carry
   bit).

#. Install a logic simulator. You may use any, but we recommend Logisim.

#. Build both adders in your logic simulator.

#. Using the adders you built, copy/paste several and connect them to make a
   4-bit binary adder.

#. Using your 4-bit binary adder, build a 8-bit binary adder.


Advanced
========
You are not expected to be able to answer these questions. Taking a look will
help you understand what electrical engineers lose sleep over.

Digital
-------
#. Implement the seat belt annunciator in a hardware design language (HDL).

#. The adder you built above is called a `ripple-carry adder
   <https://en.wikipedia.org/wiki/Adder_(electronics)#Ripple-carry_adder>`_.
   Real gates have delay, so to speed up calculation designers use other
   designs to build large adders. Implement an 8-bit `carry-lookahead adder
   <https://en.wikipedia.org/wiki/Carry-lookahead_adder>`_ in a logic or HDL
   simulator.

Analog
------
#. When using ICs with multiple gates, some gates are frequently left unused.
   In these cases, engineers prefer to hook up these gates in a way that
   minimizes power consumption. Consider the schematic for the original 7404
   on the top of page 4 of the `SN7404 datasheet
   <http://www.ti.com/lit/ds/symlink/sn7404.pdf>`_. How should we hook up the
   input and or output to minimize power consumption?

#. Why is it usually a bad idea to leave unused gates floating? Is it
   acceptable here to leave the input floating?

Refer to `this TTL inverter activity
<https://wiki.analog.com/university/courses/electronics/electronics-lab-27>`_
for more information about the inverter.
