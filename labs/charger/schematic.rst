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
If you were starting a design on your own, you'd first have to make some
high-level design choices:

- What do you want the allowable range of input voltages to be?

- Do you want any LEDs?

- How many charging ports do you want?

- Should your charger have a battery backup so that it can charge your device
  for a little while even after the car is off?

- Do you want to be able to turn your charger on and off via Bluetooth?

- When do you stop? (probably around bullets 2 or 3; why?)

In this lab, we'll give you your high-level specifications:

- Input voltage range covering 9-24V DC

- 1x USB Battery Charging 1.2-compliant USB charging port

- Green LED indicating that the charger is connected to a powered DC outlet

- (optional) Other functionality like protection circuitry as mentioned in
  `The Big Picture`_

- Minimum cost

Understanding USB
-----------------
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


Choosing Parts
==============
At some point you may start wondering what parts you need to realize your
design. When designing PCBs, many high-level design choices depend on the cost
and availability of parts!

Digi-Key is one of many electronic component distributors. We've provided
pre-filled links to Digi-Key's component search tool to help narrow down your
search.

You may want to start a Bill of Materials (BOM). A BOM is a spreadsheet or
table with the quantity, value, part number, cost, and other information about
the parts you pick.

Connectors
----------
- Select an input `connector <https://www.digikey.com/short/j2mhb5>`_

- Select an output `USB-A receptacle <https://www.digikey.com/short/j2mh9f>`_

Which parts did you choose, and why?


Reverse Polarity Protection
---------------------------
There are many [#rpp]_ ways to protect a circuit from being connected in
reverse. Here are some options, in approximate order of increasing design
complexity. Remember that more complex designs will most likely cost more, and
that your time isn't free!

- No protection. Congratulations, you're done!

- Diode in series with the load:

  .. image:: https://www.electronicdesign.com/sites/electronicdesign.com/files/uploads/2015/02/0216_TI_RevPolarity_F2.gif

  In exchange for simplicity, you sacrifice :math:`P_{loss} = I \times
  V_{diode}`. You can cut your losses with a `Schottky diode
  <https://en.wikipedia.org/wiki/Schottky_diode>`_.

- High-side PMOS with gate tied to ground:

  .. image:: https://www.electronicdesign.com/sites/electronicdesign.com/files/uploads/2015/02/0216_TI_RevPolarity_F3_0.gif

  Using a PMOS instead of a diode incurs much less loss. However, the PMOS may
  be less tolerant to high voltage spikes and may require additional circuitry
  and components to protect the gate.

- High-side NMOS with gate driver:

  .. image:: https://www.electronicdesign.com/sites/electronicdesign.com/files/uploads/2015/02/0216_TI_RevPolarity_F5.gif

  For the same-size device, NMOS devices have half the on-resistance of PMOS
  devices! That means you can save another 50% by using an NMOS device!
  However, you'll need to use a dedicated integrated circuit to drive the gate
  high.

How do you want to protect your charger? (If you're new to PCB design, you may
want to avoid the PMOS and NMOS options for now.) What parts did you choose
and why?


DC-DC Converter
---------------
As discussed in lecture, you'll need a way to convert one DC voltage to 5V DC
to power your charger. We discussed the following options:

- Resistor divider
- Op amp buffer
- `Linear regulator <https://www.digikey.com/short/j2m978>`_, also called a low-dropoff regulator (LDO)
- `Switching regulator <https://www.digikey.com/short/j2m972>`_

Which option did you pick? What parts did you choose and why?

Passives
--------
Depending on your answers to the above, you'll need some passive components
like resistors, capacitors, and inductors. For each component:

- What value(s) do you need?
- In what form factor?
- With what kind of component tolerances?
- With what kind of component parasitics (like ESR)?

Short Circuit Protection
------------------------
You might also decide to protect your charger from short circuit conditions.
Depending on your choice of DC-DC converter, you may already have short
circuit protection on the output. Again, you have choices:

- No protection

- Fuse

- Resettable "polyfuse", also called "PTC" for its positive temperature
  coefficient

What type of protection did you pick? How much current must the protection
device support without tripping? What part did you choose, and why?

.. note::

  You're now ready for checkoff. Show an instructor your BOM.

  If you have time, you may proceed. Otherwise, we'll resume next week.


Schematic Drawing
=================
Now that you've picked your parts, you're ready to start drawing the
schematic. Open KiCad and start drawing!

Creating Symbols
----------------
You might notice that KiCad's symbol libraries might not have all the parts
you want to use.

Schematic Conventions
---------------------
Your fellow engineers use your schematic to try to understand not only how
your design works, but also your design intent.

Schematic Checking
------------------
Run ERC.

Final Touches
-------------
Fill out the fields in the title block.

.. [#rpp] Paul Pickering, `Reverse-Polarity Protection in Automotive Design <https://www.electronicdesign.com/power/reverse-polarity-protection-automotive-design>`_, *EDN*, 2016.
