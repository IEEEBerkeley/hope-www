==================
HOPE PCB Checklist
==================
:author: Kevin Zheng
:date: 2018

.. warning::

  This course is still under development.

.. contents::

Developed in conjunction with CalSol, STAC, CalSTAR, and IEEE-UCB. For more
stuff, see [#checklist]_.

Preliminaries
=============
Your answers should be **YES** to all of the following:

- Design uses datasheet suggestions and layout best practices.

- All schematic pin assignments and layout footprints have been verified
  against the manufacturer datasheets. This includes symbols and footprints
  from commercial libraries.

- Power connectors are present, accessible, and present no danger of shorting.

- Unused inputs are terminated.

- Test points are present on regulator outputs, clocks, and data interfaces.

- Thermal reliefs are used appropriately.

- No unconnected copper islands, or sufficient vias.

- Complimentary layers have similar copper densities.

- Mechanical fasteners are accessible with sufficient clearance after
  populating the board.


Gotchas
=======
If you answer **YES** to any of the following questions, check your design
against their respective checklists.

Does your design:

- Use discrete or integrated ADCs_?
- Use discrete amplifiers_, particularly op-amps?
- Have clocks_?
- Come on a `flexible substrate`_?
- Have `high voltage`_ traces (12V or greater)?
- Have components that are `hot-swap`_-able?
- Have parts that communicate using `I²C`_?
- Require `isolated power domains`_ for safety considerations?
- Use LDOs_?
- Operate in `low temperature`_ conditions (<0°C)?
- Use large magnetics_ such as inductors, motors, fans, or solenoids?
- Use microcontrollers_?
- Intentionally radiate radio-frequency (RF_) energy?
- Have parts that communicate using SPI_?
- Use `switching power supplies`_?
- Have a USB_ connector?

ADCs
----
- Analog input is anti-aliased by an appropriate low-pass filter.

- Analog input is driven by a compatible amplifier capable of driving
  capacitive loads, with proper input common mode, with noise and offset < 1
  LSB. Also see Amplifiers_.

- Sample clock is within range specified in datasheet for full dynamic
  performance.

- Sample clock is driven by a low-jitter, buffered clock, or as specified in
  datasheet. Also see Clocks_.

- Reference voltage is within datasheet limits and comes from a clean,
  decoupled supply.

- If the application requires, digital output buffers.

- Appropriate grounding [#grounding]_.

Amplifiers
----------
- Supply (single vs dual) meets amplifier requirements.

- Input and output common modes are within datasheet limits.

- Input and output are appropriately AC coupled. If AC coupling is used, the
  AC coupling capacitor must be large enough to place the AC coupling zero
  below the passband.

- Capacitive load meets amplifier phase margin requirements.

- Input offset and noise specifications meet application requirements.

Clocks
------
- Clock traces are short or length-controlled.

- Clock traces do not intersect sensitive analog or digital traces.

- Appropriate choice between single-ended and differential.

- Appropriate AC coupling.

- Clocks are appropriately buffered and level-shifted.

- Transmission lines and terminations for high speed (>100 MHz) clocks. Also
  see RF_.

Flexible Substrate
------------------
- It bends make sure you don't short stuff

High Voltage
------------
- TVS
- Min spacing
- Thermals
- Fuses
- Derating
- Connectors don't short
- Fail open
- Ends of electrolytic capacitors pointed away from circuits

Hot-Swap
--------

I²C
---
- Open drains
- Pull ups
- No address conflicts

Isolated Power Domains
----------------------
- No connections between
- Separate ground planes with sufficiently wide isolation barriers
- No soldermask openings

LDOs
----
- Input and output capacitors are sufficiently large, as recommended by the
  datasheet.

- In adjustable LDOs, the feedback resistors are sized appropriately and
  capacitors are placed as recommended. Extra capacitance may cause
  oscillation.

- Thermal pads, if present, are soldered to a ground plane and have sufficient
  thermal vias.

Low Temperature
---------------
- Electrolytic caps?

Magnetics
---------
- Flyback diodes have low forward voltage (Schottky) and sufficiently high
  reverse breakdown voltage.

- Inductors are placed to minimize coupling.

- High current components have adequate thermals.

- Prevent core saturation?

Microcontrollers
----------------
- I/O disconnected while programming
- UART
- Programming header

RF
--
- Connectors and transmission lines are impedance-matched to system
  characteristic impedance (usually 50 Ohms).

- All connectors are properly terminated.

- Return paths

- Microwave: put vias around board to not make slot antenna

- Depending on who you ask and what frequency you're operating at, trace
  angles may or may not [#angles]_ matter.

SPI
---
- CS/SS is usually inverted

Switching Power Supplies
------------------------
- The checklist of LDOs_ applies here, as well.

- Minimize inductance through the hot path [#power_emi]_.

- See Magnetics_.

- Current sense resistors are accurate, low temperature-coefficient, and do
  not dissipate more than the rated power.

USB
---
- Correct termination resistors, or internally terminated
- Draws less than 2.5 mA during suspend if bus powered
- Have less than 10 uF decoupling
- TVS and PTC


Further Reading
===============
.. [#grounding] Hank Zumbahlen, `Staying Well Grounded <http://www.analog.com/en/analog-dialogue/articles/staying-well-grounded.html>`_, ADI, 2012.

.. [#power_emi] Christian Kueck, `Power Supply Layout and EMI (AN 139) <http://www.analog.com/media/en/technical-documentation/application-notes/an140fb.pdf?domain=www.linear.com>`_, Linear Technology, 2012.

.. [#angles] Mark Montrose, `Time and Frequency Domain Analysis for Right Angle Corners on Printed Circuit Board Traces <http://montrosecompliance.com/wp-content/uploads/2014/09/corners-USA.pdf>`_, Montrose Compliance Services, 1998.

.. [#checklist] Hank Wallace, `Electronics Design Checklist <http://aqdi.com/articles/electronics-design-checklist-3/>`_, Atlantic Quality Design, 2003.
