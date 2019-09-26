============================
USB Charger Schematic Design
============================
USB car chargers convert an automobile's 12V DC outlet (originally for
lighting cigarettes!) into a regulated 5V DC supply that can charge USB
devices, like smartphones and tablets.

These chargers are available online for under $10; you can often find them for
even less. Unfortunately, some inexpensive models with poor design can break
easily, charge slowly, or even cause damage to your device.

In this lab, you'll design schematics and pick parts for the electronics on a
USB car charger. Will you trust your design enough to plug your device into
it?

.. attention::

  Haven't gotten checked off for the first part of this lab yet? 
  Make sure that you're absolutely sure about your circuit diagram 
  and component selection if you'd like to move on anyways. 
  `USB Charger Schematic Design Pt. 1 <schematic1.html>`_

`Back to HOPE main page <../../pcb.html>`_ 

.. contents::

BOM Update
==========

Take some time this lab to turn your parts list from the previous
lab into a proper BOM as described in this week's lecutre. Feel free 
to use an online or built-into KiCAD tool to do this. This is required
for checkoff, so don't forget to do it! 

Schematic Drawing
=================
Now that you've blocked out your system and picked your parts, you're ready to 
start drawing the schematic. Open KiCad and draw a schematic for your USB charger,
keeping in mind the schematic best practices we talked about in lecture.

Here are some common symbols and their symbol names in KiCad:

.. csv-table::
   :header: "Part", "Symbol Name"

   Resistor, R
   Resistor (small symbol), R_Small
   Capacitor, C
   Inductor, L
   Resettable PTC fuse, Polyfuse

Many parts, including R, C, and L, come in the ``_Small`` varieties.

.. note::

   Feel free to use these resources for
   `standard component designators <http://dexpcb.com/Manual/standard-reference-designators.htm>`_ 
   and
   `common component symbols  <https://www.rapidtables.com/electric/electrical_symbols.html>`_.


For any schematic design, it is a good idea to start with the core
components/submodule in the circuit. In the case of our phone charger, what is
the core submodule/component?
 
Creating Symbols
----------------
You might notice that KiCad's symbol libraries may not have all the parts you
want to use. For each symbol that is missing, you can do one of three options described below.

For today's lab, please use option **A** for your regulator IC, option **B** for
the USB-A receptacle, and option **C** for your discrete semiconductors. 

A. Create a symbol yourself from the datasheet (it will help to have the component datasheet
open and ready to go before starting):

     1. Click the 'Symbol Library Editor' application (2nd on the left from the
        KiCad main page) or the 'Create, Delete, and Edit Symbols' application from the
        schematic/Eeschema page. Same icon of a little op-amp on both buttons. It might
        take a while loading all the libraries before it opens. 

          .. image:: sym_edit.png

     2. Go to ``File -> Create new Library`` to create a new symbol. 

        - Generally there are two conventions to creating custom symbol
          libraries. You can either create a new custom library *per project*
          or create a *global* custom symbol library. When working in an
          organization or group, there is generally going to be a global custom symbol
          library for the group to share. 
        - Today, we will be making a *per project* custom symbol library called
          `phone_charger.lib`. 

     3. Save the symbol library in the same folder as your phone charger
        project file (.pro). Select the project symbol table option.

         .. image:: lib_type.png
            :width: 336
            :height: 221
            :scale: 75%
            :align: center

     4. Click the 'Create new symbol' icon (op-amp) and and choose to put it in the phone_charger library. 
        You can use the filter box to search for the library that you just created. 

     5. Enter the component partname (if confused, try looking at how the IC components in the default libraries are named)
        into the symbol name field. For the
        reference designator choose from the correct symbol below [#rd]_: 

        ========================    ====================
        Component Type              Reference Designator 
        ========================    ====================
        Resistor                    R
        Capacitor                   C
        Inductor                    L
        Integrated Circuit (ICs)    U
        Jumper/Connector            J
        Switch                      S
        Diode                       D
        ========================    ====================

        You may find the more extensive list of reference designators in the note above useful 
        for your own projects, or even here. 

        You can leave the checkboxes alone for this part. If you are really curious about all the
        different options or just want more information, refer to the `official KiCAD documentation 
        <http://docs.kicad-pcb.org/5.1.4/en/eeschema/eeschema.html#schematic-creation-and-editing>`_.
      
     6. Double check your grid units and size! The default size of 50mils is a good choice. The important
        thing is to keep it consistent with what you would use in schematic and what the default libraries 
        have used. 

     7. Use the 'Add graphic rectangle to symbol body' icon found in the right toolbar to add a rectangle.
        Visualize this rectangle as the IC body. 

     8. Now for the electrial connections: pins. Find the 'Add pins to symbol' icon in the right toolbar and 
        click along a vertical edge of your rectangle/IC body. 
        Type in the correct *pin name*, *pin number*, and *electrical type*
        based on the component datasheet. 

        .. hint::

            The side of the pin with the circle is the side that makes the actual connection in Eeschema. Make
            sure to have those pointing outwards from the IC box.
        
        Often the datasheet will have a recommended schematic symbol and that symbol should be created. 

        .. image:: pin_ops.png
            :width: 673
            :height: 450
            :scale: 75%
            :align: center

        Pin options: 

        .. image:: electrical_type.png 
                   :width: 200px

        **Bidirectional** connections can be driven in both directions.

        **Passive** connections are pins that do not need to be actively driven and are
        connected to a passive. All passive components should have passive terminal
        types.  

        **Power input** connections should be connected to sources of power
        (generally connections to Vdd and GND).  

        **Power output** pins generate soures of power. 
        
     9. Once finished, make sure to save your new symbol. 
        Your end product should look like a box with pins stick out of its left and right sides.

        .. image:: sample_sym.png 
            :width: 778
            :height: 647
            :scale: 65%
            :align: center



.. note:: On libraries...

   PCB ECAD libraries are collections of component representations, essentially. In KiCAD,
   there are two kinds of libraries: symbol and footprint. Symbol libraries are for the
   representations of the components that would go into a schematic, while footprint 
   libraries contain the physical pad representations of the components that would go
   on the board itself. Simple reasons for this separation: many components, standard 
   component packaging, and same component, avaliable in different packaging. 
        
B. Download, import, and check  a symbol from an online service
   
   1. Go to the `DigiKey website <https://www.digikey.com/en/resources/design-tools/kicad>`_ and download the DigiKey library. 
   2. In KiCad go to the 'Symbol library editor' application and click
      Preferences → Manage Symbol Libraries → the Global Libraries tab → Browse
      Libraries... and go to the location where the DigiKey library was downloaded.
      Go into the digikey-symbols folder and select all of the .lib folders.   
   3. Once the library has been added find the correct library that contains
      the USB-A connector. 
   4. **It is EXTREMELY important** that you verify that the USB-A connector symbol matches the datasheet  
      
      - Oftentimes, component libraries downloaded from the internet are
        incorrect and it is your job as the designer to verify that the symbol
        is what you want. 

C. Use an existing generic symbol, or copy and change it if needed
    
   1. Use existing generic symbol: Add a similar existing generic symbol that already exists in a default library. 
      Open up the 'Choose Symbol' window in Eeschema or use the 'Libraries' pane on the left of the Symbol Editor window
      to search for pre-existing generic components.
   2. To copy an existing symbol and change it: Go to the 'Symbol Library Editor' and find the correct symbol using the left-hand search bar. 
   3. Once you have the symbol you want to copy, right click and select 'Copy'. 
   4. Click the new library you want to move that symbol copy to, right click, and select 'Paste Symbol'
   5. Click the copied symbol and now modify the new symbol as needed. 
   6. Don't forget to save your symbol when finished. 

Schematic Conventions
---------------------
**Your fellow engineers use your schematic to try to understand not only how your
design works, but also your design intent.** Follow the schematic conventions
discussed in lecture.  

Ask yourself: If a stranger were to read your schematic, would they be able to follow what's going on?
Follow the guidelines discussed in lecture to turn your circuit diagrams from last lab into a KiCAD 
schematic.

Schematic Checking
------------------
Run ERC and make sure there are no ERC errors. 

Once ERC passes, have a design review with one or more classmates.  
Ask for constructive criticism and be open to questions about your design. 

.. note::

   *Design reviews* are when you explain/present your design to a group of
   peers/coworkers with similar or more technical knowledge to verify your design.
   It is recommended that you do a schematic design review before layout
   and a final design review before manufacturing. When presenting your design, it
   is important to give your BOM and schematic files or layout files to
   the review committee beforehand so they have ample time to review your deisgn. 
   If you are on the review committee, it is important that you familiarize yourself 
   with the other person's design beforehand and ask any questions 
   you may have during the design review. 

.. Final Touches
.. -------------
.. Fill out the fields in the title block.

Checkoff
--------
Submit a lab checkoff `here <https://ieee.berkeley.edu/cgi-bin/hope/submit>`_ 

Zip up your entire phone charger KiCAD project as well as your improved BOM for the file submission. 

Show your phone charger schematic to an instructor. Describe how your turned your
diagram and parts list from last lab into the KiCAD schematic. Be prepared to answer
questions about your design review.

.. [#rd] `Reference Designator <https://en.wikipedia.org/wiki/Reference_designator>`_, *Wikipedia*, 2018.

`Back to HOPE main page <../../pcb.html>`_ 