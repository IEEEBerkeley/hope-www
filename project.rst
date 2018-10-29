==================
Project Submission
==================

#. Add the Bay Area Circuits and IEEE logos to your PCB by following the steps below:

   1. If you are using Eagle, find the steps `here <https://www.instructables.com/id/Adding-Custom-Graphics-to-EAGLE-PCB-Layouts/>`_.
      You can find the bitmap logo files from this `link <https://tinyurl.com/hopelogosbitmap>`_.
   2. If you are using KiCad, download our footprints for the `two logos <https://tinyurl.com/hopelogos>`_.
   3. Add the footprints into your KiCad footprint library by going to
      Footprint Editor → Preferences → Manage Footprint Libraries → Project Specific
      Tab → Browse Libraries → Locate the downloaded folder. 
   4. Add these logos to your footprint by pressing 'O' and then finding the correct library and the correct components. 
   
#. Upload your design to `InstantDFM
   <http://instantdfm.bayareacircuits.com/>`_. Select 'Blue' soldermask and
   use default settings for the rest. When InstantDFM passes, send us your
   InstantDFM link and the gerbers attached in a zip file format.

#. Submit your BOM for a **single** board in **CSV format**. Your BOM must
   have the following columns, in order:

   1. Project group member emails (this should be the same for all rows)
   2. Reference designator (e.g. R1, C2, etc.)
   3. Quantity
   4. Description or value (e.g. "Resistor 1.5K 0603 5%")
   5. Manufacturer Part Number
   6. Digi-Key Part Number (leave blank if not applicable)
   7. Mouser Part Number (leave blank if not applicable)
   8. Purchase URL (applicable only if not from either Digi-Key or Mouser)
   9. Unit cost

   If your BOM contains additional columns, put them after column 9; we won't
   look at them.

   For **resistors only**, if you leave fields 5-8 blank, we will pick an
   appropriate resistor for you. If you do not indicate tolerance or package
   size, we will assume 5% 0603. *If you do not have special requirements for
   your resistors, please leave these fields blank to help us consolidate
   orders.*

#. *Email us your InstantDFM link, BOM, zipped gerbers, and desired quantity of boards.* We will
   tell you if you need to make changes and how many boards we think we can
   provide PCBs and parts for.

#. Multiply the quantity of each item in your BOM by the number of boards
   we're giving you, plus some extra, if applicable.

#. Email us your updated BOM.
