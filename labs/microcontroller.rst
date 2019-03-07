======================
Microcontroller Design
======================

In this lab, you'll create a "flight computer" for some space application. We will start off with an existing microcontroller design, the schematic and (variant) layout of the MSP430F5529 LaunchPad! 

.. contents::

Using Existing Schematics and Layouts
=====================================
Incredibly good time-saving strategy: don't reinvent the wheel if you don't need to. Piggyback off the work of others!

Take a look at the product site of the official `MSP430F5529 USB Launchpad Evaluation Kit <http://www.ti.com/tool/msp-exp430f5529lp>`_. This is the microcontroller our "flight controller" will be using. Notice the "Design Files" download avaliable on the webpage. 

KiCAD provides its users with the ability to import project files from other PCB design software (specifically EAGLE). Normally, this would be done by doing File -> Import Project in the Project window. Unfortunately, the most recent stable release of KiCAD (5.0.2) has a bug importing this particular design file from Texas Instruments. But know you can do this and probably definitely should for your own project if such evaluation board files are avaliable.

To save you time and frustration, a prepared starter KiCAD project is avaliable for you to download from `here <https://drive.google.com/open?id=1mfduPtfTsbY7eFAJ9eMcYvbbotLNlP5D>`_ that contains a simple MSP430F552 circuit. 

#. Take a look at both the schematic and PCB layout. Are there any problems with either? 

   .. hint::

      Use ERC, DRC, and common sense! This is not a trick question and is meant to get you to know how to look at other people's circuits. 

#. That's it for this section! This is going to be a short lab (hopefully).

Adding Sensor Functionality
===========================
The board is pretty empty outside of just the microcontroller chip itself, its periperial components, and some general purpose connections. We want to use the microcontroller to do cool things, like record information about the state of our satellite. 

For this lab, your job is to add an `6-DOF IMU <https://www.invensense.com/products/motion-tracking/6-axis/icm-20689>`_ and `microSD card slot <https://www.molex.com/molex/products/datasheet.jsp?part=active/1051620001_MEMORY_CARD_SOCKET.xml&channel=Products&Lang=en-US>`_ to the provided microcontroller circuit. The IMU can record information such as the rotation of our satellite, and an SD card can be used to save the information for later use. 

.. note::

  All required symbols (schematic and footprint) are avaliable in provided project folder. 

SPI Communication
-----------------
Both of these devices utilize the SPI serial communication protocol, which stands for Serial Peripheral Interface, and is quite possibly the easiest serial communication protocol to understand, and also one of the easiet to imeplement and use. This `Sparkfun SPI tutorial <https://learn.sparkfun.com/tutorials/serial-peripheral-interface-spi/all>`_ provides a good breakdown of how it works. However, all you really need to know for this lab is just what the pins are for, so a quick-n-dirty breakdown: 

#. The master device (our MSP430 chip) and slave device (either the SD card reader or IMU) have the same share the SCK (clock), MOSI (Master Out Slave In), and MISO (Master In Slave Out) lines. 

#. The master selects which slave it wants to talk to by pulling down/enabling the CS/SS (Chip or Slave Select) pin corresponding to the appropriate slave device. This allows multiple slave devices to share the same SCK, MOSI, and MISO pins.

#. MOSI pin carries the data the master sends OUT to the slave, which takes it IN. MISO works in the opposite direction. These are the data carrier lines. Data is read in time with the SCK line. 

.. sidebar:: IMUs and DOFs

    IMU stands for Inertial Measurement Unit. These devices contain accelerometers and gyroscopes (and in some cases magnetometers). They are the sensors that detect motion aka changes in inertia. DOF stands for Degrees of Freedom. In the case of IMUs, DOF refers to the number of independently measureable properties. A 3-DOF IMU can have joint measurements in 3-dimensions, or translational space. A 6-DOF IMU adds rotation measurement to the existing axes. 

microSD Help
------------

When hooking up the microSD header, utilize this helpful image

.. image:: SDcard.png

Final Touches
-------------
Make the layout look nice! Fix silkscreens, cutout, etc. 

Checkoff
--------
Show completed schematic and layout to instructor. Be prepared to explain what you did. 
 
