============================
USB Charger Schematic Design
============================

USB car chargers convert an automobile's 12V DC outlet (originally for
lighting cigarettes) into a regulated 5V DC supply that can charge USB
devices, like smartphones and tablets.

These chargers are available online for under $10; you can often find them for
even less. Unfortunately, some inexpensive models with poor design can break
easily, charge slowly, or even cause damage to your device.

In this lab, you'll design schematics and pick parts for the electronics on a
USB car charger. Will you trust your design enough to plug your device into
it?


The Big Picture
===============
For your design to be functional and reliable, your design must:

- Provide physical connectors for both of the above supplies. One of them
  needs to be a USB-A female receptacle.

- Convert the automobile's 12V DC supply into a 5V DC supply. You do not know
  the load ahead of time, and the load can change anytime during operation.

- Indicate to the downstream device that it is capable of "fast charging".
  This is what causes non-compliant devices to charge slowly.

- Protect itself and the downstream device against high voltage transients and
  voltage reverse polarity. The former can occur while starting the engine and
  during normal operation, and the latter when replacing the auto battery or
  due to user error.

- Protect both the input and output supply from short circuit conditions.

- Cost less than $10. Otherwise, you could have just bought one online.


What Specifications?
====================
A `USB Type-A female receptacle <https://en.wikipedia.org/wiki/USB_(Physical)#Pinouts>`_ has 4 pins:

===  ====  =============
Pin  Name  What it's for
===  ====  =============
1    VBUS  Put ~5V here
2    D-    Charger detection
3    D+    Charger detection
4    GND   Put ground here
===  ====  =============

Read Section 4.4 "Dedicated Charging Port" in the `USB Battery Charging
Specification, Revision 1.2
<http://composter.com.ua/documents/BC1.2_FINAL.pdf>`_ and answer the following
questions:

- What is the allowable range of output (VBUS) voltages from your charger?

- How much current must your charger be able to supply without shutting down?

- How should you connect the D+ and D- pins?

Now, you have to make some choices:

- What do you want the allowable range of input voltages to be?

- Do you want any LEDs?

- How many charging ports do you want?

- Should your charger have a battery backup so that it can charge your device
  for a little while even after the car is off?

- Do you want to be able to turn your charger on and off via Bluetooth?

- When do you stop? (probably around bullets 2 or 3; why?)


Choosing Parts
==============

Connectors
----------
- Pin headers for input
- USB-A receptacle for output

Reverse Polarity Protection
---------------------------
- No protection
- Diode
- NMOS
- PMOS

DC-DC Converter
---------------
- Resistor divider
- Op amp buffer
- Linear regulator, also called a low-dropoff regulator (LDO)
- Switching regulator

Passives
--------

Short Circuit Protection
------------------------
- Fuse
- Polyfuse, also called "PTC" for positive temperature coefficient


Schematic Drawing
=================
Start drawing your schematic with the parts you picked.

Creating Symbols
----------------
If you need symbols that don't exist...
