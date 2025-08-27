export DESIGN_NAME     = picosoc
export DESIGN_NICKNAME = picosoc
export PLATFORM        = asap7

export VERILOG_FILES = \
	$(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/$(DESIGN_NICKNAME).v

export VERILOG_TOP_PARAMS = \
    MEM_WORDS 256 \
		STACKADDR 1024  \
		PROGADDR_RESET 32 \
		PROGADDR_IRQ 0 \
		BARREL_SHIFTER 1 \
		ENABLE_COMPRESSED 1 \
		ENABLE_COUNTERS 1 \
		ENABLE_MUL 1 \
		ENABLE_DIV 1 \
		ENABLE_FAST_MUL 0 \
		ENABLE_IRQ 1 \
		ENABLE_IRQ_QREGS 0
export VERILOG_DEFINES += \
		-D PICORV32_REGS=picosoc_regs \
    -D PICOSOC_MEM=picosoc_mem

export SDC_FILE = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export CORE_UTILIZATION       = 90
export CORE_ASPECT_RATIO      = 1
export CORE_MARGIN            = 5
export PLACE_DENSITY          = 0.9

export MACRO_PLACE_HALO   = 0 2.16
export RTLMP_BOUNDARY_WT  = 0
export RTLMP_FLOW        ?= 1
export RTLMP_MAX_INST     = 250
export RTLMP_MIN_INST     = 50
export RTLMP_MAX_MACRO    = 64
export RTLMP_MIN_MACRO    = 8

export BLOCKS            ?= picorv32 simpleuart spimemio picosoc_mem

ifneq ($(BLOCKS),)
  export GDS_ALLOW_EMPTY       = picorv32 simpleuart spimemio picosoc_mem
  ifneq ($(RTLMP_FLOW), 1)
    export MACRO_PLACEMENT_TCL = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/macro-placement.tcl
  endif
  export PDN_TCL               = $(PLATFORM_DIR)/openRoad/pdn/BLOCKS_grid_strategy.tcl
endif

export IO_CONSTRAINTS     = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/io.tcl

export MACRO_ROWS_HALO_X            = 0.5
export MACRO_ROWS_HALO_Y            = 0.5

export ADDITIONAL_FILES = \
	$(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/macro-placement.tcl

export IO_PLACER_V = M5 M7
export IO_PLACER_H = M4 M6
