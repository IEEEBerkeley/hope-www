=========================
USB Charger Layout Design
=========================

.. contents::

In this lab, you'll produce a layout for your USB car charger. This is a
two-week lab.

Board Setup
===========
When designing your own boards, your choice of stackup and design rules
depends on the features you need and your sensitivity to cost. However, on
your project, your board will be aggregated on a single board run with the
rest of the class; hence, you should design this practice board using the
class stackup and design rules.

#. Setup your board (stackup and design rules) using the design rules listed
   under `Standard Capabilities <https://bayareacircuits.com/capabilities/>`_.

   .. hint::

      Bay Area Circuits gives the minimum trace width and spacing as
      'Trace/Space', respectively. The via *drill* diameter is given as
      'Smallest Mechanical Drill Diameter', and to get the total via diameter,
      add to the drill diameter two times the 'Annular Ring' size.

#. Compute the minimum trace width required to route the peak current in your
   charger through 1 oz./sq ft copper. Consider using KiCad's "PCB
   Calculator," or if you prefer, any other tool. If you don't know how to set
   the tolerable temperature rise or the trace length, start with 15°C and 1.5
   inches, respectively.

#. Compute the minimum outer layer conductor spacing ("clearance") with the
   maximum voltage on your board. Use "PCB Calculator" or any similar tool. Is
   this greater than or less than the minimum trace spacing in the design
   rules?

#. Create a new net class for power traces given your answers above. Choose an
   appropriate via drill and diameter.

#. Which nets are high power nets? Assign them to the new net class you
   created.


Footprints
==========
1. Find footprints for the parts you picked in KiCad's footprint library or
   online. If you cannot find a footprint, create it yourself.

   .. hint::
   
      You will probably need to make the USB footprint yourself. Check the
      datasheet to make sure you are creating the footprint correctly.  `Here
      are instructions for creating your footprint
      <https://forum.kicad.info/t/tutorial-how-to-make-a-footprint-from-scratch/11092>`_.
      Start from *Example footprint Molex Picoblade*.
 
#. Check all your footprints, except for standard passives, against the
   manufacturer data sheet.


Layout
======
1. Draw edge cuts. Usually, the size of your board is dictated by mechanical
   requirements, so this is almost always the first thing you should do.
   **Your board should be a rectangle 1" wide and at most 2" long.**

#. Check your power converter IC's datasheet for a recommended layout. How
   much space does the recommended layout require?

#. Place the USB receptacle and indication LED on the short edge of one side
   of your board.

#. Place the power converter IC and its external components according to the
   datasheet's recommendations. Include any fills or thermal vias that it
   recommends.

#. Place the rest of your components.

#. Add any additional filled zones you may need.

#. Route all nets not connected to a fill zone.

#. Fill your zones, then adjust your fills. Add routes and vias to connect
   your fills.


Final Steps
===========
#. Go through the `HOPE PCB Checklist <../../checklist.html>`_ on your own
   board.

#. Run DRC. Correct issues until your design is DRC clean.

#. Review your layout with another group.

#. Create output files (Gerbers and Drill Files) for your design using the method from the Week 1 lab. 

#. Zip your output files together and submit them to the Bay Area Circuits `InstantDFM <http://instantdfm.bayareacircuits.com/>`_
   
   #. Standard board thickness is 0.062 inches.

   #. Continue doing this until your board passes InstantDFM.

Checkoff
--------
#. Zip up a pdf printout of your InstandDFM results or a textfile with a link to your InstantDFM results.
#. Submit a checkoff request
`here <https://ieee.berkeley.edu/cgi-bin/hope/submit>`_ 


Glossary
========
net
  Schematic representation of a circuit node

net class
  Group of nets with similar characteristics or functions

power net
  Net dedicated to carrying power

via
  A hole drilled into the board, then electroplated, to enable connections
  between layers in a PCB

thermal vias
  A via used primarily for its thermal conduction properties to carry away
  excess heat from a circuit device

filled zone
  Same as copper pour
