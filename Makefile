PAGES = index.html \
		labs/digital-logic.html \
		labs/light-comms/light-comms.html \
		labs/measurements.html \
		labs/microcontroller/microcontroller_lab.html \
		labs/pcb/pcb.html \
		labs/simulation/ltspice_lab.html \
		labs/building-gates.html

EXTRA = blinker.png led-sensor.png led-sensor-footprints.png led-sensor-pcb.png led-tx.png lightmeter_demo.png ledblink_demo.jpg blink_code.png sensor_test.png \
				lt_logo.png ltspice_open.png ltspice_task1.png ltspice_task2_schematic.png ltspice_task2_simulation.png ltspice_task2_simulation2.png trans_sim.asc
WEBROOT = ieee:/home/hope/public_html/hope/

.include "rstweb.mk"

syllabus.rst: index.rst
	sed -e '/^.. contents/d' index.rst > syllabus.rst
