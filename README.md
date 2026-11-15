# FPGA Maker IP

The `boards/` directory contains the Vivado board definition for the **RR Retro v1.0**, a custom Spartan-7 board (`xc7s25ftgb196-1`). It is compatible with **AMD Vivado 2026.1**. Other versions have not been verified.

## Install the board in Vivado

Clone this repository, then point Vivado at the `boards/` folder. For example, if you cloned the repository to `C:/xilinx_proj/fpgamaker-IP`, run this in the Vivado Tcl Console:

```tcl
set_param board.repoPaths [linsert [get_param board.repoPaths] end {C:/xilinx_proj/fpgamaker-IP/boards}]
get_board_parts -quiet *rr_retro*
```

In the New Project wizard, select **Boards** and look for **RR Retro v1.0 Dev Board**. To register it automatically on startup, put the `set_param` line in your `Vivado_init.tcl`.

Keep the definition, pin map, presets, and board image together under `boards/RR_Retro_v1.0/1.0/`.
