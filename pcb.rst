========================
Hands-On PCB Engineering
========================
:Institution: University of California, Berkeley
:Semester: `Fall 2018 <https://decal.berkeley.edu/courses/4529>`_
:Course Number: EE 198 (1 Unit)
:Time/Location: Wednesday 8-10 PM, 140 Cory Hall
:Instructors: Kevin Zheng and Olivia Hsu
:Website: http://ieee.berkeley.edu/hope/pcb.html
:Lab Checkoff: http://tinyurl.com/hopecheckoff

.. contents::

Overview
========
This course introduces printed circuit board (PCB) design and layout practices
and concerns. It is intended for students with some experience with circuits
who are interested in learning or improving their PCB design and fabrication
skills, and particularly those who are part of or intend to join engineering
student organizations with working knowledge in PCB design.

.. sidebar:: Looking for Hands-On Practical Electronics?

  Hands-On Practical Electronics is not being offered this semester. However,
  course materials from previous semesters are still available.

Prerequisites
-------------
EE 16A or similar working knowledge in circuits

Objective
---------
Students learn effective system, schematic, and layout design through hands-on
applications and exposure to advanced concerns including DFT, DFM, grounding,
decoupling, EMC/EMI, thermals, isolation, and high-speed.


Timeline
========
Our first class for Fall 2018 is on **Wednesday, August 29th**. *This schedule
is tentative and may change at instructor discretion.*

For alternative or in-depth treatment of topics discussed in class, see
`Supplemental Reading`_.

Crash Course
------------
- **Week 1:** `Intro <https://docs.google.com/presentation/d/1ASJPINnZD4yf0E0k_IJHtEYiVdZqlXHoTTlJ_wvKl40/edit?usp=sharing>`_

  - The role of the PCB in system design
  - PCB anatomy
  - PCB design workflows
  - Survey of EDA tools, vendors, and resources for PCB design
  - `Introduction to KiCad Lab <labs/kicad-intro/kicad-intro.html>`_

- **Week 2:** `Selecting and Using Parts <https://drive.google.com/open?id=1UwjUa_PgatswsSNDikb3DO8pBhv38KhNhP3nIsuHdNY>`_

  - Survey of IC, module, and passive product families
  - Preview of assembly technology and packaging
  - Evaluating parts based on suitability and cost
  - Selecting peripherals based on datasheet recommendations
  - Writing a Bill Of Materials (BOM)
  - `USB Charger Lab <labs/charger/schematic.html>`_

- **Week 3:** `Schematic Design Crash-Course <https://docs.google.com/presentation/d/1GE4RDmVtJWSdr3qWNDuQOxw-n88c0tjyMpnVuX1M6Lk/edit?usp=sharing>`_

  - Drawing schematics with best practices to communicate design intent
  - Creating symbols by reading component datasheets
  - Importing and checking symbols from other sources
  - Reviewing schematic designs with peers
  - Checking schematics with ERC
  - `USB Charger Lab <labs/charger/schematic.html>`_

- **Week 4:** `Layout Design Crash-Course <https://docs.google.com/presentation/d/14tELDl2pM7SW283r4j0ss56-cByL4AKiBaCvH36ElMI/edit?usp=sharing>`_

  - Design rules and designing for manufacturability (DFM)
  - Stackup and organizing layers
  - Electrical minimums (width, clearance)
  - Making footprints
  - Placing parts and routing nets
  - Layout best practice
  - Checking mechanical assemblies
  - Running DRC
  - Generating fabrication outputs
  - `USB Charger Layout <labs/charger/layout.html>`_

- **Week 5:** `Layout Considerations <https://drive.google.com/open?id=1bh5BnUw3GGC3n5HzebGmxYvm3rWWThicUv-IrDPH658>`_

  - Trace resistance, inductance, capacitance
  - Decoupling, current return path
  - Stackup design and planes
  - EMC/EMI
  - Thermal minimums
  - `USB Charger Layout <labs/charger/layout.html>`_

- **Week 6:** `Microcontroller Firmware <https://docs.google.com/presentation/d/1gAiM9IsCU4zszUrDoP3xG2uiVYdznDj-7lJsu4rkGsI/edit?usp=sharing>`_

  - Microcontroller features and specifications
  - Common microcontroller peripherals (PWM, ADC, watchdog, RTC)
  - Setting up toolchains, developing firmware
  - `Microcontroller Firmware Lab <labs/firmware.html>`_

- **Week 7: Microcontroller Designs**

  - Supporting microcontrollers on PCBs
  - Programmers and interfaces
  - Microcontroller datasheets
  - Submit your `project proposal <https://goo.gl/forms/L8E0ZPaHPfKsObbN2>`_

Project
-------
- **Week 8: Designing Your Own System** 

  - Design patterns and blocks for common applications
  - Generating specifications from high-level goals
  - Managing Bill-Of-Materials (BOM)
  - Design For Test (DFT)
  - Schematic design review
  - **Draft BOM and schematics due Oct. 23rd, 11:59 PM**

- **Week 9:** `Designing Your Own Layout <https://docs.google.com/presentation/d/1thvhuq1MOiqblA2-qIQquESdVCvOETkQoEtBpz3mFmQ/edit?usp=sharing>`_

  - Assembly methods and techniques
  - Finishes (HASL, ENIG)
  - Design For Manufacturability (DFM)
  - Layout design review
  - Buying parts
  - Generating production files
  - **Final BOM and Gerbers due Nov. 1st, 11:59 PM**

- **Week 10: Sensors and Interfaces**

  - Current/voltage sense
  - Temperature
  - Specifications for amplifiers and ADCs
  - Digital interfaces and buses (SPI, I2C)
  - Power protection (TVS, PTC)

- **Week 11: Power and High Speed**

  - Picking passive components
  - Isolation
  - Mechanical and thermal considerations
  - Test points
  - Designing for test (DFT)
  - PCB antennas
  - Transmission lines, grounding

- **Week 12: Assembly**

  - Soldering, hot air, and reflow techniques
  - Preheat
  - Hand place, vaccums, pick-and-place

- **Week 13: Test**

  - Avoiding measurement errors
  - Understanding limitations in test equipment
  - Debugging strategies


Course Format
=============
This course spans 13 weeks. Class meets for two hours once a week. Each class
begins with a short lecture followed by a lab activity or practical
assignment. Labs and assignments build on those from previous weeks. Students
are expected to spend an hour a week outside of class reviewing material,
preparing for class meetings, and completing assignments.

Students are required to complete a final project: a complete PCB design and
assembly. Students may choose to design a PCB for an engineering student
organization or another design of their choice, with instructor approval.
Final projects are expected to take up to six hours of additional time outside
of class.

Materials
---------
Students should bring to class a laptop computer or similar device capable of
running the following software:

- `KiCad 5 <http://kicad-pcb.org/download/>`_
- `MSP430-GCC <http://www.ti.com/tool/msp430-gcc-opensource>`_ from TI
- `MSPDebug <https://dlbeer.co.nz/mspdebug/>`_

If you have difficulty obtaining the required course materials, please
contact_ the instructors.

Enrollment
----------
CCNs are given out during the first week of class. Priority will be given to
students who fill out the `interest form
<https://docs.google.com/forms/d/e/1FAIpQLScJ8gtqfZHcSPD28C5hmdw5zGJKj7a4ZlUaBT3yXB8G9p7I-Q/viewform?usp=sf_link>`_.

Grading
-------
Your grade is primarily based on completion of labs and assignments. The final
project is graded on effort and a demonstration of concepts taught in the
course. Students need 70% to pass.

- Labs and assignments: 70%
- Project: 30%

Attendance
----------
Since grading is primarily based on completion of labs during class,
students should make a best effort to attend class.

You may miss up to two labs unexcused; no instructor approval is required. If
you miss a class, you must make up the missed lab or assignment before the
next lecture.

Additional unexcused absences may result in a NP.


Resources
=========
- HOPE's `PCB Checklist <checklist.html>`_
- KiCad's `Documentation Page <http://kicad-pcb.org/help/documentation/>`_

  - `KiCad Cheatsheet <https://silica.io/wp-content/uploads/2018/06/kicad-cheatsheet-landscape.pdf>`_
  - KiCad's `Getting Started Guide <http://docs.kicad-pcb.org/stable/en/getting_started_in_kicad.pdf>`_ 

 
Supplemental Reading
--------------------
- Week 1

  - Wahby 2013. `PCB design basics <https://www.edn.com/design/pc-board/4424239/2/PCB-design-basics>`_. *EDN*.

- Week 2, 3

  - Wahby 2014. `PCB Design Basics: Example design flow <https://www.edn.com/design/pc-board/4426878/PCB-Design-Basics--Example-design-flow>`_. *EDN*.
  - Voltage Protection:
    - Pickering 2016. `Reverse-Polarity Protection in Automotive Design <https://www.electronicdesign.com/power/reverse-polarity-protection-automotive-design>`_. 

- Week 6

  - HOPE's `PCB Checklist <checklist.html>`_
  - Dunn 2013. `PCB design course & checklist <https://www.edn.com/design/pc-board/4422579/PCB-design-course---checklist>`_. *EDN*.


FAQ
===
**I missed the first class. Can I still enroll?**

  Yes. You will be given the CCN when you come to the second week of class.
  Keep in mind that we may not have enough seats for you to enroll, and that
  you will be joining the class with one absence.


Contact
=======
For course-related questions, concerns, or attendance issues, email
ieee-hope@lists.berkeley.edu.


----

Copyright ⓒ 2018 Kevin Zheng. This course is licensed under a `Creative
Commons Attribution-ShareAlike 4.0 International License
<http://creativecommons.org/licenses/by-sa/4.0/>`_.
