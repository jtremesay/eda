export DESIGN_NICKNAME ?= picosoc_flat
export DESIGN_NAME = picosoc
export PLATFORM    = asap7

# export SYNTH_HIERARCHICAL ?= 1
# export SYNTH_MINIMUM_KEEP_SIZE ?= 10000

export VERILOG_FILES = \
	$(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/$(DESIGN_NAME).v \
	$(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/simpleuart.v \
	$(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/spimemio.v \
	$(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/picorv32.v
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc


export CORE_UTILIZATION       = 70
export CORE_ASPECT_RATIO      = 1
export CORE_MARGIN            = 5
export PLACE_DENSITY          = 0.7

export IO_CONSTRAINTS     = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/io.tcl

export TNS_END_PERCENT   = 100
export SYNTH_MEMORY_MAX_BITS = 8192

# export VERILOG_TOP_PARAMS = \
# 	BARREL_SHIFTER 1 \
# 	COMPRESSED_ISA 1 \
# 	ENABLE_MUL 1 \
# 	ENABLE_DIV 1 \
#     ENABLE_IRQ 1