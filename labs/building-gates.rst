==================
Building Inverters
==================

.. contents::
.. sectnum::

Inverters invert the logic level of their input; that is, when the input is
LOW (0) the output is HIGH (1), and vice versa. In this lab, you will simuate
and build inverters using several logic families.

Exploring Logic Families
========================
As different transistor and integrated circuit technologies became available,
several logic families came and went. Each logic family describes how devices
are connected to form gates, and what logic levels were needed to drive them.

No Transistor Logic
-------------------
This isn't a real logic family, but make sure you can build the AND, OR, and
NOT gates from lecture using the `PhET Circuit Construction Kit
<https://phet.colorado.edu/sims/html/circuit-construction-kit-dc-virtual-lab/latest/circuit-construction-kit-dc-virtual-lab_en.html>`_.

Resistor-Transistor Logic (RTL)
-------------------------------
Resistor-transistor logic (RTL) developed with the advent of the bipolar
junction transistor (BJT). In this section, you will simulate and build
inverters using the 2N3904 NPN.

#. Open the `RTL inverter simulation
   <http://www.falstad.com/circuit/e-rtlinverter.html>`_. What is the total
   current flowing through the transistor when the input is high? When the
   input is low? Comment on the efficiency of this logic family.

#. Find the voltage at the output when the input is high. **Bonus:** Why isn't
   it zero?

#. Increase the base resistor to 10k. What is the total current flowing
   through the transistor now? What is the new voltage at the output when the
   input is high? What is the trade-off for making the gate use less power?

#. Change the supply voltage and logic level to 3.0 V. Double-click the '+3.6
   V' label to change the supply voltage, and right click the input → Edit to
   change the input logic level.

#. Re-design the inverter by picking appropriate resistors such that the
   output voltage is below 30 mV when the input is high, while minimizing
   power consumption.

#. The simulation assumes that the current gain of the BJT (:math:`\beta` also
   called :math:`h_FE`) is 100. Is this assumption reasonable? *Hint:*
   Determine the collector current (:math:`I_C`) and determine the current
   gain at this collector current by consulting the `datasheet
   <https://www.sparkfun.com/datasheets/Components/2N3904.pdf>`_.

#. Build and test your inverter on a breadboard.

#. **Bonus**: The simulation suggests that you can decrease power consumption
   by arbitrarily increasing the value of both resistors. Is there a limit to
   how high the resistors can be set? Separately, what is the disadvantage of
   setting higher resistances?

NMOS Logic
----------
Design and simulate an inverter using the `BS170 NMOS transistor
<https://www.onsemi.com/pub/Collateral/BS170-D.PDF>`_. Use the same VDD as
before, but design the output so that it can safely drive an LED.

Hints:

- Start with the same topology as the RTL inverter, but replace the NPN with
  an NMOS. Does everything still work?

- Because MOSFETs are voltage-controlled devices, no gate resistor is
  necessary.

- Size the drain resistor so that no more than 10 mA flows through an LED at
  the output when the output is at logic HIGH.

Check that your design works in simulation. Make sure the current through the
LED at the output never exceeds 10 mA.

After checking your simulation, check your design with a facilitator. Then,
build and test your inverter on a breadboard.

CMOS Logic
----------
Design, simulate, and build an inverter using the BS170 NMOS and the `BS250
PMOS transistor <https://www.vishay.com/docs/70209/70209.pdf>`_. Unlike the
previous part, the output does not need to drive an LED.

How low can you change VDD until the inverter stops working?

Compare the power consumption of all the inverters you built. Which used the
most power? The least?


Integrated Inverters
====================
.. image:: http://opencircuitdesign.com/magic/tutorials/tut2_1.gif
   :align: right

This is the layout view of a CMOS inverter as drawn by `Magic
<http://opencircuitdesign.com/magic/>`_. In the picture, identify:

- VDD and GND

- Inverter inputs and outputs

- The NMOS and PMOS devices

- All sources, gates, and drains

Sketch photomasks for the metal, polysilicon, and contact layers.
