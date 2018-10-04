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

#. Set the ``MSP430_TOOLCHAIN`` environment variable to point to the directory
   in which msp430-elf-gcc is installed. For example (make sure to change
   this)::

    $ export MSP430_SUPPORT_DIR=/usr/local/gcc-msp430-ti-toolchain-5.01.02.00/

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

   MSPDebug may warn you that the programmer firmware is out of date. If so,
   run::

    $ mspdebug tilib --allow-fw-update

   If everything worked, you should be in a prompt like::

    (mspdebug)

   Enter ``exit`` to quit.

#. Obtain our example code::

    $ git clone https://github.com/Partmedia/firmware-examples.git


Documentation
=============
For information about the modules and peripheral functions available on the
your microcontroller, refer to the `MSP430F5529 datasheet
<http://www.ti.com/lit/gpn/msp430f5529>`_.

While writing firmware, you should refer to the `MSP430 Family User Guide
<http://www.ti.com/lit/ug/slau208q/slau208q.pdf>`_.


Blinky LED
==========
Change to the *blink/* directory. Open *blink.c* in our example code. This
program blinks an LED on the LaunchPad on 1-second intervals.

Compile the example by running::

  $ make blink

From the command-line output, you can see what commands ``make`` ran, as if
you had typed those commands in yourself.

With your LaunchPad plugged in, program your target by running::

  $ make prog

Does the LED on your LaunchPad blink?

With help from the datasheet and user guide, write down answers to the
following questions for checkoff:

#. What is a watchdog timer? What is ``WDTCTL``? Why is ``WDTCTL`` set to the
   bitwise-or (OR) of ``WDTPW`` and ``WDTHOLD``?

#. What is ``P1DIR``? What does it mean when a bit in ``P1DIR`` is set? Why do
   we set all the bits in ``P1DIR`` high?

#. What is ``P1OUT``? What does repeatedly exclusive-or'ing (XOR) the bottom
   bit of ``P1OUT`` do to it?

#. What IO pin is controlled by the lowest bit of ``P1DIR``? What device is
   connected to it?

#. Can you guess what ``__delay_cycles`` does? (Hint: it's not in the part
   datasheet, but the MSP430-GCC manual). Why is the argument 500000? What
   clock frequency does the microcontroller start up with?


Push-Button LED
===============
Change to the *push_blink/* directory. Change the example code to toggle the
LED when a button on the LaunchPad is pushed. Some starter code is provided.

.. hint::

  On the LaunchPad, the switches are designed to pull-down to ground when
  pressed. When disengaged, the microcontroller input is left floating. **This
  means you will need to configure the built-in pull-up resistor.**

In addition to finishing and testing your program, answer the following:

#. What are interrupts? What are interrupt vectors? When can our program be
   delivered an interrupt?

#. What is ``LPM4``? Why do we enter it at the end of ``main``?

Debounce
--------
Because of mechanical imperfections in the push button, one physical button
press may trigger multiple interrupts. To fix this, you'll need to *debounce*
your button-handling code.

Once the button interrupt is triggered, find a way to disable button
interrupts for a "hold off" time (a few hundred milliseconds) before
re-enabling the interrupt again.


Timer Blinky LED
================
The original `Blinky LED`_ example used ``__delay_cycles`` to keep time by
running a bunch of no-ops. While this works, this wastes power because the CPU
has to busily "do nothing" instead of shutting itself off.

Rewrite the Blinky LED example using timer interrupts. That means your
``main`` function should end with entry into ``LPM0``. You will have to use
timer interrupts to toggle the LED. Consult the datasheet and user guide for
more information.


UART
====
The MSP430 has a hardware UART module. Write a program to display characters
over the built-in UART. Observe your program's outputs using a serial console.
You will need to consult the datasheet and user guide.
