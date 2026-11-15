# FPGA Maker IP

The `boards/` directory contains the Vivado board definition for the **RR Retro v1.0**, a custom Spartan-7 board (`xc7s25ftgb196-1`). It is compatible with **AMD Vivado 2026.1**. Other versions have not been verified.

## Install the board in Vivado

1. Clone the repository, or choose **Code → Download ZIP** on GitHub and extract it to a permanent folder.

   ```sh
   git clone https://github.com/aurelianlazarut-sys/fpgamaker-IP.git
   ```

   Keep this layout after cloning or extracting:

   ```text
   fpgamaker-IP/                        # An extracted ZIP may add -main
   ├── boards/                         # Register this folder in Vivado
   │   └── RR_Retro_v1.0/
   │       └── 1.0/
   │           ├── board.xml           # Board definition
   │           ├── part0_pins.xml      # FPGA package pin map
   │           ├── preset.xml          # Board presets
   │           └── Spartan_RR_v1.0.jpg # Board preview image
   ├── constraints/
   │   └── RR_Retro_v1.0_Master.xdc    # Optional project constraint template
   └── README.md
   ```

2. Open **Vivado 2026.1**. In the **Tcl Console**, run the following commands. Replace the example path with the actual path to `boards/` on your machine. Use forward slashes, including on Windows. Point at `boards/` itself, rather than the checkout root or the `1.0/` directory. Leave the four board files together; Vivado reads them from disk and they do not need to be added as project sources.

   ```tcl
   set_param board.repoPaths [linsert [get_param board.repoPaths] end {C:/xilinx_proj/fpgamaker-IP/boards}]
   get_board_parts -quiet *rr_retro*
   ```

3. If the second command lists an RR Retro board part, open **Create Project**. On the **Default Part** page, choose **Boards**, search for **RR Retro**, and select **RR Retro v1.0 Dev Board**. If the wizard was already open, close it and reopen it after setting the path.

If the second command returns nothing, check that the path points to the extracted `boards/` folder and that `RR_Retro_v1.0/1.0/board.xml` exists inside it.

The Tcl setting applies to the current Vivado session. On Windows, to load the board on every startup, add the `set_param` line (with your own path) to `%APPDATA%\Xilinx\Vivado\Vivado_init.tcl`. Create the file if needed. If it already registers this board from another folder, update that entry to avoid registering two copies.

## Manual pin constraints

The [master XDC](constraints/RR_Retro_v1.0_Master.xdc) is optional. To use it, copy it into your project and select **Add Sources → Add or Create Constraints** to add your copy. Uncomment only the pins you use and match their names, including case, to your top-level ports. Add the appropriate `IOSTANDARD` for each enabled single-ended port and define your input clock timing as needed. The DVI entries already include `TMDS_33`.

The optional bank-wide `LVCMOS33` settings are commented out. Enable them only after checking the board's bank voltage and the standards required by every affected port. Avoid duplicating constraints supplied by board automation.

## More information

For more information about the RR Retro board, visit [Adaptive Design](https://adaptivedesign.ie).
