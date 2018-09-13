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

.. contents::


The Big Picture
===============
Your charger is a USB "upstream device" that supplies power to a "downstream
device" being charged. In order for it to be functional and reliable, your
charger needs to:

- Provide physical power connectors. The output needs to be a USB-A female
  receptacle, and assume someone else is designing the input plug for your
  car; you just need to provide two pins (car power and ground).

- Convert the automobile's 12V DC supply to a 5V DC supply. The output load is
  unknown and may change over time.

- Indicate to the downstream device that it is "fast charging" capable. If you
  don't, your device will charge slowly.

- Protect itself and the downstream device against high voltage transients and
  voltage reverse polarity. The former can occur while starting the engine and
  during normal operation, and the latter when replacing the auto battery or
  due to user error.

- Protect both the input and output from short circuit conditions.

- Cost less than $10. Otherwise, you could have just bought one online.


What Specifications?
====================
If you were starting a design on your own, you'd first have to make some
high-level design choices. In this lab, we are giving you your high-level
specifications due to time constraints:

- Input voltage range covering 9-18V DC

- 1x USB charging port compliant with USB Battery Charging 1.2

- Green LED indicating that the charger is connected to a powered DC outlet

- Some form of protection circuitry as mentioned in `The Big Picture`_. More
  on this later in the lab. 

- Minimum cost

Understanding USB
-----------------
A `USB Type-A female receptacle
<https://en.wikipedia.org/wiki/USB_(Physical)#Pinouts>`_ has 4 pins:

===  ====  =============
Pin  Name  What it's for
===  ====  =============
1    VBUS  Put ~5V here
2    D-    Charger detection
3    D+    Charger detection
4    GND   Put ground here
===  ====  =============

Read Section 4.4 "Dedicated Charging Port" in the `USB Battery Charging
Specification, Revision 1.2
<http://composter.com.ua/documents/BC1.2_FINAL.pdf>`_ and answer the following

Make sure to pay attention to the third paragraph in part 4.4.1 "Required Operating Ranges."

questions:

- What is the allowable range of output (VBUS) voltages from your charger?
- In the third paragraph of part 4.4.1, which current line must the load curve
  cross? 
- What is the value of :math:`I_{DEV_CHG}`? 

  - Therefore, how much current must your charger be able to supply without
    shutting down if your charger must support more than 2V?

- How should your charger connect the D+ and D- pins to indicate that it is a
  charging port?

Choosing Parts
==============
At some point you may start wondering what parts you need to realize your
design. When designing PCBs, many high-level design choices depend on the cost
and availability of parts!

Digi-Key and Mouser are two commonly used electronic component distributors.
We've provided pre-filled links to Digi-Key's component search or compare
product tools to help narrow down your search.

You should start a Bill of Materials (BOM). A BOM is a spreadsheet or table
with the quantity, value, part number, cost, and other information about the
parts you decide to use.

.. important::

  To help us check you off, make sure to include a 'description' column in
  this BOM and put in a description on how you chose the part for each
  component.

Connectors
----------
.. sidebar:: Too Many Parts!

    Digi-Key carries over 38,000 `rectangular male header pins
    <https://www.digikey.com/short/j29839>`_. You'd start your search here if
    you were working on your own design.

- Select an **input connector**. Select the best connector to use from these
  `5 choices <https://www.digikey.com/short/j29q00>`_ and add it to your BOM.

  - Remember to think about what our inputs are. How many pins will we need? 

- Select an output **USB-A receptacle.**

  #.  Let's take a look at the steps required to narrow down your search when
      starting from scratch. First go to `Digi-Key's website
      <https://www.digikey.com>`_ and click the products tab. 

  #.  What component are we looking for? A USB-A receptacle, which is a type of connector. This
      means we need to head to the 'Connectors, Interconnects' section and look for
      the correct category. Click on the category and it should take you to a list of
      all of the parts in that category. 
      Hint: The category probably has 'USB' in it.  

  #.  Now we are at the results page. There should be approximately 3,000
      products to choose from and 19 categories to filter the selection by (that's a
      lot). So before it becomes too overwhelming, let's break it down and see what
      we really care about. It turns out we really only care about two categories,
      *connector type and gender.* 

  #.  Select the correct connector type and gender filter (Hint: if you're
      unsure look above again to see what type of part we are looking for). Also
      remember to check the 'In Stock' option under Stock Status. Now click 'Apply
      Filters.' 

  #.  Now we should have narrowed down our search to around 275
      results, but how do we select the final component? Keep in mind that one of our
      specifications is minimum cost. So from here we can find the 'Unit Price USD'
      column and if you click the up-arrow underneath, it will sort all of the
      results by cost.  

  #.  You should now have your final USB-A receptacle chosen.
      Click on it's Digi-Key part number for more information on the component and
      fill out the appropriate columns in your BOM. 

Which parts did you choose, and why? Remember to put the answer in the
'description' column of your BOM.


Reverse Polarity Protection
---------------------------
There are many [#rpp]_ ways to protect a circuit from being connected in
reverse. Here are some options, in approximate order of increasing design
complexity. Remember that more complex designs will most likely cost more, and
that your time isn't free!

.. attention::

  To be automotive-rated under ISO 16750-2 [#iso1]_ standards, the reverse
  protection needs to withstand 14V of reverse voltage for at least 60
  seconds.

- **No protection.** This risks damage to your charger and device.

- **Diode** in series with the load:

  .. image:: https://www.electronicdesign.com/sites/electronicdesign.com/files/uploads/2015/02/0216_TI_RevPolarity_F2.gif

  In exchange for simplicity, you sacrifice :math:`P_{loss} = I \times
  V_{diode}`. You can cut your losses with a `Schottky diode
  <https://en.wikipedia.org/wiki/Schottky_diode>`_.

  When choosing a protection diode, it is important to look at the diode's
  *type, output current, and DC reverse voltage.*
 
  If you choose this option, pick the best diode from the 5 options below and
  add it to your BOM:
  
  #. `Diode Option 1 <https://www.digikey.com/product-detail/en/on-semiconductor/NHP220SFT3G/NHP220SFT3GOSCT-ND/5801747>`_
  
  #. `Diode Option 2 <https://www.digikey.com/product-detail/en/on-semiconductor/MBRA210ET3G/MBRA210ET3GOSCT-ND/2705027>`_

  #. `Diode Option 3 <https://www.digikey.com/product-detail/en/comchip-technology/CDBMT240-HF/641-1446-1-ND/2734598>`_

  #. `Diode Option 4 <https://www.digikey.com/product-detail/en/nexperia-usa-inc/PMEG4010BEV115/1727-5838-6-ND/2697853>`_

  #. `Diode Option 5 <https://www.digikey.com/product-detail/en/comchip-technology/ACDBA260-HF/ACDBA260-HF-ND/7100901>`_

- High-side **PMOS** with gate tied to ground:

  .. image:: https://www.electronicdesign.com/sites/electronicdesign.com/files/uploads/2015/02/0216_TI_RevPolarity_F3_0.gif

  Using a PMOS instead of a diode incurs much less loss. However, the PMOS may
  be less tolerant to high voltage spikes and may require additional circuitry
  and components to protect the gate.

  According to ISO 7637-2 standard [#iso2]_ automotive devices have to be able
  to withstand short ~150ns pulses of approximately -100V in addition to the -14V for 60
  seconds mentioned above. We ignored this case when selecting a diode because
  diodes can recover from short pulses beyond their reverse breakdown voltage.
 
  When choosing a PMOS it is important to look at the *continuous drain
  current, and drain-source breakdown voltage* :math:`V_{(BR)DSS}`.

  If you choose this option, pick the best PMOS from the 5 options below and
  add it to your BOM:
    
  #. `PMOS Option 1 <https://www.digikey.com/product-detail/en/diodes-incorporated/DMP3099L-7/DMP3099L-7DICT-ND/5218217>`_

  #. `PMOS Option 2 <https://www.digikey.com/product-detail/en/infineon-technologies/BSR92PH6327XTSA1/BSR92PH6327XTSA1CT-ND/6559925>`_

  #. `PMOS Option 3 <https://www.digikey.com/product-detail/en/infineon-technologies/BSP317PH6327XTSA1/BSP317PH6327XTSA1CT-ND/5409993>`_

  #. `PMOS Option 4 <https://www.digikey.com/product-detail/en/stmicroelectronics/STN1NK60Z/497-3523-1-ND/669373>`_

  #. `PMOS Option 5 <https://www.digikey.com/product-detail/en/infineon-technologies/SPD04P10PLGBTMA1/SPD04P10PLGBTMA1CT-ND/5413612>`_

- High-side **NMOS** with gate driver:

  .. image:: https://www.electronicdesign.com/sites/electronicdesign.com/files/uploads/2015/02/0216_TI_RevPolarity_F5.gif

  For the same-size device, NMOS devices have half the on-resistance of PMOS
  devices! That means you can save another 50% by using an NMOS device!
  However, you'll need to use a dedicated integrated circuit to drive the gate
  high.

  If you choose this option, find the NMOS and gate driver IC yourself.

How do you want to protect your charger? (If you're new to PCB design, you may
want to avoid the PMOS and NMOS options for now.) Remember, you must pick one
type of protection. What parts did you choose and why?


DC-DC Converter
---------------
As discussed in lecture, you'll need a way to convert one DC voltage to 5V DC
to power your charger. We discussed the following options:

- **Resistor divider**
- **Op amp buffer**
- **Linear regulator**, also called a low-dropoff regulator (LDO)

  If you decide to use an LDO, pick from one of the 5 below: 

  #. `LDO Option 1 <https://www.digikey.com/product-detail/en/semtech-corporation/SC4215HSETRT/SC4215HSETR-ND/3083518>`_
  #. `LDO Option 2 <https://www.diodes.com/assets/Datasheets/AZ2117.pdf>`_
  #. `LDO Option 3 <https://www.digikey.com/product-detail/en/stmicroelectronics/L78S05CV/497-1468-5-ND/585989>`_
  #. `LDO Option 4 <https://www.digikey.com/product-detail/en/diodes-incorporated/AP1186T5-50L-U/1034-AP1186T5-50L-U-ND/5684579>`_
  #. `LDO Option 5 <https://www.digikey.com/product-detail/en/rohm-semiconductor/BA00DD0WHFP-TR/BA00DD0WHFPCT-ND/3663725>`_

- **Switching regulator** 
  Keep in mind that switching regulators are more complicated than linear
  regulators and improper schematic or layout design can likely lead to the
  regulator not working.  
  
  If you decide to use a switching regulator, follow these steps:
  
  #. Go to the step-down regulator page of `Analog Devices (ADI) <http://www.analog.com/en/products/power-management/switching-regulators/step-down-buck-regulators.html>`_ and enter in the regulator specs for this project 
  #. This will give you a table of all of the switching regulators that fit our
     application. Find the cheapest one listed (Hint: this should be an ADPXXXX
     part). 
  #. Now go to Digi-Key, Mouser, Arrow, and Newark and enter in the manufacturer
     part for the component you found and pick the cheapest distributor. 
  #. Now add this component to your BOM. 

Which option did you pick? What parts did you choose and why?

Passives
--------
Like we talked about in lecture, many ICs will have accompanying passives
associated with that component. This will generally be in the **"Application Circuit"**
section of the IC datasheet. Some datasheets may even include recommended
passives (including part numbers) to use. To answer the below questions, skim
and look through the entire datasheet for the regulator you chose.  

Depending on your answers to the above (mainly the regulator you chose and the
USB connection between D+ and D-), you'll need some passive components
like resistors, capacitors, and inductors. For each component:

- What value(s) do you need?
- In what form factor?
- With what kind of component tolerances?
- With what kind of component parasitics (like ESR)?

Once all of these questions have been answered for each passive needed, please
add the passives to your BOM. 

Short Circuit Protection
------------------------
You might also decide to protect your charger from short circuit conditions.
Depending on your choice of DC-DC converter, you may already have short
circuit protection on the output. Again, you have choices:

- **No protection.** Congratulations, you're finished!

- **Fuse.** If you decide to use this option, please find a fuse that meets specifications yourself. 

- **Resettable "polyfuse"**, also called "PTC" for its positive temperature
  coefficient. Here are `some options
  <https://www.digikey.com/short/j294np>`_.

What type of protection did you pick? How much current must the protection
device support without tripping? What part did you choose, and why?

.. note::

  You're now ready for checkoff. Show an instructor your BOM.

  If you have time, you may proceed on your own. Otherwise, we'll resume next
  week with more guidance.


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

1. Create a symbol yourself from the datasheet

   - There are many `online
     resources <http://kicad.txplore.com/index-p=96.html>`_ that explain the
     steps to create a custom schematic symbol in KiCad. 
   - Or you can follow the instructions below to create a schematic symbol
     yourself:

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
        
        Note: we will not be using the tri-state, open collector, and open
        emitter electrical connection types in HOPE. 
     
     6. Once finished, select the 'Save Current Symbol' icon or press the 'Save All Libraries' icon.  
        
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
Your fellow engineers use your schematic to try to understand not only how your
design works, but also your design intent. Follow the schematic conventions
discussed in lecture.  Show your schematic to another group in class. 

Can they follow what's going on in your schematic? Ask them
for constructive criticism.


Schematic Checking
------------------
Run ERC and make sure there are no ERC errors. (Optional) Do a design review with another group. 

**Design Reviews** are when you explain/present your design to a group of
peers/coworkers with similar or more technical knowledge to verify your design.
It is generally recommended that you do a schematic design review before layout
and a final design review before manufacturing. When presenting your design, it
is generally important to give your BOM and schematic files or layout files to
the review committee beforehand. If you are on the review committee, it is
important that you familiarize yourself with the other person's design
beforehand and ask any questions you may have during the design review. 

Final Touches
-------------
Fill out the fields in the title block.

Checkoff
--------
Show your phone charger schematic to an instructor for checkoff. 

.. [#rpp] Paul Pickering, `Reverse-Polarity Protection in Automotive Design <https://www.electronicdesign.com/power/reverse-polarity-protection-automotive-design>`_, *EDN*, 2016.
.. [#iso1] `ISO 16750-2 Standard <http://www.compel.ru/wordpress/wp-content/uploads/2017/05/ISO-16750-22010E-.pdf>`_, *ISO*, 2010.
.. [#iso2] `ISO 7637-2 Standard <http://www.compel.ru/wordpress/wp-content/uploads/2017/05/ISO-7637-22011E.pdf>`_, *ISO*, 2011.
.. [#rd] `Reference Designator <https://en.wikipedia.org/wiki/Reference_designator>`_, *Wikipedia*, 2018.
