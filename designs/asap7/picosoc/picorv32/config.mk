export PARENT_DESIGN_NAME = picosoc
export DESIGN_NAME        = picorv32
export DESIGN_NICKNAME    = $(PARENT_DESIGN_NAME)_$(DESIGN_NAME)
export PLATFORM           = asap7

export VERILOG_FILES = \
	$(DESIGN_HOME)/src/$(PARENT_DESIGN_NAME)/picosoc_regs.v \
	$(DESIGN_HOME)/src/$(PARENT_DESIGN_NAME)/$(DESIGN_NAME).v

export VERILOG_TOP_PARAMS = \
		STACKADDR 1024  \
		PROGADDR_RESET 32 \
		PROGADDR_IRQ 0 \
		BARREL_SHIFTER 1 \
		COMPRESSED_ISA 1 \
		ENABLE_COUNTERS 1 \
		ENABLE_MUL 1 \
		ENABLE_DIV 1 \
		ENABLE_FAST_MUL 0 \
		ENABLE_IRQ 1 \
		ENABLE_IRQ_QREGS 0
export VERILOG_DEFINES += \
		-D PICORV32_REGS=picosoc_regs

export SDC_FILE = $(DESIGN_HOME)/$(PLATFORM)/$(PARENT_DESIGN_NAME)/constraint.sdc

export CORE_UTILIZATION  = 90
export CORE_ASPECT_RATIO = 1
export CORE_MARGIN       = 1
export PLACE_DENSITY     = 0.9

export IO_CONSTRAINTS = $(DESIGN_HOME)/$(PLATFORM)/$(PARENT_DESIGN_NAME)/$(DESIGN_NAME)/io.tcl
export PDN_TCL        = $(PLATFORM_DIR)/openRoad/pdn/BLOCK_grid_strategy.tcl

export MIN_ROUTING_LAYER = M2
# M5 is the top PDN layer, so don't exceed that.
export MAX_ROUTING_LAYER = M5

export IO_PLACER_H = M2 M4
export IO_PLACER_V = M3 M5

export PLACE_PINS_ARGS = -annealing

export GND_NETS_VOLTAGES =
export PWR_NETS_VOLTAGES =