export PARENT_DESIGN_NAME = picosoc
export DESIGN_NAME        = simpleuart
export DESIGN_NICKNAME    = $(PARENT_DESIGN_NAME)_$(DESIGN_NAME)
export PLATFORM           = asap7

export VERILOG_FILES = \
	$(DESIGN_HOME)/src/$(PARENT_DESIGN_NAME)/$(DESIGN_NAME).v

export SDC_FILE = $(DESIGN_HOME)/$(PLATFORM)/$(PARENT_DESIGN_NAME)/constraint.sdc

export CORE_UTILIZATION  = 80
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