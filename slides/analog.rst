=====================================
Building Interfaces To The Real World
=====================================

---------------------------------------------
A crash-course on analog systems and circuits
---------------------------------------------

:author: Kevin Zheng

.. footer:: Kevin Zheng

.. include:: <s5defs.txt>

Last Week
=========
What did we do last week?

.. class:: incremental

- Realizing logic gates using circuit devices

- Making a lot of circuit devices very cheaply


This Week
=========
Building interfaces between our computing devices and the real world


Analog
======
*analog (adj.)* of, relating to, or being a mechanism in which **data is
represented by continuously variable physical quantities**

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Analog_watch_2.jpg/170px-Analog_watch_2.jpg

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Digital-clock-alarm.jpg/220px-Digital-clock-alarm.jpg


Physical Quantities
===================
Which of these physical quantities are *analog*?

.. class:: incremental

- How far? (distance)
- How fast? (speed)
- How long? (time)
- How warm? (temperature)

.. class:: incremental

Almost all the physical quantities we want to measure are analog!


Processing Information
======================
Most information is processed, stored, and communicated *digitally*.

*digital (adj.)* property of **representing values as discrete numbers**
rather than a continuous spectrum

`Why?` `Digital signals:`

.. class:: incremental

- Can be represented on a computer

- Are resistant to degradation

- Are more precise in computation


Making Measurements
===================
Most *analog-to-digital converters* (ADCs) can only operate on voltages.

- To measure a physical quantity, use a process that converts that quantity to
  a voltage

.. class:: incremental

How can we measure...?

.. class:: incremental

- Distance: `radar, lidar, ultrasound`

- Speed: `magnetic coil`

- Time: `quartz crystal`

- Temperature: `thermocouple`


What's Voltage?
===============
- A difference in electric potential, :math:`\Delta V`

- Measured in Volts (V)
  
  - 1 V = 1 Joule per Coulomb

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Electrostatic_definition_of_voltage.svg/220px-Electrostatic_definition_of_voltage.svg.png

.. image:: http://practicalphysics.org/images/hill_diagram.jpg
  :width: 50%


What's Current?
===============
- Flow of electric charge, :math:`I`

- Measured in Amperes (A)

  - 1 A = 1 Coulomb per second

- In conductors, obeys Ohm's Law: :math:`\Delta V = IR`

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/OhmsLaw.svg/150px-OhmsLaw.svg.png


Converting Analog to Digital
============================
#. Measure a physical quantity using an analog process

#. *Condition* the analog information using analog systems

#. Convert analog information to digital information using an ADC


Signal Conditioning
===================
Most signals must be *conditioned* before processing by an ADC.

Signals might:

- Be very weak

- Have a lot of noise

- Contain more information than we can process


Analog Toolbox
==============
ADCs
  `Convert analog signals to digital ones`

Amplifiers
  `Increase the signal level`

Filters
  `Separate wanted signal from unwanted noise`

Isolators
  `Protect sensitive circuits from damage`


ADCs
====
- Convert analog signals to digital ones

- Have limited speed (*bandwidth*, measured in Hertz)

- Have limited *precision* (measured in bits)


Amplifiers
==========
- Increase the signal level by a ratio called *gain*

- Built using *active* devices—devices that consume power

- Commonly realized using *operational amplifiers* (op amps)

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Op-amp_symbol.svg/200px-Op-amp_symbol.svg.png


Filters
=======
- Reduce noise by *attenuating* uninteresting signals *out-of-band*

- Available in low/band/high-pass or notch varieties

- Built using *networks* of resistors, capacitors, inductors

- Can be combined with active devices to make *active filters*

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/1st_Order_Lowpass_Filter_RC.svg/250px-1st_Order_Lowpass_Filter_RC.svg.png


Integrated Circuits
===================
- All of these components are often realized as integrated circuits

- In many cases, multiple components on the same chip

- Integration increases speed, performance, reliability; reduces cost


Breadboards
===========
- Power rails connected vertically

- Terminal strips connected horizontally, but not across trough

.. image:: https://cdn.sparkfun.com/r/600-600/assets/0/a/b/a/5/5192a48fce395f1573000000.jpg
  :width: 45%

.. image:: https://cdn.sparkfun.com/r/600-600/assets/6/3/7/f/3/518c07b8ce395fd064000000.jpg
  :width: 45%


Resistors
=========
- Add resistance between two *nodes* in a circuit

- Resisting current dissipates energy as heat

- Measured by *resistance* (Ohms)

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Resistor.jpg/200px-Resistor.jpg

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Resistors.svg/100px-Resistors.svg.png


Potentiometers
==============
- Resistor with an adjustable center tap

- Equivalent to two series resistors with adjustable ratio

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Potentiometer.jpg/220px-Potentiometer.jpg

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Potentiometer_symbol.svg/100px-Potentiometer_symbol.svg.png


Capacitors
==========
- Temporarily store energy in electric fields

- Measured by *capacitance*, the ability to store charge (Farads)

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Capacitors_%287189597135%29.jpg/230px-Capacitors_%287189597135%29.jpg

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Types_of_capacitor.svg/230px-Types_of_capacitor.svg.png


LEDs
====
- Light emitting diodes emit light when properly biased

- Exposed PN junctions allows use as a photodiode

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/LED%2C_5mm%2C_green_%28en%29.svg/450px-LED%2C_5mm%2C_green_%28en%29.svg.png
  :width: 30%

.. image:: https://cdn.sparkfun.com/r/600-600/assets/1/b/b/3/a/518c07b8ce395f7962000000.jpg
  :width: 30%


Op Amps
=======
- Differential, high-gain, voltage amplifier

- :math:`V_out = A_v(V_+ - V_-)`

- :math:`A_v` is the DC gain, up to several million (:math:`10^6`)

- Gain adjusted using *negative feedback*

.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Op-amp_symbol.svg/200px-Op-amp_symbol.svg.png


Op Amp Packages
===============
- LMC6482 has two op amps in one IC package

- On breadboards, DIP packages sit across trough

- Notch 'U' or dot at the top of the package

.. image:: https://cdn.sparkfun.com/r/600-600/assets/1/0/c/f/9/518d22f8ce395f5d51000000.jpg
  :width: 48%

.. image:: http://www.ti.com/ds_dgm/images/fbd_snos674e.gif
  :width: 48%

Lab
===
Ambient light sensor with binary output and adjustable threshold

https://ieee.berkeley.edu/hope/labs/light-sensor.html

.. image:: ../labs/light-sensor.png
   :width: 60%


Attendance
==========
https://goo.gl/forms/roprB3KkiEMTQUTC3
