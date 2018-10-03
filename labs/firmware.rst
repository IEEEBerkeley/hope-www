========================
Microcontroller Firmware
========================

In this lab, you'll write and test programs that run directly on a
microcontroller. We'll be programming and running on a MSP430F5529 LaunchPad.

Setup
=====
#. Install MSP430-GCC from TI (http://www.ti.com/tool/msp430-gcc-opensource).

#. Install MSPDebug (https://dlbeer.co.nz/mspdebug/).

#. Add the paths to the binaries from the tools you just installed to your
   ``PATH`` environment variable; that way, you can run them from the command
   line.
   
   To check your ``PATH`` setting, run the following two commands::

    $ which msp430-elf-gcc

    $ which mspdebug

   The output should show where your shell found these binaries.

#. Set the ``MSP430_SUPPORT_DIR`` environment variable to point to
   msp430-elf-gcc's *include/* directory. For example (make sure to change
   this)::

    $ export MSP430_SUPPORT_DIR=/usr/local/gcc-msp430-ti-toolchain-5.01.02.00/include/

#. Verify that the support files for MSPDebug are installed. Without plugging
   your LaunchPad to your computer, run::

    $ mspdebug tilib

   This should show something like::

    MSPDebug version 0.25 - debugging tool for MSP430 MCUs
    Copyright (C) 2009-2017 Daniel Beer <dlbeer@gmail.com>
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
    Chip info database from MSP430.dll v3.3.1.4 Copyright (C) 2013 TI, Inc.

    Using new (SLAC460L+) API
    MSP430_GetNumberOfUsbIfs
    No unused FET found.

#. Connect your LaunchPad to your computer. Try to start a MSPDebug prompt::

    $ mspdebug tilib

   If everything worked, you should be in a prompt like::

    (mspdebug)

   Enter ``exit`` to quit.


Blinky LED
==========
Write a program that blinks an LED on the LaunchPad on 1 second intervals.

Assuming you named your file *blink.c*, compile your program with::

  $ msp430-elf-gcc blink.c -o blink

If compilation is successful, program the target using::

  $ mspdebug tilib 'prog blink'

Does the LED on your LaunchPad blink?


Push-Button LED
===============
Write a program that toggles the LED when a button is pushed.

Because of mechanical imperfections in the push button switch, you will most
likely have to debounce your button-handling code.
