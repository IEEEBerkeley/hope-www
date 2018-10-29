==================
Project Submission
==================

#. Per our sponsorship agreement with Bay Area Circuits, you should add their
   logo to your silkscreen. At your option, you may also include our IEEE
   student chapter's logo.

   - If you are using KiCad, download our footprints for the `two logos
     <https://tinyurl.com/hopelogos>`_.

     - Add the footprints into your KiCad footprint library by going to
       Footprint Editor → Preferences → Manage Footprint Libraries → Project
       Specific Tab → Browse Libraries → Locate the downloaded folder. 

     - Add these logos to your footprint by pressing 'O' and then finding the
       correct library and the correct components. 

   - If you are using Eagle, find the steps `here
     <https://www.instructables.com/id/Adding-Custom-Graphics-to-EAGLE-PCB-Layouts/>`_.
     You can find the bitmap logo files from this `link
     <https://tinyurl.com/hopelogosbitmap>`_.

#. Generate production files (all relevant Gerbers and drill files) and
   generate a ZIP file.

#. Upload your ZIP file to `InstantDFM
   <http://instantdfm.bayareacircuits.com/>`_. Select 'Blue' soldermask and
   use default settings for the rest. Make sure your design passes InstantDFM.
   Save your InstantDFM link; you'll need to send it to us.

#. Prepare your BOM for a **single** board in **CSV format**. Your BOM must
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

#. Using `this email template
   <mailto:ieee-hope@lists.berkeley.edu?subject=Initial%20project%20submission&body=Team%20member%20emails%3A%0D%0A%0D%0AInstantDFM%20link%3A%0D%0A%0D%0ANumber%20of%20layers%3A%0D%0A%0D%0A%23%20boards%20wanted%3A%0D%0A%0D%0ABOM%20and%20production%20ZIP%20attached.>`_,
   send us your InstantDFM link, number of layers, desired quantity of boards,
   BOM, and ZIP file. CC all your team members. We will review your design and
   work with you to decide how many boards and parts we'll order for you.

#. For your final BOM, multiply the quantity of each item in your BOM by the
   number of boards we're giving you, plus some extra if applicable.

#. Email us your final design using the same template as above, except it is
   now a "Final project submission".
