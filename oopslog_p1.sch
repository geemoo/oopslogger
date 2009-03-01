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
C 49800 48200 1 90 0 capacitor-1.sym
{
T 49100 48400 5 10 0 0 90 0 1
device=CAPACITOR
T 49500 48300 5 10 1 1 90 0 1
refdes=C1
T 48900 48400 5 10 0 0 90 0 1
symversion=0.1
T 49500 48800 5 10 1 1 90 0 1
value=0.1uF
T 49800 48200 5 10 0 0 0 0 1
footprint=0603
}
N 50300 49600 49600 49600 4
N 49600 48200 49600 47200 4
N 51300 47200 51300 48500 4
N 49600 49100 49600 49900 4
C 52800 48000 1 90 0 capacitor-1.sym
{
T 52100 48200 5 10 0 0 90 0 1
device=CAPACITOR
T 52500 48100 5 10 1 1 90 0 1
refdes=C2
T 51900 48200 5 10 0 0 90 0 1
symversion=0.1
T 52500 48600 5 10 1 1 90 0 1
value=0.1uF
T 52800 48000 5 10 0 0 0 0 1
footprint=0603
}
N 52600 48000 52600 47200 4
N 52600 48900 52600 49200 4
N 52600 49200 52300 49200 4
N 53300 49100 53300 49600 4
N 54300 49600 54300 49900 4
N 53300 48200 53300 47200 4
C 40600 41200 1 0 0 connector9-1.sym
{
T 40700 44700 5 10 0 0 0 0 1
device=DB9TB
T 40700 44100 5 10 1 1 0 0 1
refdes=J2M
T 40600 41200 5 10 0 0 0 0 1
value=9
T 40600 41200 5 10 0 0 0 0 1
footprint=DB9MTB
}
N 41400 43200 42900 43200 4
N 41400 43500 43500 43500 4
N 42900 43900 42900 43200 4
N 42900 43900 43500 43900 4
N 45000 45600 45000 45400 4
C 43300 44900 1 180 0 capacitor-1.sym
{
T 43100 44200 5 10 0 0 180 0 1
device=CAPACITOR
T 42700 44800 5 10 1 1 180 2 1
refdes=C4
T 43100 44000 5 10 0 0 180 0 1
symversion=0.1
T 43000 44800 5 10 1 1 0 0 1
value=0.1uF
T 43300 44900 5 10 0 0 0 0 1
footprint=0603
}
N 43300 44700 43500 44700 4
N 42400 44700 42200 44700 4
N 42200 44700 42200 44300 4
N 42200 44300 43500 44300 4
N 43500 42300 43100 42300 4
N 43100 42300 43100 42000 4
C 43300 41100 1 90 0 capacitor-1.sym
{
T 42600 41300 5 10 0 0 90 0 1
device=CAPACITOR
T 43000 41100 5 10 1 1 90 0 1
refdes=C7
T 42400 41300 5 10 0 0 90 0 1
symversion=0.1
T 43000 41700 5 10 1 1 90 0 1
value=0.1uF
T 43300 41100 5 10 0 0 0 0 1
footprint=0603
}
C 44900 40200 1 0 0 gnd-1.sym
N 43100 40800 43100 41100 4
C 47000 41100 1 90 0 capacitor-1.sym
{
T 46300 41300 5 10 0 0 90 0 1
device=CAPACITOR
T 46700 41100 5 10 1 1 90 0 1
refdes=C8
T 46100 41300 5 10 0 0 90 0 1
symversion=0.1
T 46700 41700 5 10 1 1 90 0 1
value=0.1uF
T 47000 41100 5 10 0 0 0 0 1
footprint=0603
}
N 46500 42300 46800 42300 4
N 46800 42300 46800 42000 4
N 46800 41100 46800 40800 4
C 47600 44900 1 180 0 capacitor-1.sym
{
T 47400 44200 5 10 0 0 180 0 1
device=CAPACITOR
T 47000 44800 5 10 1 1 180 2 1
refdes=C6
T 47400 44000 5 10 0 0 180 0 1
symversion=0.1
T 47300 44800 5 10 1 1 0 0 1
value=0.1uF
T 47600 44900 5 10 0 0 0 0 1
footprint=0603
}
N 46700 44700 46500 44700 4
N 47600 44700 47800 44700 4
N 47800 44700 47800 44300 4
N 47800 44300 46500 44300 4
N 45000 40800 45000 41600 4
N 42300 40800 46800 40800 4
C 51200 46700 1 0 0 gnd-1.sym
N 51300 47000 51300 47200 4
N 46500 43900 47200 43900 4
{
T 47300 43900 5 8 1 1 0 1 1
netname=RX
}
N 50300 49200 50100 49200 4
N 50100 49200 50100 49600 4
T 50200 40900 9 16 1 0 0 0 1
OOPS logger
T 50500 40100 9 12 1 0 0 0 1
1
T 51800 40100 9 12 1 0 0 0 1
3
T 54000 40100 9 12 1 0 0 0 1
Jean Richard
C 54100 48400 1 90 0 resistor-1.sym
{
T 53700 48700 5 10 0 0 90 0 1
device=RESISTOR
T 53900 48500 5 10 1 1 90 6 1
refdes=R3
T 53900 49100 5 10 1 1 90 0 1
value=220
T 54100 48400 5 10 0 0 90 0 1
footprint=0603
}
N 54000 48400 54000 48200 4
C 53900 48200 1 270 0 led-2.sym
{
T 53800 47700 5 10 1 1 90 8 1
refdes=D1
T 54500 48100 5 10 0 0 90 8 1
device=LED
T 53900 48200 5 10 0 0 180 2 1
footprint=0603
T 53900 48200 5 10 0 0 180 2 1
value=LED
}
N 54000 49300 54000 49600 4
N 52300 49600 54300 49600 4
N 49600 47200 54000 47200 4
N 54000 47200 54000 47300 4
N 41400 42600 42300 42600 4
N 42300 40800 42300 42600 4
N 41400 43800 41700 43800 4
N 41700 42900 41400 42900 4
N 41700 42300 41700 43800 4
N 41700 42300 41400 42300 4
N 41400 42000 41700 42000 4
N 41700 42000 41700 41700 4
N 41700 41700 41400 41700 4
C 53100 49100 1 270 0 capacitor-polarized.sym
{
T 53800 48900 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 53200 48200 5 10 1 1 90 0 1
refdes=C?
T 54000 48900 5 10 0 0 270 0 1
symversion=0.1
T 53200 48800 5 10 1 1 90 0 1
value=4.7uF
T 53100 49100 5 10 0 0 0 0 1
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
T 41700 50600 5 10 1 1 0 4 1
netname=5V
}
C 49400 49900 1 0 0 generic-supply-1.sym
{
T 49600 50150 5 10 0 1 0 3 1
net=5V:1
T 49800 51000 5 10 0 0 0 0 1
footprint=none
T 49800 50800 5 10 0 0 0 0 1
device=PWR
T 49600 50200 5 10 1 1 0 4 1
netname=5V
}
C 44800 45600 1 0 0 generic-supply-1.sym
{
T 45000 45850 5 10 0 1 0 3 1
net=3V3:1
T 45200 46700 5 10 0 0 0 0 1
footprint=none
T 45200 46500 5 10 0 0 0 0 1
device=PWR
T 45000 45900 5 10 1 1 0 4 1
netname=3.3V
}
C 54100 49900 1 0 0 generic-supply-1.sym
{
T 54300 50150 5 10 0 1 0 3 1
net=3V3:1
T 54500 51000 5 10 0 0 0 0 1
footprint=none
T 54500 50800 5 10 0 0 0 0 1
device=PWR
T 54300 50200 5 10 1 1 0 4 1
netname=3.3V
}
N 45000 40500 45000 40800 4
C 40500 49000 1 0 0 connector-usb.sym
{
T 40500 50400 5 10 1 1 0 0 1
refdes=J?
T 39400 49800 5 10 0 0 0 0 1
device=USBCONNECTOR
T 39400 50400 5 10 0 0 0 0 1
footprint=ToBeDetermined
}
C 50300 48500 1 0 0 tps79333.sym
{
T 50595 50095 5 10 1 1 0 1 1
refdes=U?
}
C 43500 41600 1 0 0 max3232.sym
{
T 43900 45200 5 10 1 1 0 0 1
refdes=U?
}
N 46500 43500 47200 43500 4
{
T 47300 43500 5 8 1 1 0 1 1
netname=TX
}
N 48300 42200 48300 42000 4
C 48100 42000 1 270 0 capacitor-1.sym
{
T 48800 41800 5 10 0 0 270 0 1
device=CAPACITOR
T 48100 41400 5 10 1 1 90 8 1
refdes=C?
T 49000 41800 5 10 0 0 270 0 1
symversion=0.1
T 48200 41700 5 10 1 1 90 0 1
value=0.1uF
T 48100 42000 5 10 0 0 90 0 1
footprint=0603
}
C 48200 40600 1 0 0 gnd-1.sym
N 48300 41100 48300 40900 4
C 48100 42200 1 0 0 generic-supply-1.sym
{
T 48300 42450 5 10 0 1 0 3 1
net=3V3:1
T 48500 43300 5 10 0 0 0 0 1
footprint=none
T 48500 43100 5 10 0 0 0 0 1
device=PWR
T 48300 42500 5 10 1 1 0 4 1
netname=3.3V
}
C 52400 42700 1 0 0 connector6-1.sym
{
T 54200 44500 5 10 0 0 0 0 1
device=CONNECTOR_6
T 52600 44700 5 10 1 1 180 8 1
refdes=J?
T 52400 42700 5 10 0 0 90 0 1
footprint=HEADER6_2
}
N 53200 44400 53500 44400 4
N 53200 44100 53500 44100 4
N 53200 43500 53900 43500 4
{
T 54000 43500 5 8 1 1 0 1 1
netname=sclk
}
N 53200 43200 53900 43200 4
{
T 54000 43200 5 8 1 1 0 1 1
netname=miso
}
N 53900 42900 53200 42900 4
{
T 54000 42900 5 8 1 1 0 1 1
netname=mosi
}
N 53200 43800 53900 43800 4
{
T 54000 43800 5 8 1 1 0 1 1
netname=reset
}
N 53500 44400 53500 44700 4
N 53500 42300 53500 44100 4
C 53600 42000 1 0 1 gnd-1.sym
C 53700 44700 1 0 1 3.3V-plus-1.sym
