function mpc = case31
%CASE31jiangsu  Power flow data for 31 bus distribution system 
%   Please see CASEFORMAT for details on the case file format.
%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 10;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [ %% (Pd and Qd are specified in kW & kVAr here, converted to MW & MVAr below)
	1	3	0	0	0	0	1	1	0	10	1	1	1;
	2	1	500	300	0	0	1	1	0	10	1	1.1	0.9;
	3	1	200	90	0	0	1	1	0	10	1	1.1	0.9;
	4	1	250	160	0	0	1	1	0	10	1	1.1	0.9;
	5	1	180	90	0	0	1	1	0	10	1	1.1	0.9;
	6	1	180	60	0	0	1	1	0	10	1	1.1	0.9;
	7	1	120	60	0	0	1	1	0	10	1	1.1	0.9;
	8	1	240	80	0	0	1	1	0	10	1	1.1	0.9;
	9	1	240	80	0	0	1	1	0	10	1	1.1	0.9;
	10	1	240	80	0	0	1	1	0	10	1	1.1	0.9;
	11	1	240	120	0	0	1	1	0	10	1	1.1	0.9;
	12	1	240	120	0	0	1	1	0	10	1	1.1	0.9;
	13	1	160	90	0	0	1	1	0	10	1	1.1	0.9;
	14	1	160	100	0	0	1	1	0	10	1	1.1	0.9;
	15	1	400	75	0	0	1	1	0	10	1	1.1	0.9;
	16	1	320	100	0	0	1	1	0	10	1	1.1	0.9;
	17	1	300	125	0	0	1	1	0	10	1	1.1	0.9;
	18	1	300	100	0	0	1	1	0	10	1	1.1	0.9;
	19	1	250	100	0	0	1	1	0	10	1	1.1	0.9;
	20	1	300	100	0	0	1	1	0	10	1	1.1	0.9;
	21	1	800	320	0	0	1	1	0	10	1	1.1	0.9;
	22	1	0	0	0	0	1	1	0	10	1	1.1	0.9;
	23	1	80	40	0	0	1	1	0	10	1	1.1	0.9;
	24	1	200	100	0	0	1	1	0	10	1	1.1	0.9;
	25	1	240	100	0	0	1	1	0	10	1	1.1	0.9;
	26	1	60	25	0	0	1	1	0	10	1	1.1	0.9;
	27	1	100	40	0	0	1	1	0	10	1	1.1	0.9;
	28	1	500	160	0	0	1	1	0	10	1	1.1	0.9;
	29	1	1500  400	0	0	1	1	0	10	1	1.1	0.9;
	30	1	110	30	0	0	1	1	0	10	1	1.1	0.9;
	31	1	30	10	0	0	1	1	0	10	1	1.1	0.9;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [  %% (r and x specified in ohms here, converted to p.u. below)
	1	2	0.0121	0.0217	0	0	0	0	0	0	1	-360	360;
	2	3	0.0249	0.0447	0	0	0	0	0	0	1	-360	360;
	3	4	0.0355	0.0245	0	0	0	0	0	0	1	-360	360;
	4	5	0.0146	0.0101	0	0	0	0	0	0	1	-360	360;
	5	6	0.0108	0.0074	0	0	0	0	0	0	1	-360	360;
	6	7	0.0066	0.0046	0	0	0	0	0	0	1	-360	360;
	2	8	0.0166	0.0115	0	0	0	0	0	0	1	-360	360;
	8	9	0.0151	0.0104	0	0	0	0	0	0	1	-360	360;
	9	10	0.0151	0.0104	0	0	0	0	0	0	1	-360	360;
	2	11	0.0208	0.0143	0	0	0	0	0	0	1	-360	360;
	11	12	0.0174	0.0120	0	0	0	0	0	0	1	-360	360;
	2	13	0.0166	0.0115	0	0	0	0	0	0	1	-360	360;
	13	14	0.0113	0.0078	0	0	0	0	0	0	1	-360	360;
	2	15	0.0337	0.0207	0	0	0	0	0	0	1	-360	360;
	2	16	0.0324	0.0199	0	0	0	0	0	0	1	-360	360;
	3	17	0.0189	0.0131	0	0	0	0	0	0	1	-360	360;
	17	18	0.0154	0.0107	0	0	0	0	0	0	1	-360	360;
	3	19	0.0151	0.0104	0	0	0	0	0	0	1	-360	360;
	19	20	0.0174	0.0120	0	0	0	0	0	0	1	-360	360;
	3	21	0.0461	0.0322	0	0	0	0	0	0	1	-360	360;
	1	22	0.0178	0.0320	0	0	0	0	0	0	1	-360	360;
	22	23	0.0076	0.0168	0	0	0	0	0	0	1	-360	360;
	23	24	0.0072	0.0159	0	0	0	0	0	0	1	-360	360;
	24	25	0.0046	0.0101	0	0	0	0	0	0	1	-360	360;
	25	26	0.0258	0.0159	0	0	0	0	0	0	1	-360	360;
	26	27	0.0246	0.0151	0	0	0	0	0	0	1	-360	360;
	23	28	0.0214	0.0096	0	0	0	0	0	0	1	-360	360;
	23	29	0.0451	0.0387	0	0	0	0	0	0	1	-360	360;
	24	30	0.0031	0.0069	0	0	0	0	0	0	1	-360	360;
	24	31	0.0031	0.0069	0	0	0	0	0	0	1	-360	360;
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0	20	0;
];
%% convert branch impedances from Ohms to p.u.
% [PQ, PV, REF, NONE, BUS_I, BUS_TYPE, PD, QD, GS, BS, BUS_AREA, VM, ...
%     VA, BASE_KV, ZONE, VMAX, VMIN, LAM_P, LAM_Q, MU_VMAX, MU_VMIN] = idx_bus;
% [F_BUS, T_BUS, BR_R, BR_X, BR_B, RATE_A, RATE_B, RATE_C, ...
%     TAP, SHIFT, BR_STATUS, PF, QF, PT, QT, MU_SF, MU_ST, ...
%     ANGMIN, ANGMAX, MU_ANGMIN, MU_ANGMAX] = idx_brch;
% Vbase = mpc.bus(1, BASE_KV) * 1e3;      %% in Volts
% Sbase = mpc.baseMVA * 1e6;              %% in VA
% mpc.branch(:, [BR_R BR_X]) = mpc.branch(:, [BR_R BR_X]) / (Vbase^2 / Sbase);

%% convert loads from kW to MW
% mpc.bus(:, [PD, QD]) = mpc.bus(:, [PD, QD]) / 1e3;
