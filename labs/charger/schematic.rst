============================
USB Charger Schematic Design
============================
USB car chargers convert an automobile's 12V DC outlet (originally for
lighting cigarettes) into a regulated 5V DC supply that can charge USB
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
For your design to be functional and reliable, your design must:

- Provide physical connectors for both of the above supplies. One of them
  needs to be a USB-A female receptacle.

- Convert the automobile's 12V DC supply into a 5V DC supply. You do not know
  the load ahead of time, and the load can change anytime during operation.

- Indicate to the downstream device that it is capable of "fast charging".
  This is what causes non-compliant devices to charge slowly.

- Protect itself and the downstream device against high voltage transients and
  voltage reverse polarity. The former can occur while starting the engine and
  during normal operation, and the latter when replacing the auto battery or
  due to user error.

- Protect both the input and output supply from short circuit conditions.

- Cost less than $10. Otherwise, you could have just bought one online.


What Specifications?
====================
If you were starting a design on your own, you'd first have to make some
high-level design choices:

- What do you want the allowable range of input voltages to be?

- Do you want any LEDs?

- How many charging ports do you want?

- Should your charger have a battery backup so that it can charge your device
  for a little while even after the car is off?

- Do you want to be able to turn your charger on and off via Bluetooth?

- When do you stop? (probably around bullets 2 or 3; why?)

In this lab, we are giving you your high-level specifications due to time
constraints:

- Input voltage range covering 9-18V DC

- 1x USB Battery Charging 1.2-compliant USB charging port

- Green LED indicating that the charger is connected to a powered DC outlet

- At least one form of protection circuitry as mentioned in
  `The Big Picture`_. More on this later in the lab. 

- Minimum cost

Understanding USB
-----------------
A `USB Type-A female receptacle <https://en.wikipedia.org/wiki/USB_(Physical)#Pinouts>`_ has 4 pins:

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
questions:

- What is the allowable range of output (VBUS) voltages from your charger?

- How much current must your charger be able to supply without shutting down?

- How should you connect the D+ and D- pins?

From the answers above, you should now know the full specifications of your car
charging circuit. 

Choosing Parts
==============
At some point you may start wondering what parts you need to realize your
design. When designing PCBs, many high-level design choices depend on the cost
and availability of parts!

Digi-Key and Mouser are two commonly used electronic component distributors.
We've provided pre-filled links to Digi-Key's component search or compare
product tools to help narrow down your search.

As mentioned in lecture, you should start a Bill of Materials (BOM). A BOM is
a spreadsheet or table with the quantity, value, part number, cost, and other
information about the parts you decide to use. *Make sure to include a
'description' column in this BOM and put in a description for each component
on how you chose the part.*

Connectors
----------
- Select an **input connector** 

  - Digi-Key carries over 38,000 `rectangular male header pins
    <https://www.digikey.com/short/j29839>`_. You'd start your search here if
    you were working on your own design.

  - In order to make the choice easier, select the best connector to use from
    these `5 choices <https://www.digikey.com/short/j29q00>`_ and add it to
    your BOM.

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

Also keep in mind that for automotive standards, the reverse protection needs
to withstand 14V reverse voltage for at least 60 seconds according to ISO
16750-2 [#iso1]_

- **No protection.** Congratulations, you're done! However, this is bad practice
  since your circuit will break easily. We will not be using this method. 

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

  #. `LDO Option 1 <https://www.digikey.com/product-detail/en/stmicroelectronics/L78S05CV/497-1468-5-ND/585989>`_
  #. `LDO Option 2 <https://www.digikey.com/product-detail/en/semtech-corporation/SC4215HSETRT/SC4215HSETR-ND/3083518>`_
  #. `LDO Option 3 <https://www.diodes.com/assets/Datasheets/AZ2117.pdf>`_
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
Depending on your answers to the above, you'll need some passive components
like resistors, capacitors, and inductors. For each component:

- What value(s) do you need?
- In what form factor?
- With what kind of component tolerances?
- With what kind of component parasitics (like ESR)?

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
schematic. Open KiCad and start drawing!

Creating Symbols
----------------
You might notice that KiCad's symbol libraries might not have all the parts
you want to use.

Schematic Conventions
---------------------
Your fellow engineers use your schematic to try to understand not only how
your design works, but also your design intent.

Schematic Checking
------------------
Run ERC.

Final Touches
-------------
Fill out the fields in the title block.

.. [#rpp] Paul Pickering, `Reverse-Polarity Protection in Automotive Design <https://www.electronicdesign.com/power/reverse-polarity-protection-automotive-design>`_, *EDN*, 2016.
.. [#iso1] `ISO 16750-2 Standard <http://www.compel.ru/wordpress/wp-content/uploads/2017/05/ISO-16750-22010E-.pdf>`_, *ISO*, 2010.
.. [#iso2] `ISO 7637-2 Standard <http://www.compel.ru/wordpress/wp-content/uploads/2017/05/ISO-7637-22011E.pdf>`_, *ISO*, 2011.
