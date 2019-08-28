PAGES = index.html \
		checklist.html \
		hope.html \
		new.html \
		pcb.html \
		project.html \
        prj-des-rev.html \
		labs/charger/layout.html \
		labs/charger/schematic.html \
		labs/digital-logic.html \
		labs/firmware.html \
		labs/building-gates.html \
		labs/kicad-intro/kicad-intro.html \
		labs/light-comms/light-comms.html \
		labs/measurements.html \
		labs/microcontroller.html \
		labs/microcontroller/microcontroller_lab.html \
		labs/pcb/pcb.html \
		labs/light-sensor.html

EXTRA = blinker.png led-sensor.png led-sensor-footprints.png led-sensor-pcb.png led-tx.png lightmeter_demo.png ledblink_demo.jpg blink_code.png sensor_test.png \
				lt_logo.png ltspice_open.png ltspice_task1.png ltspice_task2_schematic.png ltspice_task2_simulation.png ltspice_task2_simulation2.png trans_sim.asc
WEBROOT = ieee:/home/hope/public_html/hope/

include rstweb.mk

new.html: pcb.html
	cp $? $@
