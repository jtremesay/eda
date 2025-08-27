export DESIGN_NICKNAME ?= picorv32
export DESIGN_NAME = picorv32
export PLATFORM    = asap7

# export SYNTH_HIERARCHICAL ?= 1
# export SYNTH_MINIMUM_KEEP_SIZE ?= 10000

export VERILOG_FILES = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/$(DESIGN_NICKNAME).v
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

# ifeq ($(BLOCKS),)
# 	export ADDITIONAL_LEFS = ./platforms/$(PLATFORM)/lef/fakeram7_256x32.lef
# 	export ADDITIONAL_LIBS = $(LIB_DIR)/fakeram7_256x32.lib
# endif

# export DIE_AREA = 0 0 60 60
# export CORE_AREA = 5 5 55 55 
export CORE_UTILIZATION       = 90
export CORE_ASPECT_RATIO      = 1
export CORE_MARGIN            = 5
export PLACE_DENSITY          = 0.9


# export PLACE_DENSITY_LB_ADDON = 0.10

export IO_CONSTRAINTS     = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/io.tcl
# export MACRO_PLACE_HALO    = 2 2

export TNS_END_PERCENT   = 100

export VERILOG_TOP_PARAMS = \
	BARREL_SHIFTER 1 \
	COMPRESSED_ISA 1 \
	ENABLE_MUL 1 \
	ENABLE_DIV 1 \
    ENABLE_IRQ 1

# export CTS_CLUSTER_SIZE = 10
# export CTS_CLUSTER_DIAMETER = 50
