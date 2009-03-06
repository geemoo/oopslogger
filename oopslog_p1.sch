v 20080127 1
C 40000 40000 0 0 0 title-B.sym
N 41700 50300 41700 50100 4
N 41700 50100 41400 50100 4
N 41400 49200 41700 49200 4
N 41700 49200 41700 49000 4
C 41600 48700 1 0 0 gnd-1.sym
C 42100 49700 1 0 0 resistor-1.sym
{
T 42400 50100 5 10 0 0 0 0 1
device=RESISTOR
T 42000 49900 5 10 1 1 0 0 1
refdes=R1
T 42900 49900 5 10 1 1 0 0 1
value=22
T 42500 49800 5 10 0 0 0 0 1
footprint=0603
}
C 42100 49400 1 0 0 resistor-1.sym
{
T 42400 49800 5 10 0 0 0 0 1
device=RESISTOR
T 42000 49300 5 10 1 1 0 0 1
refdes=R2
T 42900 49300 5 10 1 1 0 0 1
value=22
T 42600 49500 5 10 0 0 0 0 1
footprint=0603
}
N 42100 49800 41400 49800 4
N 42100 49500 41400 49500 4
N 43000 49800 43400 49800 4
{
T 43500 49800 5 8 1 1 0 1 1
netname=dminus
}
N 43000 49500 43400 49500 4
{
T 43500 49500 5 8 1 1 0 1 1
netname=dplus
}
C 51100 43500 1 90 0 capacitor-1.sym
{
T 50400 43700 5 10 0 0 90 0 1
device=CAPACITOR
T 50800 43600 5 10 1 1 90 0 1
refdes=C1
T 50200 43700 5 10 0 0 90 0 1
symversion=0.1
T 50800 44100 5 10 1 1 90 0 1
value=0.1uF
T 51100 43500 5 10 0 0 0 0 1
footprint=0603
}
N 51600 44900 50900 44900 4
N 50900 43500 50900 42500 4
N 52600 42500 52600 43800 4
N 50900 44400 50900 45200 4
C 54100 43300 1 90 0 capacitor-1.sym
{
T 53400 43500 5 10 0 0 90 0 1
device=CAPACITOR
T 53800 43400 5 10 1 1 90 0 1
refdes=C2
T 53200 43500 5 10 0 0 90 0 1
symversion=0.1
T 53800 43900 5 10 1 1 90 0 1
value=0.1uF
T 54100 43300 5 10 0 0 0 0 1
footprint=0603
}
N 53900 43300 53900 42500 4
N 53900 44200 53900 44500 4
N 53900 44500 53600 44500 4
N 54600 44400 54600 44900 4
N 55600 44900 55600 45200 4
N 54600 43500 54600 42500 4
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
C 52500 42000 1 0 0 gnd-1.sym
N 52600 42300 52600 42500 4
N 51600 44500 51400 44500 4
N 51400 44500 51400 44900 4
T 50200 40900 9 16 1 0 0 0 1
OOPS logger
T 50500 40100 9 12 1 0 0 0 1
1
T 51800 40100 9 12 1 0 0 0 1
2
T 54000 40100 9 12 1 0 0 0 1
Jean Richard
C 55400 43700 1 90 0 resistor-1.sym
{
T 55000 44000 5 10 0 0 90 0 1
device=RESISTOR
T 55200 43800 5 10 1 1 90 6 1
refdes=R3
T 55200 44400 5 10 1 1 90 0 1
value=220
T 55400 43700 5 10 0 0 90 0 1
footprint=0603
}
N 55300 43700 55300 43500 4
C 55200 43500 1 270 0 led-2.sym
{
T 55100 43000 5 10 1 1 90 8 1
refdes=D1
T 55800 43400 5 10 0 0 90 8 1
device=LED
T 55200 43500 5 10 0 0 180 2 1
footprint=0603
T 55200 43500 5 10 0 0 180 2 1
value=LED
}
N 55300 44600 55300 44900 4
N 53600 44900 55600 44900 4
N 50900 42500 55300 42500 4
N 55300 42500 55300 42600 4
N 41600 43300 42500 43300 4
N 41600 44500 41900 44500 4
N 41900 43600 41600 43600 4
N 41900 43000 41900 44500 4
N 41900 43000 41600 43000 4
N 41600 42700 41900 42700 4
N 41900 42700 41900 42400 4
N 41900 42400 41600 42400 4
C 54400 44400 1 270 0 capacitor-polarized.sym
{
T 55100 44200 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 54500 43500 5 10 1 1 90 0 1
refdes=C9
T 55300 44200 5 10 0 0 270 0 1
symversion=0.1
T 54500 44100 5 10 1 1 90 0 1
value=4.7uF
T 54400 44400 5 10 0 0 0 0 1
footprint=EIA3216
}
C 41500 50300 1 0 0 generic-supply-1.sym
{
T 41700 50550 5 10 0 1 0 3 1
net=5V:1
T 41900 51400 5 10 0 0 0 0 1
footprint=none
T 41900 51200 5 10 0 0 0 0 1
device=PWR
T 41700 50600 9 10 1 1 0 4 1
netname=5V
}
C 50700 45200 1 0 0 generic-supply-1.sym
{
T 50900 45450 5 10 0 1 0 3 1
net=5V:1
T 51100 46300 5 10 0 0 0 0 1
footprint=none
T 51100 46100 5 10 0 0 0 0 1
device=PWR
T 50900 45500 9 10 1 1 0 4 1
netname=5V
}
C 55400 45200 1 0 0 generic-supply-1.sym
{
T 55600 45450 5 10 0 1 0 3 1
net=3V3:1
T 55800 46300 5 10 0 0 0 0 1
footprint=none
T 55800 46100 5 10 0 0 0 0 1
device=PWR
T 55600 45500 9 10 1 1 0 4 1
netname=3.3V
}
C 40500 49000 1 0 0 connector-usb.sym
{
T 40500 50400 5 10 1 1 0 0 1
refdes=J2
T 39400 49800 5 10 0 0 0 0 1
device=USBCONNECTOR
T 39400 50400 5 10 0 0 0 0 1
footprint=USB_TypeB_RA_TH
}
C 51600 43800 1 0 0 tps793xx.sym
{
T 51895 45395 5 10 1 1 0 1 1
refdes=U?
T 51900 45600 5 10 0 0 0 0 1
device=TPS793xx
T 51900 46200 5 10 0 0 0 0 1
footprint=SOT235
T 52900 45400 5 10 1 1 0 1 1
value=3.3V
}
C 51100 48400 1 90 0 capacitor-1.sym
{
T 50400 48600 5 10 0 0 90 0 1
device=CAPACITOR
T 50800 48500 5 10 1 1 90 0 1
refdes=C1
T 50200 48600 5 10 0 0 90 0 1
symversion=0.1
T 50800 49000 5 10 1 1 90 0 1
value=0.1uF
T 51100 48400 5 10 0 0 0 0 1
footprint=0603
}
N 51600 49800 50900 49800 4
N 50900 48400 50900 47400 4
N 52600 47400 52600 48700 4
N 50900 49300 50900 50100 4
C 54100 48200 1 90 0 capacitor-1.sym
{
T 53400 48400 5 10 0 0 90 0 1
device=CAPACITOR
T 53800 48300 5 10 1 1 90 0 1
refdes=C2
T 53200 48400 5 10 0 0 90 0 1
symversion=0.1
T 53800 48800 5 10 1 1 90 0 1
value=0.1uF
T 54100 48200 5 10 0 0 0 0 1
footprint=0603
}
N 53900 48200 53900 47400 4
N 53900 49100 53900 49400 4
N 53900 49400 53600 49400 4
N 54600 49300 54600 49800 4
N 55600 49800 55600 50100 4
N 54600 48400 54600 47400 4
C 52500 46900 1 0 0 gnd-1.sym
N 52600 47200 52600 47400 4
N 51600 49400 51400 49400 4
N 51400 49400 51400 49800 4
N 53600 49800 55600 49800 4
N 50900 47400 54600 47400 4
C 54400 49300 1 270 0 capacitor-polarized.sym
{
T 55100 49100 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 54500 48400 5 10 1 1 90 0 1
refdes=C9
T 55300 49100 5 10 0 0 270 0 1
symversion=0.1
T 54500 49000 5 10 1 1 90 0 1
value=4.7uF
T 54400 49300 5 10 0 0 0 0 1
footprint=EIA3216
}
C 50700 50100 1 0 0 generic-supply-1.sym
{
T 50900 50350 5 10 0 1 0 3 1
net=5V:1
T 51100 51200 5 10 0 0 0 0 1
footprint=none
T 51100 51000 5 10 0 0 0 0 1
device=PWR
T 50900 50400 5 10 1 1 0 4 1
netname=5V
}
C 55400 50100 1 0 0 generic-supply-1.sym
{
T 55600 50350 5 10 0 1 0 3 1
net=1V8:1
T 55800 51200 5 10 0 0 0 0 1
footprint=none
T 55800 51000 5 10 0 0 0 0 1
device=PWR
T 55600 50400 5 10 1 1 0 4 1
netname=1.8V
}
C 51600 48700 1 0 0 tps793xx.sym
{
T 51895 50295 5 10 1 1 0 1 1
refdes=U?
T 51900 50500 5 10 0 0 0 0 1
device=TPS793xx
T 51900 51100 5 10 0 0 0 0 1
footprint=SOT235
T 52900 50300 5 10 1 1 0 1 1
value=1.8V
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
C 45600 41900 1 0 0 connector6-1.sym
{
T 47400 43700 5 10 0 0 0 0 1
device=CONNECTOR_6
T 45800 43900 5 10 1 1 180 8 1
refdes=J3
T 45600 41900 5 10 0 0 90 0 1
footprint=HEADER6_2
}
N 46400 43600 46700 43600 4
N 46400 43300 46700 43300 4
N 46400 42700 47100 42700 4
{
T 47200 42700 5 8 1 1 0 1 1
netname=TDI
}
N 46400 42400 47100 42400 4
{
T 47200 42400 5 8 1 1 0 1 1
netname=TDO
}
N 47100 42100 46400 42100 4
{
T 47200 42100 5 8 1 1 0 1 1
netname=TMS
}
N 46400 43000 47100 43000 4
{
T 47200 43000 5 8 1 1 0 1 1
netname=TCK
}
N 46700 43600 46700 43900 4
N 46700 41500 46700 43300 4
C 46800 41200 1 0 1 gnd-1.sym
C 46500 43900 1 0 0 generic-supply-1.sym
{
T 46700 44150 5 10 0 1 0 3 1
net=3V3:1
T 46900 45000 5 10 0 0 0 0 1
footprint=none
T 46900 44800 5 10 0 0 0 0 1
device=PWR
T 46700 44200 5 10 1 1 0 4 1
netname=3.3V
}
C 42400 42700 1 0 0 gnd-1.sym
N 42500 43000 42500 43300 4
