# Build Guide

This is the build guide for Cho-Corne-Ice, a Corne v3 variant designed for low profile and wireless
[Click here for the Corne Cherry v2 build guide](
https://github.com/foostan/crkbd/blob/master/corne-cherry/doc/v2/buildguide_en.md).

## Parts

| Name | Count | Remarks |
|:-|:-|:-|
| PCB | 1 set | |
| Top plate | 2 sheets | 1.2mm thick |
| Bottom plate | 2 sheets | |
| Display cover | 2 sheets | |
| nice!nano | 2 | |
| nice!view | 2 | |
| [Microcontroller Sockets](https://www.digikey.com/en/products/detail/mill-max-manufacturing-corp/310-43-112-41-001000/1212186) | 4 x 12pin | Mill-Max 310 series |
| [Microcontroller Pins](https://www.digikey.com/en/products/detail/mill-max-manufacturing-corp/3320-0-00-15-00-00-03-0/4147392) | 48 | Mill-Max 3320 series |
| Battery receptacle | 2 | JST-PH 2.0 SMD right angle S2B-PH-SM4-TB |
| Battery | 2 | Any 3.7v LiPo battery; 301230 fits between nice!nano and PCB |
| Reset switch | 2 | Alps SKSNLAE010 |
| Power switch | 2 | Alps SSSS811101 |
| Diodes | 42 | SMD Only (SOD-123 Package) |
| PCB sockets | 42 | Kailh Choc v1 (PG1350) |
| Key switches | 42 | Only compatible with Kailh Choc style |
| Keycaps | 42 pieces | 1u 40 pcs, 1.5u 2 pcs |
| Spacer M2 4.5mm | 10 | |
| Spacer M2 9mm | 4 | |
| Screw M2 4mm | 28 screws | |
| Rubber feet | 8 pieces | |
| USB-C cable | 2 | Avoid charge-only cables |

## Firmware preparation

It is recommended to flash nice!nano's prior to soldering.\
For more information,
please see <https://zmk.dev/docs>.

## Verification

The PCB comes with a frame for manufacturing reasons.
You can fold it by hand to remove it, but if it is difficult,
make a cut in the joint\* with a cutter or similar,
to make it easier to remove.
In addition, the joint can be cleaned with a file.

\**Joint part: There are a total of 8 parts,
which are marked in red in the image below.*

![confirm_remove_frame](assets/confirm_remove_frame.jpg)

## Assembly

### Diodes

Since SMD parts are very small, fine-tip/reverse-action tweezers are recommended.

**The diodes have a specific orientation**, so install with "|" marking on the diode
facing the "|" on the PCB marking: "|◁"

![build_diode](assets/build_diode.jpg)

<details>
<summary>TIPS: Tips for installing SMD parts</summary>

Begin with applying solder to only one pad.

![tips_building_smd_01](https://user-images.githubusercontent.com/736191/54487435-79330280-48d9-11e9-9138-525d8ee68144.jpg)

Next, place SMD component while heating solder. At this time,
it is recommended to use [reverse-action tweezers](https://www.alimed.com/_resources/cache/images/product/70895A_850x480-pad.jpg),
so that you can hold the SMD part firmly without applying force,
and concentrate on alignment and soldering instead.
Also, if the soldering iron is too hot or the solder is touched too long,
the flux contained in the solder may evaporate and form a poor solder joint,
but it can be repaired later,
so at this point you should only care about attaching parts.
It's okay.

![tips_building_smd_02](https://user-images.githubusercontent.com/736191/54487436-79330280-48d9-11e9-856e-f3f5b9f58414.jpg)

It is okay if the SMD component is not flush with the PCB when viewed from the side.
If it is floating, press the SMD component down with tweezers or your finger and reheat the solder.

![tips_building_smd_03](https://user-images.githubusercontent.com/736191/54487437-79330280-48d9-11e9-996d-a578e767c12c.jpg)

Then solder the other contacts.
Be careful not to apply too much solder,
as a small amount is sufficient.
If you have applied too much,
you can remove it with a suction pump, solder wick,
or by picking it up with a soldering iron.

If the amount of solder on the preliminary solder side is small,
additional soldering is performed, and if it is a heap,
apply flux from above and heat it to clean it.

![tips_building_smd_04](https://user-images.githubusercontent.com/736191/54487438-79cb9900-48d9-11e9-9280-dc72a2087307.jpg)

</details>

The diode is completed by soldering 42 pieces in total on the left and right.

![build_diode_overview](assets/build_diode_overview.jpg)

### Power switch, reset switch, battery socket, pin socket for OLED

Solder the power switch, reset switch (tact switch),
and OLED pin socket.

The reset switch is a mid-mount switch and is mounted in the small cutout on the interior side of each half. the PCB will fit into the groove of the switch.

The power switch is SMD mounted to the bottom of the board directly under where the USB port will be located.

The JST-PH 2.0 2-pin battery receptacle is located near the reset switch and nice!nano header. The SMD version of this receptacle must be used, and it should be mounted facing toward the exterior of the board.

Since these parts may fall off when soldering, you can affix them with masking tape.

#### Battery

**Important**: There is no standard for battery polarity. Ensure your battery is terminated correctly before connecting to the board. Incorrect polarity will permanently damage your nice!nano.

### nice!nano

Solder headers to PCB. Then insert pins and solder nice!nano to pins. \[[Guide](https://www.digikey.com/en/products/detail/mill-max-manufacturing-corp/310-43-112-41-001000/1212186)]

![build_promicro](assets/build_promicro.jpg)

If you use [spring-loaded pin headers](https://shop.yushakobo.jp/collections/all-keyboard-parts/products/31),
you do not need to solder the back side.
Please refer to the [Helix Build Guide](
https://github.com/MakotoKurauchi/helix/blob/master/Doc/buildguide_en.md#pro-micro)
for details on how to use spring-loaded pin headers.

![build_promicro_conthrough](assets/build_promicro_conthrough.jpg)

### nice!view

Insert the pin header into the socket first, then solder the nice!view
to the pin header.
Note: Solder one pin to OLED module, then reheat solder to confirm nice!view module is level,
then solder remaining pins.

![build_oled](assets/build_oled.jpg)

### Operation check

Now is a good time to test your keyboard to help isolate potential problems.

To check the operation, connect left and right sides with TRRS cable,
then connect left side to the computer with USB cable.
If it is done correctly so far, shorting a hotswap socket pad with tweezers will 
output out a keypress and it will be displayed on the OLED module.

### Switch Sockets

Solder hotswap sockets according to mark on PCB as shown below.
Refer to **TIPS: Tips for installing SMD parts** section above as similar soldering
procedure is followed. 

![build_socket](assets/build_socket.jpg)

Switch Socket soldering is completed after 42 are installed on left and right.

![build_socket_overview](assets/build_socket_overview.jpg)

### OLED protective cover

Attach the OLED protective cover with M2 9mm spacers and M2 screws.

![build_oled_plate_front](assets/build_oled_plate_front.jpg)
![build_oled_plate_back](assets/build_oled_plate_back.jpg)

### Plates & Switches

Place a few key switches into the top plate, then line up and press into PCB socket.
If you attach all the key switches to the top plate first,
it will be more difficult to fit them in the PCB sockets all at once.
So it is recommended to do a few to begin with. 

![build_top_plate_switches](assets/build_top_plate_switches.jpg)

Install the M2 4.5mm spacer and M2 screws on the top plate.

![build_screws_spacers_front](assets/build_screws_spacers_front.jpg)

It is easy to screw the spacer in after inserting it into the hole from the back side.

![build_screws_spacers_back](assets/build_screws_spacers_back.jpg)

Attach the bottom plate with M2 screws.

![build_bottom_plate](assets/build_bottom_plate.jpg)

Install the rubber feet in the following positions.

![build_cushion_rubbers](assets/build_cushion_rubbers.jpg)

That's it!

![build_finish](assets/build_finish.jpg)
