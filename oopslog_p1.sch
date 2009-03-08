v 20080127 1
N 41900 49800 41900 49600 4
N 41900 49600 41600 49600 4
N 41600 48700 41900 48700 4
N 41900 48700 41900 48500 4
C 41800 48200 1 0 0 gnd-1.sym
C 42300 49200 1 0 0 resistor-1.sym
{
T 42600 49600 5 10 0 0 0 0 1
device=RESISTOR
T 42200 49400 5 10 1 1 0 0 1
refdes=R1
T 43100 49400 5 10 1 1 0 0 1
value=22
T 42700 49300 5 10 0 0 0 0 1
footprint=0603
}
C 42300 48900 1 0 0 resistor-1.sym
{
T 42600 49300 5 10 0 0 0 0 1
device=RESISTOR
T 42200 48800 5 10 1 1 0 0 1
refdes=R2
T 43100 48800 5 10 1 1 0 0 1
value=22
T 42800 49000 5 10 0 0 0 0 1
footprint=0603
}
N 42300 49300 41600 49300 4
N 42300 49000 41600 49000 4
N 43200 49300 43600 49300 4
{
T 43700 49300 5 8 1 1 0 1 1
netname=dminus
}
N 43200 49000 43600 49000 4
{
T 43700 49000 5 8 1 1 0 1 1
netname=dplus
}
C 40800 41900 1 0 0 connector9-1.sym
{
T 40900 45400 5 10 0 0 0 0 1
device=DB9TB
T 40900 44800 5 10 1 1 0 0 1
refdes=J1
T 40800 41900 5 10 0 0 0 0 1
value=9
T 40800 41900 5 10 0 0 0 0 1
footprint=DB9MTB
}
N 41600 43900 42600 43900 4
{
T 42700 43900 5 8 1 1 0 1 1
netname=rs232_rx
}
N 41600 44200 42600 44200 4
{
T 42700 44200 5 8 1 1 0 1 1
netname=rs232_tx
}
T 54900 35300 9 16 1 0 0 0 1
OOPS logger -  Connectors and Power supplies
T 55100 34600 9 16 1 0 0 0 1
1                   3
N 41600 43300 42500 43300 4
N 41600 44500 41900 44500 4
N 41900 43600 41600 43600 4
N 41900 43000 41900 44500 4
N 41900 43000 41600 43000 4
N 41600 42700 41900 42700 4
N 41900 42700 41900 42400 4
N 41900 42400 41600 42400 4
C 41700 49800 1 0 0 generic-supply-1.sym
{
T 41900 50050 5 10 0 1 0 3 1
net=5V:1
T 42100 50900 5 10 0 0 0 0 1
footprint=none
T 42100 50700 5 10 0 0 0 0 1
device=PWR
T 41900 50100 9 10 1 1 0 4 1
netname=5V
}
C 40700 48500 1 0 0 connector-usb.sym
{
T 40700 49900 5 10 1 1 0 0 1
refdes=J2
T 39600 49300 5 10 0 0 0 0 1
device=USBCONNECTOR
T 39600 49900 5 10 0 0 0 0 1
footprint=USB_TypeB_RA_TH
}
C 45800 48200 1 0 0 connector6-1.sym
{
T 47600 50000 5 10 0 0 0 0 1
device=CONNECTOR_6
T 46000 50200 5 10 1 1 180 8 1
refdes=J3
T 45800 48200 5 10 0 0 90 0 1
footprint=HEADER6_2
}
N 46600 49900 46900 49900 4
N 46600 49600 46900 49600 4
N 46600 49000 47300 49000 4
{
T 47400 49000 5 8 1 1 0 1 1
netname=sclk
}
N 46600 48700 47300 48700 4
{
T 47400 48700 5 8 1 1 0 1 1
netname=miso
}
N 47300 48400 46600 48400 4
{
T 47400 48400 5 8 1 1 0 1 1
netname=mosi
}
N 46600 49300 47300 49300 4
{
T 47400 49300 5 8 1 1 0 1 1
netname=reset
}
N 46900 49900 46900 50200 4
N 46900 47800 46900 49600 4
C 47000 47500 1 0 1 gnd-1.sym
C 46700 50200 1 0 0 generic-supply-1.sym
{
T 46900 50450 5 10 0 1 0 3 1
net=3V3:1
T 47100 51300 5 10 0 0 0 0 1
footprint=none
T 47100 51100 5 10 0 0 0 0 1
device=PWR
T 46900 50500 5 10 1 1 0 4 1
netname=3.3V
}
C 45600 42300 1 0 0 connector6-1.sym
{
T 47400 44100 5 10 0 0 0 0 1
device=CONNECTOR_6
T 45800 44300 5 10 1 1 180 8 1
refdes=J4
T 45600 42300 5 10 0 0 90 0 1
footprint=HEADER6_2
}
N 46400 44000 46700 44000 4
N 46400 43700 46700 43700 4
N 46400 43100 47100 43100 4
{
T 47200 43100 5 8 1 1 0 1 1
netname=TDI
}
N 46400 42800 47100 42800 4
{
T 47200 42800 5 8 1 1 0 1 1
netname=TDO
}
N 47100 42500 46400 42500 4
{
T 47200 42500 5 8 1 1 0 1 1
netname=TMS
}
N 46400 43400 47100 43400 4
{
T 47200 43400 5 8 1 1 0 1 1
netname=TCK
}
N 46700 44000 46700 44300 4
N 46700 41900 46700 43700 4
C 46800 41600 1 0 1 gnd-1.sym
C 46500 44300 1 0 0 generic-supply-1.sym
{
T 46700 44550 5 10 0 1 0 3 1
net=3V3:1
T 46900 45400 5 10 0 0 0 0 1
footprint=none
T 46900 45200 5 10 0 0 0 0 1
device=PWR
T 46700 44600 5 10 1 1 0 4 1
netname=3.3V
}
C 42400 42700 1 0 0 gnd-1.sym
N 42500 43000 42500 43300 4
C 45600 37200 1 0 0 connector6-1.sym
{
T 47400 39000 5 10 0 0 0 0 1
device=CONNECTOR_6
T 45800 39200 5 10 1 1 180 8 1
refdes=J5
T 45600 37200 5 10 0 0 90 0 1
footprint=HEADER6_2
}
N 46400 38900 46700 38900 4
N 46400 38600 46700 38600 4
N 46400 38000 47100 38000 4
{
T 47200 38000 5 8 1 1 0 1 1
netname=exp2
}
N 46400 37700 47100 37700 4
{
T 47200 37700 5 8 1 1 0 1 1
netname=exp3
}
N 47100 37400 46400 37400 4
{
T 47200 37400 5 8 1 1 0 1 1
netname=exp4
}
N 46400 38300 47100 38300 4
{
T 47200 38300 5 8 1 1 0 1 1
netname=exp1
}
N 46700 38900 46700 39200 4
N 46700 36800 46700 38600 4
C 46800 36500 1 0 1 gnd-1.sym
C 46500 39200 1 0 0 generic-supply-1.sym
{
T 46700 39450 5 10 0 1 0 3 1
net=3V3:1
T 46900 40300 5 10 0 0 0 0 1
footprint=none
T 46900 40100 5 10 0 0 0 0 1
device=PWR
T 46700 39500 5 10 1 1 0 4 1
netname=3.3V
}
C 40000 34200 0 0 0 title-bordered-C.sym
C 52500 40300 1 90 0 capacitor-1.sym
{
T 51800 40500 5 10 0 0 90 0 1
device=CAPACITOR
T 52200 40400 5 10 1 1 90 0 1
refdes=C1
T 51600 40500 5 10 0 0 90 0 1
symversion=0.1
T 52200 40900 5 10 1 1 90 0 1
value=0.1uF
T 52500 40300 5 10 0 0 0 0 1
footprint=0603
}
N 53000 41700 52300 41700 4
N 52300 40300 52300 39300 4
N 54000 39300 54000 40600 4
N 52300 41200 52300 42000 4
C 55500 40100 1 90 0 capacitor-1.sym
{
T 54800 40300 5 10 0 0 90 0 1
device=CAPACITOR
T 55200 40200 5 10 1 1 90 0 1
refdes=C2
T 54600 40300 5 10 0 0 90 0 1
symversion=0.1
T 55200 40700 5 10 1 1 90 0 1
value=0.1uF
T 55500 40100 5 10 0 0 0 0 1
footprint=0603
}
N 55300 40100 55300 39300 4
N 55300 41000 55300 41300 4
N 55300 41300 55000 41300 4
N 56000 41200 56000 41700 4
N 57000 41700 57000 42000 4
N 56000 40300 56000 39300 4
C 53900 38800 1 0 0 gnd-1.sym
N 54000 39100 54000 39300 4
N 53000 41300 52800 41300 4
N 52800 41300 52800 41700 4
C 56800 40500 1 90 0 resistor-1.sym
{
T 56400 40800 5 10 0 0 90 0 1
device=RESISTOR
T 56600 40600 5 10 1 1 90 6 1
refdes=R3
T 56600 41200 5 10 1 1 90 0 1
value=220
T 56800 40500 5 10 0 0 90 0 1
footprint=0603
}
N 56700 40500 56700 40300 4
C 56600 40300 1 270 0 led-2.sym
{
T 56500 39800 5 10 1 1 90 8 1
refdes=D1
T 57200 40200 5 10 0 0 90 8 1
device=LED
T 56600 40300 5 10 0 0 180 2 1
footprint=0603
T 56600 40300 5 10 0 0 180 2 1
value=LED
}
N 56700 41400 56700 41700 4
N 55000 41700 57000 41700 4
N 52300 39300 56700 39300 4
N 56700 39300 56700 39400 4
C 55800 41200 1 270 0 capacitor-polarized.sym
{
T 56500 41000 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 55900 40300 5 10 1 1 90 0 1
refdes=C3
T 56700 41000 5 10 0 0 270 0 1
symversion=0.1
T 55900 40900 5 10 1 1 90 0 1
value=4.7uF
T 55800 41200 5 10 0 0 0 0 1
footprint=EIA3216
}
C 52100 42000 1 0 0 generic-supply-1.sym
{
T 52300 42250 5 10 0 1 0 3 1
net=5V:1
T 52500 43100 5 10 0 0 0 0 1
footprint=none
T 52500 42900 5 10 0 0 0 0 1
device=PWR
T 52300 42300 5 10 1 1 0 4 1
netname=5V
}
C 56800 42000 1 0 0 generic-supply-1.sym
{
T 57000 42250 5 10 0 1 0 3 1
net=3V3:1
T 57200 43100 5 10 0 0 0 0 1
footprint=none
T 57200 42900 5 10 0 0 0 0 1
device=PWR
T 57000 42300 5 10 1 1 0 4 1
netname=3.3V
}
C 53000 40600 1 0 0 tps793xx.sym
{
T 53295 42195 5 10 1 1 0 1 1
refdes=U1
T 53300 42400 5 10 0 0 0 0 1
device=TPS793xx
T 53300 43000 5 10 0 0 0 0 1
footprint=SOT235
T 54300 42200 5 10 1 1 0 1 1
value=3.3V
}
C 52500 46800 1 90 0 capacitor-1.sym
{
T 51800 47000 5 10 0 0 90 0 1
device=CAPACITOR
T 52200 46900 5 10 1 1 90 0 1
refdes=C4
T 51600 47000 5 10 0 0 90 0 1
symversion=0.1
T 52200 47400 5 10 1 1 90 0 1
value=0.1uF
T 52500 46800 5 10 0 0 0 0 1
footprint=0603
}
N 53000 48200 52300 48200 4
N 52300 46800 52300 45800 4
N 54000 45800 54000 47100 4
N 52300 47700 52300 48500 4
C 55500 46600 1 90 0 capacitor-1.sym
{
T 54800 46800 5 10 0 0 90 0 1
device=CAPACITOR
T 55200 46700 5 10 1 1 90 0 1
refdes=C5
T 54600 46800 5 10 0 0 90 0 1
symversion=0.1
T 55200 47200 5 10 1 1 90 0 1
value=0.1uF
T 55500 46600 5 10 0 0 0 0 1
footprint=0603
}
N 55300 46600 55300 45800 4
N 55300 47500 55300 47800 4
N 55300 47800 55000 47800 4
N 56000 47700 56000 48200 4
N 57000 48200 57000 48500 4
N 56000 46800 56000 45800 4
C 53900 45300 1 0 0 gnd-1.sym
N 54000 45600 54000 45800 4
N 53000 47800 52800 47800 4
N 52800 47800 52800 48200 4
N 55000 48200 57000 48200 4
N 52300 45800 56000 45800 4
C 55800 47700 1 270 0 capacitor-polarized.sym
{
T 56500 47500 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 55900 46800 5 10 1 1 90 0 1
refdes=C6
T 56700 47500 5 10 0 0 270 0 1
symversion=0.1
T 55900 47400 5 10 1 1 90 0 1
value=4.7uF
T 55800 47700 5 10 0 0 0 0 1
footprint=EIA3216
}
C 52100 48500 1 0 0 generic-supply-1.sym
{
T 52300 48750 5 10 0 1 0 3 1
net=5V:1
T 52500 49600 5 10 0 0 0 0 1
footprint=none
T 52500 49400 5 10 0 0 0 0 1
device=PWR
T 52300 48800 5 10 1 1 0 4 1
netname=5V
}
C 56800 48500 1 0 0 generic-supply-1.sym
{
T 57000 48750 5 10 0 1 0 3 1
net=1V8:1
T 57200 49600 5 10 0 0 0 0 1
footprint=none
T 57200 49400 5 10 0 0 0 0 1
device=PWR
T 57000 48800 5 10 1 1 0 4 1
netname=1.8V
}
C 53000 47100 1 0 0 tps793xx.sym
{
T 53295 48695 5 10 1 1 0 1 1
refdes=U2
T 53300 48900 5 10 0 0 0 0 1
device=TPS793xx
T 53300 49500 5 10 0 0 0 0 1
footprint=SOT235
T 54300 48700 5 10 1 1 0 1 1
value=1.8V
}
