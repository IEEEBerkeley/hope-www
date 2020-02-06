=====================
Schematics and KiCad
=====================
:authors: Leon Wu

          Jeffrey Ni

.. contents::
.. sectnum::

This lab will consist of two parts: block diagramming a project concept and 
the creation of a basic schematic in KiCad. 

`Back to HOPE main page <../../pcb.html>`_ 

Breaking down Ideas
===================

The tech club wants you to better understand their project vehicle. To do this,
they want you to draw out a high level overview of the core structure of the 
car, its main functions, and the like. 

   .. image:: fly_car.png
       :width: 928
       :height: 706
       :scale: 50%
       :align: center

Grab a fellow "club" member, put your brains together, and think about what a
"Air - Water Emergency Submersible Operator Manual Equipped" Car, or *A.W.E.S.O.M.E*
Car, would need. How might those parts interact? Are there central functional hubs
that can be abstracted into one block (or fleshed out with details)?

Have fun with this little exercise, spend some time on it, become acquainted with
your fellow classmates, draw some amazing block diagram/schematics!

   .. Attention::

      You will want to come up with some basic symbols for each of your blocks. 
      The next part of this lab will require you to re-create your diagram in
      KiCad's schematic editor. 

"Schematics"
============

Now that you've finished your *A.W.E.S.O.M.E* Car block diagram, it is time to 
draw it out in KiCad! Start KiCad and create a new project (make sure not to save it
in last week's project folder!).

   .. note:: 
       
       You do not need to draw block diagrams in KiCad. The following exercise is
       designed to get you acquainted with the part symbol creation process and 
       basic schematic building in KiCad. 

Part Symbol Creation
--------------------

#. Start the **Symbol Editor** tool. It is the button with an Op-Amp logo in the 
   project manager window (or the 'Create, Delete, and Edit Symbols' application from the
   schematic/Eeschema page. Same icon of a little op-amp on both buttons.) It might
   take a while loading all the libraries before it opens. 

   .. image:: sym_edit.png
       :align: center

#. For this project, you're going to want to create a new part library (why might
   might that be?). Do that by ``File → New Library``. Give it a relevant name and then
   save it in the project folder. This is a **project** library. 

      - Generally there are two conventions to creating custom symbol
        libraries. You can either create a new custom library *per project*
        or create a *global* custom symbol library. When working in an
        organization or group, there is generally going to be a global custom symbol
        library for the group to share. 

   .. image:: lib_type.png
     :width: 336
     :height: 221
     :scale: 75%
     :align: center

#. Next, create a new symbol (``File → New Symbol``, the little op-amp button under ``File``, 
   or use the keyboard-shortcut **Ctrl-N**) and save it in the new library that you just
   created. For the "Symbol Properties" window that pops up:

    - **Name**: use whatever it was called in your block diagram
    - Don't worry about anything else.

   .. image:: schematic_props.png
      :align: center

#. Sanity Checks:

    - When KiCaD first drops you into the part editor, it will be very zoomed in. 
      Zoom out a little. 
    - Make sure that the part you created is underneath your project library 
      in the "Libraries" pane on left side. 

#. The first thing to do is drop down some pins. Find the "Pins" tool in the right-hand side
   toolbar (or search up the shortcut in KiCad's help menu). You will be greeted with a 
   "Pin Properties" Window. We will explain pins in much more depth next lecture. All you
   need to do for now is:

    - Name: use name that make sense: in, out, power, signal in, GND, etc. 
    - Pin Number: use numerical order: 1, 2, 3, etc. If you have 5 I/Os in 
      your diagram part, you should have pins numbered 1-5. 
    - Electrical Type: set to **passive** for all pins

   .. image:: pins.gif
      :align: center

   Feel free to change other properties, such as orientation, pin length, text size, etc. 

#. Arrange your pins to match your drawn diagram symbol. Make sure that the side of the pin
   with the circle is pointing **outwards**. It is that point that "makes" the connections. 

#. Draw out the rest of the symbol using the Rectangle, Circle, Arc, and Lines tools (in
   the right toolbar, or find the shortcuts for them!). Add text if desired. 

   If what you want to "draw" is somewhat intricate, it may help to reduce your grid size. 
   Right-click → Grid, and then set it to something smaller. **DO NOT** move your pins
   while in a smaller grid. 

#. Once you're done, make sure to save your new "part symbol" and project library. 
   Make the rest of your symbols. 

Hooking it up
-------------

Now that you have all the building blocks for your block diagram/schematic, it is time
to put it all together in KiCad. 

#. Open up the schematic editor/Eeschema. This is the first button to the left on the
   in the main toolbar of the KiCad project window. 

#. Open up the "Choose Symbol"/Add part symbols window and verify that your newly 
   created library (and the parts you created in it) exists. Then 
   recreate your hand-drawn block diagram by adding in the parts you've just created, then 
   connecting them with the 'wire' tool. If you forgot how to do this,
   feel free to review the intro lab's instructions `here <../kicad-intro/kicad-intro.html>`_. 

#. To easily export your completed block diagram/schematic in KiCad, use 
   ``File → Export → Drawing to clipboard`` and paste the image into an image editor to save, or
   ``File → Print`` to export a .pdf of the schematic sheet.   

Lab Checkoff
============
This lab checkoff is graded! Note that you will *only have 2 chances* to get checked off, so 
don't submit unless you're sure you're ready. 

For this lab checkoff, you will need 2 things:

   #. A picture of the block diagram from part 1

   #. A screenshot/printout of the block diagram made in KiCad

Log into BCourses, and submit both files to the lab assignment "Schematics & KiCad".

If an instructor does not come over in a timely fashion, feel free to flag one down 
and ask for a checkoff. 

`Back to HOPE main page <../../pcb.html>`_ 

