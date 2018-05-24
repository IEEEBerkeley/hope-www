========================
Hands-On PCB Engineering
========================
:Institution: University of California, Berkeley
:Semester: `Fall 2018 <http://decal.berkeley.edu/courses/4099>`_
:Course Number: EE 198 (1 Unit)
:Time/Location: Wednesday 8-10 PM, 140 Cory Hall
:Instructors: Kevin Zheng and Olivia Hsu
:Website: http://ieee.berkeley.edu/hope/new.html

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

- **Week 1: Intro**

  - The role of the PCB in system design
  - PCB anatomy
  - PCB design workflows
  - Survey of EDA tools, vendors, and resources for PCB design
  - Introduction to KiCad

- **Week 2: Schematic Design Crash-Course**

  - Constructing a schematic from high level specifications
  - Making schematic symbols from datasheets
  - Organizing schematics for readability and communicating design intent
  - Checking a schematic design with ERC

- **Week 3: Layout Design Crash-Course**

  - Design rules and designing for manufacturability (DFM)
  - Stackup and organizing layers
  - Electrical minimums (width, clearance)
  - Making footprints
  - Placing parts and routing nets
  - Checking mechanical assemblies
  - Running DRC
  - Generating fabrication outputs

- **Week 4: Selecting and Using Parts**

  - Survey of IC, module, and passive product families
  - Preview of assembly technology
  - Evaluating parts based on power supply, package, cost, and interface
  - Following datasheet recommendations for schematic and layout
  - Mechanical and thermal considerations

- **Week 5: Layout Considerations**

  - Trace resistance, inductance, capacitance
  - Decoupling, current return path
  - Stackup design and planes
  - EMC/EMI
  - Thermal minimums

- **Week 6: Microcontroller Designs**

  - Microcontroller features and specifications
  - Common microcontroller peripherals (PWM, ADC, watchdog, RTC)
  - Supporting microcontrollers on PCBs
  - Microcontroller datasheets

- **Week 7: Firmware**

  - Setting up toolchains, developing firmware
  - ICSP
  - Project to make your own USBTinyISP

- **Week 8: Designing Your Own System**

  - Design patterns and blocks for common applications
  - Generating specifications from high-level goals
  - Managing Bill-Of-Materials (BOM)
  - Design For Test (DFT)
  - Schematic design review

- **Week 9: Designing Your Own Layout**

  - Assembly methods and techniques
  - Design For Manufacturability (DFM)
  - Layout design review
  - Buying parts
  - Generating production files

- **Week 10: Sensors and Interfaces**

  - Current/voltage sense
  - Temperature
  - Specifications for amplifiers and ADCs
  - Digital interfaces and buses (SPI, I2C)
  - Power protection (TVS, PTC)

- **Week 11: Power and High Speed**

  - Picking passive components
  - Isolation
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

- GNU Compiler Collection for AVR (avr-gcc) or similar
- KiCad 5

If you have difficulty obtaining the required course materials, please
contact_ the instructors.

Enrollment
----------
CCNs are given out during the first week of class. Enrollment will be
finalized during the third week of class. Priority will be given to students
who consistently attend class.

Grading
-------
Your grade is primarily based on completion of labs and assignments. The final
project is graded on effort and a demonstration or description of your work.
Students need 70% to pass.

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


FAQ
===
I missed the first class. Can I still enroll?

  Yes. You will be given the CCN when you come to the second week of class.
  Keep in mind that we may not have enough seats for you to enroll, and that
  you will be joining the class with one absence.


Contact
=======
For course-related questions, concerns, or attendance issues, email
ieee-hope@lists.berkeley.edu.


----

.. image:: https://i.creativecommons.org/l/by-sa/4.0/88x31.png
   :alt: Creative Commons License
   :target: http://creativecommons.org/licenses/by-sa/4.0/

This course is licensed under a `Creative Commons Attribution-ShareAlike 4.0 International License <http://creativecommons.org/licenses/by-sa/4.0/>`_.
