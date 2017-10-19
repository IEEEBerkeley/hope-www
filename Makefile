PAGES = index.html lab3.html lab4.html lab6.html lab8.html lab10.html \
		light-comms.html \
		microcontroller_lab.html \
		ltspice_lab.html
EXTRA = blinker.png led-sensor.png led-sensor-footprints.png led-sensor-pcb.png led-tx.png lightmeter_demo.png ledblink_demo.jpg blink_code.png sensor_test.png \
				lt_logo.png ltspice_open.png ltspice_task1.png ltspice_task2_schematic.png ltspice_task2_simulation.png ltspice_task2_simulation2.png trans_sim.asc
WEBROOT = sdf.org:~/html/hope/

.include "rstweb.mk"

syllabus.rst: index.rst
	sed -e '/^.. contents/d' index.rst > syllabus.rst
