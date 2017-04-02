====================
LED Light Sensor PCB
====================

We will be building an Arduino Uno extension module ('shield') with the LED
light sensor we built during Week 8.

.. contents::
.. sectnum::

Installing KiCad
================


Getting Started
===============
1. Start KiCad.

#. File -> New Project -> New Project From Template

#. Create a new folder where you'd like to save your project. Open the
   directory you just created.

#. Under 'System Templates', select 'Arduino Uno' and press 'OK'.

The following steps are optional:

5. Open the 'Pcbnew' app (3rd from the left). This is the template board with
   the shield that will fit over the Arduino.

#. View -> 3D Viewer. This is your unpopulated board.


Schematic Capture
=================
1. Open the 'Eeschema' app (1st from the left). This is a mostly empty
   schematic populated with the shield connectors.

#. We want to add components to build this:

   .. image:: led-sensor.png
      :width: 100%

#. Press 'a' and search for 'LMC6082'. We will be using this instead of the
   LMC6482 we actually used in lab because KiCad doesn't have this part in
   its library yet. Open the drop-down and select 'Unit A'. Place the unit on
   the schematic. Repeat with 'Unit B'. Press 'ESC' to exit insert mode.

#. Flip Unit A horizontally. Right click Unit A of the op amp and Orient
   Component -> Mirror --.

#. Press 'a' and search for 'R'. Place 3 resistors as shown in the schematic.
   To rotate before placing, press 'r' before placing the component.

#. Place a capacitor ('C') as shown.

#. Place a LED ('LED') as shown.

#. Place a potentiometer ('POT') as shown.

#. Place 3 voltage sources ('+3.3V') as shown.

#. Place 5 grounds ('GND') as shown.

#. Now we need to hook everything up with wires. Move your mouse to where you
   want to start a wire, press 'w', click around to snap wire, and click on
   a pin to end the wire. Repeat until the schematic is fully captured.

#. Assign component values to components. For each resistor and capacitor,
   mouse over and press 'v'. In the 'Value' field, type the appropriate value.
   Omit units.

#. Assign unique numbers to each component. Do this automatically by using
   Tools -> Annotate Schematic -> Annotate -> OK.

Footprint Assignment
--------------------
This means we're telling KiCad our parts look like physically on the board.

#. Tools -> Assign Component Footprints. For each unassigned footprint, find
   the component below and assign it.

   .. image:: led-sensor-footprints.png
      :width: 100%


PCB Layout
==========
#. Open the 'Pcbnew' app (3rd from the left).

#. Tools -> Update PCB from Schematics -> Perform PCB Update -> Close.

#. Make this:

   .. image:: led-sensor-pcb.png
      :width: 100%

#. Drag the components until they're in place as shown.

#. Route the red wires.

#. Switch layers.

#. Route the green wires.
