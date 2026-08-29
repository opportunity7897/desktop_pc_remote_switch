# Remote Desktop PC Power Controller — KiCad schematic

This package contains a KiCad legacy-compatible schematic for a Raspberry Pi Zero 2 W remote desktop power controller.

Files:
- `remote_pc_power.sch` — schematic. KiCad 6/7/8/9 can import it; save once to obtain `.kicad_sch`.
- `remote_pc_power.lib` — small local symbol library used by the schematic.

Circuit blocks:
- Dual 5 V inputs: ATX `+5VSB` and external 5 V.
- Two input PTC placeholders (`F1`, `F2`).
- 3-pin jumper source selector (`JP1`): 1–2 = +5VSB, 2–3 = external 5 V.
- Pi Zero 2 W logical connector with the used pins only.
- TLP241B PhotoMOS across motherboard PWR_SW, with the original case switch in parallel.
- PC817X3 optocoupler monitoring motherboard PWR_LED, while retaining the case LED.

Raspberry Pi mapping:
- +5 V: physical pin 2 (or 4)
- +3.3 V: physical pin 1
- GND: physical pin 6
- GPIO23 / PWR_SW output: physical pin 16
- GPIO24 / PWR_LED input: physical pin 18

Important: footprints are intentionally unassigned. Confirm the exact packages of the parts you purchase before PCB layout.
