SHELL=/bin/csh

ifeq ($(OS),Windows_NT)
	ALTPATH=c:/opt/altera/9.1sp2/quartus/bin64
else
	ALTPATH=/opt/altera/9.1sp2/quartus/bin
endif
BITSTREAM=output_files/$(PROJ).sof
BUILD_DIR=.

PROJ=firebeei1

all: synthesis fitter assembler timing_analyzer eda

precmd:
	(cd $(BUILD_DIR); $(ALTPATH)/quartus_sh $(ALTOPT) -t precmd.tcl)

synthesis:
	(cd $(BUILD_DIR); $(ALTPATH)/quartus_map --read_settings_files=on --write_settings_files=off $(ALTOPT) $(PROJ) -c $(PROJ))

fitter:
	(cd $(BUILD_DIR); $(ALTPATH)/quartus_fit --read_settings_files=off --write_settings_files=off $(ALTOPT) $(PROJ) -c $(PROJ))

assembler:
	(cd $(BUILD_DIR); $(ALTPATH)/quartus_asm --read_settings_files=off --write_settings_files=off $(ALTOPT) $(PROJ) -c $(PROJ))

timing_analyzer:
	(cd $(BUILD_DIR); $(ALTPATH)/quartus_sta $(ALTOPT) $(PROJ))

eda:
	(cd $(BUILD_DIR); $(ALTPATH)/quartus_eda --simulation --read_settings_files=off --write_settings_files=off $(ALTOPT) $(PROJ) -c $(PROJ))

# program the beast
p: $(BITSTREAM)
	(cd $(BUILD_DIR); $(ALTPATH)/quartus_pgm $(ALTOPT) -m JTAG -o P\;$(BITSTREAM)@1)

.PHONY: clean
clean:
	(cd $(BUILD_DIR); rm -rf db incremental_db)
