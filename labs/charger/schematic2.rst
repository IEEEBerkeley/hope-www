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

`Back to HOPE main page <../../pcb.html>`_ 

.. contents::

Schematic Drawing
=================
Now that you've picked your parts, you're ready to start drawing the
schematic. Open KiCad and draw a schematic for your USB charger, keeping in
mind the schematic best practices we talked about in lecture. Include symbols
for all input and output pins.

Here are some common symbols and their symbol names in KiCad:

.. csv-table::
   :header: "Part", "Symbol Name"

   Resistor, R
   Resistor (small symbol), R_Small
   Capacitor, C
   Inductor, L
   Resettable PTC fuse, Polyfuse

Many parts, including R, C, and L, come in the ``_Small`` varieties.

For any schematic design, it is a good idea to start with the core
components/submodule in the circuit. In the case of our phone charger, what is
the core submodule/component?
 
Creating Symbols
----------------
You might notice that KiCad's symbol libraries may not have all the parts you
want to use. For each symbol that is missing, you can do one of three options described below.

For today's lab, you should use option #1 for your regulator IC, option #2 for
the USB-A receptacle, and option #3 for your discrete semiconductors. 

1. Create a symbol yourself from the datasheet:

     1. Click the 'Symbol Library Editor' application (2nd on the left from the
        KiCad main page) or the 'Create, Delete, and Edit Symbols' application from the
        schematic/Eeschema page. The picture for both applications is an op-amp symbol. 
     2. Click the 'Create a new library' (first on the left of the top toolbar) symbol. 

        - Generally there are two conventions to creating custom symbol
          libraries. You can either create a new custom library *per project*
          or create a *global* custom symbol library. When working in an
          organization or group, there is generally going to be a global custom symbol
          library for the group to share. 
        - Today, we will be making a *per project* custom symbol library called
          `phone_charger.lib`. 

     3. Save the symbol library in the same folder as your phone charger
        project file (.pro). Select the project symbol table option.  
     4. Click the 'Create new symbol' icon and and choose to put it in the phone_charger library. 
     5. Enter the component partname into the symbol name field. For the
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

     6. Use the 'Add graphic rectangle to symbol body' icon to add a rectangle.
     7. Now add in the correct *pin name*, *pin number*, and *electrical type*
        based on the component datasheet. Often the datasheet will have a recommended
        schematic symbol and that symbol should be created.     
        
        .. image:: electrical_type.png 
                   :width: 200px

        **Bidirectional** connections can be driven in both directions.

        **Passive** connections are pins that do not need to be actively driven and are
        connected to a passive. All passive components should have passive terminal
        types.  

        **Power input** connections should be connected to sources of power
        (generally connections to Vdd and GND).  

        **Power output** pins generate soures of power. 
        
     8. Once finished, select the 'Save Current Symbol' icon or press the
        'Save All Libraries' icon.
        
2. Download, import, and check  a symbol from an online service
   
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

3. Use an existing generic symbol, or copy and change it if needed
    
   1. Add a similar existing generic symbol using the 'a' key in Eeschema. 
   2. To copy an existing symbol and change it go to the 'Symbol Library Editor' and find the correct symbol using the left-hand search bar. 
   3. Once you have the symbol you want to copy, right click and select 'Copy Symbol'
   4. Click the new library you want to move that symbol copy to, right click, and select 'Paste Symbol'
   5. Click the copied symbol and now modify the new symbol as needed. 
   6. Once finished, select the 'Save Current Symbol' icon or press 'Save All Libraries' 

Schematic Conventions
---------------------
**Your fellow engineers use your schematic to try to understand not only how your
design works, but also your design intent.** Follow the schematic conventions
discussed in lecture.  

Ask yourself: If a stranger were to read your schematic, would they be able to follow what's going on?

Schematic Checking
------------------
Run ERC and make sure there are no ERC errors. 

Once ERC passes, have a design review with another group. Ask for constructive criticism from the other group.

*Design reviews* are when you explain/present your design to a group of
peers/coworkers with similar or more technical knowledge to verify your design.
It is recommended that you do a schematic design review before layout
and a final design review before manufacturing. When presenting your design, it
is important to give your BOM and schematic files or layout files to
the review committee beforehand so they have ample time to review your deisgn. 
If you are on the review committee, it is important that you familiarize yourself 
with the other person's design beforehand and ask any questions 
you may have during the design review. 

Final Touches
-------------
Fill out the fields in the title block.

Checkoff
--------
Submit a lab checkoff `here <https://ieee.berkeley.edu/cgi-bin/hope/submit>`_ 

Show your phone charger schematic to an instructor. Be prepared to answer
questions about your design review.

.. [#rd] `Reference Designator <https://en.wikipedia.org/wiki/Reference_designator>`_, *Wikipedia*, 2018.

`Back to HOPE main page <../../pcb.html>`_ 