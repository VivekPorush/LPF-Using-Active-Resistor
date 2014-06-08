***************************************************************************************
*****************************Low Pass Filter Using*************************************
******************************MOS Active Resistor**************************************
***************************************************************************************
***** Porush, Vivek                               e-mail: vporus2@uic.edu**************
*****                      vivek.91.porush@gmail.com                            *******
***Low Pass Filter using MOS Active Resistor                                        ***
***    Copyright (C) <2014>  <Porush Vivek>                                         ***
***    This program is free software: you can redistribute it and/or modify         ***
***    it under the terms of the GNU Affero General Public License as published by  ***
***    the Free Software Foundation, either version 3 of the License, or            ***
***    (at your option) any later version.                                          ***
***                                                                                 ***
***    This program is distributed in the hope that it will be useful,              ***
***    but WITHOUT ANY WARRANTY; without even the implied warranty of               ***
***    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                ***
***    GNU Affero General Public License for more details.                          ***
***                                                                                 ***
***    You should have received a copy of the GNU Affero General Public License     ***
***    along with this program.  If not, see <http://www.gnu.org/licenses/>.        ***
***                                                                                 ***
*My contact information can be found on <https://sites.google.com/site/vivekporush91/>*
*************************************************************************************
*************This Project is listed under Analog & Mixed Signal VLSI*****************
*************************************************************************************
***Circuit parameters are given as :-->                                           ***
***                                                                               ***
***                                                                               ***
***-->1. M1 = Model    NMOS                                                       ***
***-->2. C = 12.5 pF                                                              ***
***-->3. ro = 13.0 Mega ohm \\ Simulated Resistance MOS \\ \\ Active\\            ***
***-->4. Fc = 1.00 KHz \\ Filter Cutoff Frequency \\ \\ Active\\                  ***
*************************************************************************************
*************************************************************************************
***Output results :-->                                                            ***
***Obtain requested Low Pass filter and verify results.                           ***
***The cut-off frequency must be within +/- 5% of the given value                 ***
*************************************************************************************
*************************************SPICE-Code**************************************
** Input Voltage AC (Vin=500mV)
Vin 2 0 AC 500mV
**MOS (NMOS) as a resistor with W/L=20
M1 1 1 2 2 NMOS L=2.5u W=50u
**Load Capacitor
CL 1 0 12.5pF
**MOS Model (VTO= Threshold Voltage, KP=u.cox LAMBDA=1/Va)
.MODEL NMOS nmos (VTO= 0.7V KP=25u LAMBDA=0.005)
** Set output conditions for simulation analysis
.OP
** Set Analysis required (AC) from 10Hz to 10^6 Hz
.AC DEC 20 1HZ 1000000HZ
** Set print variables (These variables will be stored in the output log)
.PRINT V(1,0)
** Terminate all sequences and end simulation
.END
