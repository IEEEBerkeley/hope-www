=========================
USB Charger Layout Design
=========================

.. contents::

In this lab, you'll produce a layout for your USB car charger. This is a
two-week lab.

Board Setup
===========
When designing your own boards, your choice of stackup and design rules
depends on the features you need and your sensitivity to cost. For this
practice charger board and on your project, your board will be aggregated on a
single board run with the rest of the class; hence, you should design your
board using the class stackup and design rules.

1. Setup your board (stackup and design rules) using the "Manufacturing
   Specifications" on `Bay Area Circuit's 2-layer process
   <https://store.bayareacircuits.com/2-layer-instant-quote/>`_ and the design
   rules listed under `Standard Capabilities
   <https://bayareacircuits.com/capabilities/>`_. Where the design rules
   conflict, choose the larger capability.

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

   #. Hint: You will probably need to make the USB footprint yourself. Check
      the datasheet to make sure you are creating the footprint correctly.
   #. Double hint: If you're still stuck, the `manual is here
      <http://docs.kicad-pcb.org/stable/en/pcbnew.html#_footprint_editor_managing_libraries>`_.
 
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


Design Review
=============
#. Go through the `HOPE PCB Checklist <../../checklist.html>`_ on your own
   board.

#. Run DRC. Correct issues until your design is DRC clean.

#. Review your layout with another group.
