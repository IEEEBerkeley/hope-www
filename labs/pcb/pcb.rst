====================
LED Light Sensor PCB
====================

In this lab, we will build a printed circuit board (PCB) for our LED light
sensor.

.. contents::
.. sectnum::


Getting Started
===============
#. `Download and install KiCad <http://kicad-pcb.org/download/>`_.

#. Start KiCad.

#. File → New Project → New Project. A prompt will appear asking where to save
   your project. Choose a name and create your project.


Schematic Capture
=================
#. Open the 'Eeschema' app (1st from the left).

#. We want to add components to build this:

   .. image:: led-sensor.png

#. Press 'a' and search for 'LMC6482'. If it does not exist, try the
   'LMC6082'. Open the drop-down and select 'Unit A'. Place the unit on the
   schematic. Repeat with 'Unit B'. Press 'ESC' to exit insert mode.

#. Flip Unit A horizontally. Right click Unit A of the op amp and Orient
   Component → Mirror --.

#. Press 'a' and search for 'R'. Place 3 resistors as shown in the schematic.
   To rotate before placing, press 'r' before placing the component.

#. Place a capacitor ('C') as shown.

#. Place a LED ('LED') as shown.

#. Place a potentiometer ('POT') as shown.

#. Place 3 voltage sources ('+3.3V') as shown.

#. Place 5 grounds ('GND') as shown.

#. Place a 1×3 connector ('CONN_01x03') as shown.

#. Now we need to hook everything up with wires. Move your mouse to where you
   want to start a wire, press 'w', click around to snap wire, and click on
   a pin to end the wire. Repeat until the schematic is fully captured.

#. Assign component values to components. For each resistor and capacitor,
   mouse over and press 'v'. In the 'Value' field, type the appropriate value.
   Omit units.

#. Assign unique numbers to each component. Do this automatically by using
   Tools → Annotate Schematic → Annotate → OK.

Footprint Assignment
--------------------
We need to tell KiCad what our parts look like physically on the board. In
other words, we need to assign footprints to each symbol.

#. Tools → Assign Component Footprints. For each unassigned footprint, find
   the component below and assign it.

   .. image:: led-sensor-footprints.png


PCB Layout
==========
#. Open the 'Pcbnew' app (3rd from the left).

#. Make sure you're using the newer Cairo canvas. View → Cairo Canvas.

#. Design Rules → Design Rules → Net Classes Editor. We will be using
   conservative design rules that can be fabricated using a 1/32" drill bit on
   an `Othermill <https://support.bantamtools.com/hc/en-us/articles/115003453943-Design-Considerations>`_:

   .. image:: drc.png

#. Design Rules → Layer Setup. At the top left, set Preset Layer Groupings to
   "Two layers, parts on Back only" with a board thickness of 1.54 mm. Using
   the Othermill requires that we place the components on the back.

#. Tools → Update PCB from Schematics → Perform PCB Update → Close. If
   this option isn't in your menu, return to the schematic editor and click
   Tools → Generate Netlist File → Generate → Save → Replace. Return
   to the PCBnew and click Tools → Netlist → Read Current Netlist → Yes.

#. In the end we want something that looks like this:

   .. image:: led-sensor-pcb.png

#. Move the op amp on the board. Move components by mousing over them and
   typing 'm'. To rotate, type 'r'. Click to place back down.

#. Finish placing components on the board. Feel free to place them however
   you wish, but try to minimize the number of crossing white wires.

#. Switch to the track tool by typing 'x'. You should route a physical track
   for each white line you see connecting different pins. Wires of the same
   color (layer) may cross or overlap only if they're meant to be connected.

#. You may realize one layer might not be enough to ensure no overlaps. Type
   'Page Down' to switch to the bottom layer. 'Page Up' will return you to
   the top layer.

#. Put your name on. Select 'F. SilkS' from the 'Visibles' right pane. Select
   the text tool and click on your board. Type in your name, press 'OK', and
   place it on the board, rotating it if desired.

#. Add edge cuts for the board. Select the 'Edge.Cuts' layer and draw a
   rectangle that contains all the footprints on your board. You may choose to
   draw rounded corners, too.

#. Once you are finished, perform a Design Rules Check. Tools → DRC → Start
   DRC. KiCad will warn you if there are any errors. Correct your design until
   there are no more DRC violations.

#. Admire your handiwork. View → 3D Viewer.

#. Show your DRC report to an instructor for check-off.
