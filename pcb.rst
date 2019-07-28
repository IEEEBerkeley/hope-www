================================
EE 198: Hands-On PCB Engineering
================================
:Institution: University of California, Berkeley
:Semester: `Fall 2019 <https://decal.berkeley.edu/courses/4918>`_
:Units: 1
:Time: Wednesday 8-10 PM
:Location: 140 Cory Hall
:Instructors: Leon Wu and Kevin Zheng
:Website: http://ieee.berkeley.edu/hope/pcb.html

.. meta::
  :viewport: width=device-width, initial-scale=1

.. contents::

.. If you are currently enrolled in the class, request `lab checkoffs here
.. <http://tinyurl.com/hopecheckoffsp19>`_!

Overview
========
This course introduces printed circuit board (PCB) design and layout practices
and concerns. It is intended for students with some experience with circuits
who are interested in learning or improving their PCB design and fabrication
skills, and particularly those who are part of or intend to join engineering
student organizations with working knowledge in PCB design.

Prerequisites
-------------
EE 16A or similar working knowledge in circuits
We strongly suggest coming to class with a computer mouse and KiCAD installed. 

Objective
---------
Students learn effective system, schematic, and layout design through hands-on
applications and exposure to advanced concerns including DFT, DFM, grounding,
decoupling, EMC/EMI, thermals, isolation.


Timeline
========
Our first class for Fall 2019 is **Wednesday, September 4th**. *This schedule
is tentative and may change at instructor discretion.* 

For alternative or in-depth treatment of topics discussed in class, see
`Supplemental Reading`_.

Crash Course
------------
- **Week 1 (9/4):** `Introduction <https://docs.google.com/presentation/d/1z69Qty1y5xXLZ0Aj5myJGrSgowtjMf__ZhqZYirxvpg/edit?usp=sharing>`_

  - Basics of PCBs and hardware system design
  - Logistics and course timeline
  - Electronic computer-aided design (ECAD) for PCBs
  - KiCAD design flow
  - `Introduction to KiCad Lab <labs/kicad-intro/kicad-intro.html>`_

  **Homework:** Finish intro lab

- **Week 2 (9/11):** `Selecting and Using Parts <https://docs.google.com/presentation/d/1gqILuToAdnMANDv2snQ_bOsREtKKvCXkCQMaTXiBsJA/edit?usp=sharin>`_

  - Case study: DC-DC conversion
  - Circuit devices
  - Using application notes
  - Preview of assembly technology and packaging
  - Writing a Bill Of Materials (BOM)
  - Survey of electronic suppliers
  - `USB Charger Lab <labs/charger/schematic.html>`_

- **Week 3 (9/18):** `Schematic Design Crash-Course <https://docs.google.com/presentation/d/1IAnVMza7iIhRW7UuD3g8MN-3-5JXEDYLzy4vGgrAQDo/edit?usp=sharing>`_

  - Drawing schematics with best practices to communicate design intent
  - Creating symbols by reading component datasheets
  - Importing and checking symbols from other sources
  - Reviewing schematic designs with peers; checking schematics with ERC
  - `USB Charger Lab <labs/charger/schematic.html>`_

  **Homework:** Finish USB charger schematic

- **Week 4 (9/25):** `Layout Design Crash-Course <https://docs.google.com/presentation/d/1IRGGG9W11pcZrjaXWT-ZNtR8h8uL662oAMACzpMP1Io/edit?usp=sharing>`_

  - Design rules, stackup, and design for manufacturability (DFM)
  - Electrical minimums (width, clearance)
  - Making footprints
  - Placing parts and routing nets
  - Layout best practice
  - Checking your work, generating fabrication outputs
  - `USB Charger Layout <labs/charger/layout.html>`_

  **Homework:** Finish USB charger layout

- **Week 5 (10/2):** `Layout Considerations <https://docs.google.com/presentation/d/1oCVrj3e95I76qMfNnjic8B7apNLYl25NWG3ZRFEakGg/edit?usp=sharing>`_

  - Finish microcontroller board
  - Trace resistance, inductance, capacitance
  - Decoupling, current return path
  - Stackup design and planes
  - EMC/EMI
  - Thermal minimums

  **Homework:** Submit your `project proposal <https://goo.gl/forms/6127OCKiCTjQvUt22>`_

- **Week 6 (10/9):** `Microcontroller Designs <https://docs.google.com/presentation/d/1p-V44MY9rMjXJe8xz0R6GgYSgBzAxbwavgltXGzqadI/edit?usp=sharing>`_


  - Microcontroller features and specifications
  - Common microcontroller peripherals (PWM, ADC, watchdog, RTC)
  - Supporting microcontrollers on PCBs
  - Microcontroller datasheets
  - Digital interfaces and buses (SPI, I2C)
  - `Microcontroller design lab <labs/microcontroller.html>`_

  **Homework:** Finish microcontroller board layout

Project
-------
- **Week 7 (10/16):** `Designing Your Own System <https://docs.google.com/presentation/d/1hmEESlJfISLLmpDH5OmdREQbAi4NIz32e8UgA_TMQ-Q/edit?usp=sharing>`_

  - Design example
  - Design for test (DFT)
  - Managing Bill of Materials (BOM)

- **Week 8 (10/23):** `Fabrication, Assembly, DFX <lectures/Lecture9.pptx>`_

- **Week 9 (10/30): Project Design Reviews** 

  - `Project Design Review <prj-des-rev.html>`_
  - `Project Submission <project.html>`_

- **Week 10 (11/6):** `Assembly <https://docs.google.com/presentation/d/1V7lrlwEXy8lqWibsPLGXxYFdvEByJsk6LKzKl2Z_wYY/edit?usp=sharing>`_

  - Soldering, hot air, and reflow techniques
  - Preheat
  - Hand place, vaccums, pick-and-place
  - Phone charger

- **Week 11 (11/13): More Assembly** 

  - (`SVG schematic <labs/assembly/phone_charger.svg>`_ and `KiCad design files (ZIP) <labs/assembly/phone_charger.zip>`_)

- **Week 12 (11/20):** `Bringup and Test <https://docs.google.com/presentation/d/1kGx3dwWIqr9VdXcaf9Vrz-EfuOt4FRQdt4PTNIM8gbw/edit?usp=sharing>`_

  - Bringup strategies
  - Testing boards
  - Avoiding measurement errors and understanding limitations in test equipment
  - Project assembly

- **Week 13 (11/4): Project Presentations**


Course Format
=============
This course spans 13 weeks. Class meets for two hours once a week. Each class
begins with a short lecture followed by a practical assignment (lab activity). 
Labs and assignments can be completed in pairs and build on those from previous weeks. Students
are expected to spend an hour a week outside of class reviewing material,
preparing for class meetings, and completing assignments.

Students are required to complete a final project: a complete PCB design and
assembly. Students may choose to design a PCB for an engineering student
organization, class project, or another design of their choice, with instructor approval.
Final projects are expected to take up to six hours of additional time outside
of class.

Materials
---------
Students should bring to class a laptop computer or similar device capable of
running the following software:

- `KiCad 5 <http://kicad-pcb.org/download/>`_

If you have difficulty obtaining the required course materials, please
contact_ the instructors.

Enrollment
----------
CCNs are given out during the first week of class. Enrollment will be finalized during the third week of class.
Priority will be given to students who consistently attend class.

Grading
-------
Your grade is primarily based on completion of labs and assignments. The final
project is graded on effort and a demonstration of concepts taught in the
course. Students need 70% to pass.

- Labs/Assignments: 50%
- Participation: 20%
- Project: 30%

Labs are graded based on completing a successful checkoff. We encourage you to review your designs with peers 
because each student will have only 2 attempts at a checkoff for each lab. 

Attendance
----------
Since grading is primarily based on completion of labs during class,
students should make a best effort to attend class.

Absences must be excused to prevent it from affecting your grade. One unexcused absence will be permitted. 

.. If you miss a class (with notification), you *must make up the missed lab or assignment by the
.. next lecture for the absence to be considered excused. Please also read over the lecture slides 
.. from the class you missed.

Additional unexcused absences may result in a NP.


Resources
=========
- HOPE's `PCB Checklist <checklist.html>`_

- `KiCad Documentation <http://kicad-pcb.org/help/documentation/>`_

  - `Cheatsheet <https://silica.io/wp-content/uploads/2018/06/kicad-cheatsheet-landscape.pdf>`_
  - `Getting Started Guide <http://docs.kicad-pcb.org/stable/en/getting_started_in_kicad.pdf>`_
 
Supplemental Reading
--------------------
Roughly in the order that is presented in class:

- Wahby 2013. `PCB design basics <https://www.edn.com/design/pc-board/4424239/2/PCB-design-basics>`_. *EDN*.
- Wahby 2014. `PCB Design Basics: Example design flow <https://www.edn.com/design/pc-board/4426878/PCB-Design-Basics--Example-design-flow>`_. *EDN*.
- Voltage Protection:
  - Pickering 2016. `Reverse-Polarity Protection in Automotive Design <https://www.electronicdesign.com/power/reverse-polarity-protection-automotive-design>`_. 
- HOPE's `PCB Checklist <checklist.html>`_
- Dunn 2013. `PCB design course & checklist <https://www.edn.com/design/pc-board/4422579/PCB-design-course---checklist>`_. *EDN*.
- Zumbahlen 2012. `Staying Well Grounded <https://www.analog.com/en/analog-dialogue/articles/staying-well-grounded.html>`_. *Analog Dialogue Technical Journal.*


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


Acknowledgements
================
Hands-On PCB Engineering is made possible by donations from our generous
industry sponsors:

- `Bay Area Circuits <https://bayareacircuits.com/>`_ sponsors our students'
  PCB prototypes. Bay Area Circuit's experienced staff in Silicon Valley have
  delivered quality PCBs on-time for over 40 years.

- `Texas Instruments <http://www.ti.com/>`_ donates development boards for our
  labs and parts for student projects. Texas Instruments is a leader in
  analog, embedded processing, and semiconductors, with a part to fill every
  need from low-power microcontrollers to millimeter-wave radar.

----

.. Copyright ⓒ 2018, 2019 Kevin Zheng. This course is licensed under a `Creative
.. Commons Attribution-ShareAlike 4.0 International License
.. <http://creativecommons.org/licenses/by-sa/4.0/>`_.
