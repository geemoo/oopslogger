v 20080127 1
C 40000 40000 0 0 0 title-B.sym
C 51000 41600 1 0 0 gnd-1.sym
N 51100 42100 51100 41900 4
C 47400 42400 1 0 0 crystal-1.sym
{
T 47600 42900 5 10 0 0 0 0 1
device=CRYSTAL
T 47600 42700 5 10 1 1 0 0 1
refdes=U5
T 47600 43100 5 10 0 0 0 0 1
symversion=0.1
T 47400 42400 5 10 0 0 0 0 1
footprint=SMT_CRYSTAL_80x45
T 47600 42200 5 10 1 1 0 0 1
value=8M
}
N 48900 42700 48100 42700 4
N 48100 42200 48100 42700 4
N 48900 43000 47400 43000 4
N 47400 42200 47400 43000 4
C 47600 41300 1 90 0 capacitor-1.sym
{
T 46900 41500 5 10 0 0 90 0 1
device=CAPACITOR
T 47300 41400 5 10 1 1 90 0 1
refdes=C9
T 46700 41500 5 10 0 0 90 0 1
symversion=0.1
T 47300 41900 5 10 1 1 90 0 1
value=8p
T 47600 41300 5 10 0 0 0 0 1
footprint=0805
}
C 48300 41300 1 90 0 capacitor-1.sym
{
T 47600 41500 5 10 0 0 90 0 1
device=CAPACITOR
T 48000 41300 5 10 1 1 90 0 1
refdes=C10
T 47400 41500 5 10 0 0 90 0 1
symversion=0.1
T 48000 41900 5 10 1 1 90 0 1
value=8p
T 48300 41300 5 10 0 0 0 0 1
footprint=0805
}
N 47400 41300 47400 41100 4
N 48100 41100 48100 41300 4
N 47400 41100 48100 41100 4
N 47700 41100 47700 40800 4
C 47600 40500 1 0 0 gnd-1.sym
N 51000 49600 51800 49600 4
N 51800 49600 51800 49400 4
N 51000 49400 51000 49900 4
C 50800 49900 1 0 0 3.3V-plus-1.sym
C 48400 44600 1 0 0 3.3V-plus-1.sym
C 48500 43100 1 0 0 gnd-1.sym
C 48800 43500 1 90 0 capacitor-1.sym
{
T 48100 43700 5 10 0 0 90 0 1
device=CAPACITOR
T 48500 43500 5 10 1 1 90 0 1
refdes=C11
T 47900 43700 5 10 0 0 90 0 1
symversion=0.1
T 48500 44100 5 10 1 1 90 0 1
value=1u
T 48800 43500 5 10 0 0 0 0 1
footprint=0805
}
N 48900 46200 47700 46200 4
N 47700 46200 47700 46500 4
C 47500 46500 1 0 0 5V-plus-1.sym
C 47600 44900 1 0 0 gnd-1.sym
N 48600 43400 48600 43500 4
N 48900 45300 47700 45300 4
N 47700 45300 47700 45200 4
N 48900 45600 47900 45600 4
{
T 47800 45600 5 10 1 1 0 7 1
netname=dplus
}
N 48900 45900 47900 45900 4
{
T 47800 45900 5 10 1 1 0 7 1
netname=dminus
}
C 46200 48600 1 0 0 gnd-1.sym
C 53800 46400 1 0 0 resistor-1.sym
{
T 54100 46800 5 10 0 0 0 0 1
device=RESISTOR
T 53900 46600 5 10 1 1 0 6 1
refdes=R4
T 54500 46600 5 10 1 1 0 0 1
value=150
T 53800 46400 5 10 0 0 0 0 1
footprint=0805
}
C 53800 46100 1 0 0 resistor-1.sym
{
T 54100 46500 5 10 0 0 0 0 1
device=RESISTOR
T 53900 46300 5 10 1 1 0 6 1
refdes=R5
T 54500 46300 5 10 1 1 0 0 1
value=150
T 53800 46100 5 10 0 0 0 0 1
footprint=0805
}
C 55400 45900 1 90 1 led-2.sym
{
T 55100 45600 5 10 1 1 90 2 1
refdes=D2
T 54800 45800 5 10 0 0 270 2 1
device=LED
T 55400 45900 5 10 0 0 0 0 1
footprint=0603
T 55400 45900 5 10 0 0 0 0 1
value=LED
}
C 55000 45900 1 90 1 led-2.sym
{
T 54700 45600 5 10 1 1 90 2 1
refdes=D3
T 54400 45800 5 10 0 0 270 2 1
device=LED
T 54800 45400 5 10 0 0 0 0 1
footprint=0603
T 55000 45900 5 10 0 0 0 0 1
value=LED
}
N 54700 46200 54900 46200 4
C 45500 46000 1 90 0 resistor-1.sym
{
T 45100 46300 5 10 0 0 90 0 1
device=RESISTOR
T 45300 46100 5 10 1 1 90 6 1
refdes=R6
T 45300 46700 5 10 1 1 90 0 1
value=4.7k
T 45500 46000 5 10 0 0 0 0 1
footprint=0805
}
C 48900 42100 1 0 0 at90usb162.sym
{
T 49300 49200 5 10 1 1 0 0 1
refdes=U3
T 51400 44700 5 10 0 0 0 0 1
footprint=TQFP32_7
T 48900 42100 5 10 0 0 0 0 1
value=AT90USB162
}
N 48900 48700 46600 48700 4
N 46600 48700 46600 49200 4
N 47800 48400 47800 49200 4
N 46900 48100 46900 49200 4
N 47200 47800 47200 49200 4
N 46300 48900 46300 49200 4
N 45200 47800 48900 47800 4
N 48900 47500 45400 47500 4
C 41800 46800 1 0 0 at46f004.sym
{
T 42100 48900 5 10 1 1 0 0 1
refdes=U4
T 43300 47800 5 10 0 0 0 0 1
footprint=SO8W
T 41800 46800 5 10 0 0 0 0 1
value=AT46F004
}
N 44300 48400 48900 48400 4
N 45200 47800 45200 47600 4
N 45200 47600 44300 47600 4
N 45000 48100 48900 48100 4
N 45000 48100 45000 48000 4
N 45000 48000 44300 48000 4
N 45400 47200 44300 47200 4
N 41800 48400 41500 48400 4
N 41800 47600 41500 47600 4
N 41500 47600 41500 49200 4
N 41800 48000 41500 48000 4
N 41800 47200 41500 47200 4
N 41500 47200 41500 46500 4
C 41400 46200 1 0 0 gnd-1.sym
C 41300 49200 1 0 0 3.3V-plus-1.sym
N 45400 46900 45400 47500 4
N 45400 46000 45400 45800 4
N 45400 45800 46000 45800 4
N 46000 45800 46000 46000 4
C 45800 46000 1 0 0 3.3V-plus-1.sym
N 48900 44500 48600 44500 4
N 48600 44400 48600 44600 4
N 53400 43900 54000 43900 4
{
T 54100 43900 5 10 1 1 0 1 1
netname=RX2
}
N 53400 44200 54000 44200 4
{
T 54100 44200 5 10 1 1 0 1 1
netname=RX1
}
N 54900 46200 54900 45900 4
N 54700 46500 55300 46500 4
N 55300 46500 55300 45900 4
N 53400 46500 53800 46500 4
N 53800 46200 53400 46200 4
N 54900 45000 54900 44800 4
N 55300 44600 55300 45000 4
N 54900 44800 55300 44800 4
C 55200 44300 1 0 0 gnd-1.sym
T 50200 40800 9 16 1 0 0 0 1
OOPS logger
T 51800 40100 9 12 1 0 0 0 1
2
T 50600 40100 9 12 1 0 0 0 1
2
T 54000 40100 9 12 1 0 0 0 1
Jean Richard
C 46100 50900 1 270 0 connector6-1.sym
{
T 47900 49100 5 10 0 0 270 0 1
device=CONNECTOR_6
T 48100 50800 5 10 1 1 270 0 1
refdes=J4
T 46100 50900 5 10 0 0 0 0 1
footprint=HEADER6_2
}
N 47500 49200 47500 49000 4
N 47500 49000 48600 49000 4
N 48600 49000 48600 49600 4
N 48600 49600 51000 49600 4
