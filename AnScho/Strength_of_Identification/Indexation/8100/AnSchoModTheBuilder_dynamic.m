function [residual, g1, g2, g3] = AnSchoModTheBuilder_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [nperiods by M_.exo_nbr] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   steady_state  [M_.endo_nbr by 1] double       vector of steady state values
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations.
%                                          Dynare may prepend auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(9, 1);
GAM__ = 1+params(3)/100;
BET__ = 1/(1+params(1)/400);
PSTAR__ = 1+params(2)/400;
G__ = 1/params(15);
ystar__ = (1-params(5))^(1/params(4))*y(13);
RSTAR__ = (steady_state(6))*(y(12)/PSTAR__)^params(6)*(y(9)/ystar__)^params(7);
gammap__ = y(12)^params(16)*(steady_state(7))^(1-params(16));
gammapback__ = (steady_state(7))^(1-params(16))*y(3)^params(16);
zeta__ = 1;
zetap__ = 1;
du_dc__ = y(10)^(-params(4));
dup_dcp__ = y(16)^(-params(4));
lam__ = du_dc__*zeta__;
lamp__ = dup_dcp__*zetap__;
T98 = lamp__/lam__*y(15)/y(9);
T109 = params(14)/2;
T111 = T109*(y(12)-gammapback__)^2;
T118 = RSTAR__^(1-params(8));
T120 = y(2)^params(8);
T126 = exp(params(11)/100*x(it_, 1));
T158 = y(9)/(steady_state(4));
T161 = y(1)/(steady_state(4));
T165 = y(14)/(steady_state(9));
T172 = y(12)/(steady_state(7));
T182 = y(11)/(steady_state(6));
lhs =lam__;
rhs =y(11)*BET__*lamp__/y(17)/(GAM__*y(18));
residual(1)= lhs-rhs;
lhs =1;
rhs =1/params(5)*(1-lam__^(-1))+y(12)*params(14)*(y(12)-gammapback__)-params(14)/(2*params(5))*(y(12)-gammap__)^2+BET__*params(14)*y(17)*T98*(y(17)-gammap__);
residual(2)= lhs-rhs;
lhs =y(9);
rhs =y(10)+y(9)*(1-1/y(13))+y(9)*T111;
residual(3)= lhs-rhs;
lhs =y(11);
rhs =T118*T120*T126;
residual(4)= lhs-rhs;
lhs =log(y(13));
rhs =(1-params(9))*log(G__)+params(9)*log(y(4))+params(12)/100*x(it_, 2);
residual(5)= lhs-rhs;
lhs =log(y(14));
rhs =params(10)*log(y(5))+params(13)/100*x(it_, 3);
residual(6)= lhs-rhs;
lhs =y(6);
rhs =params(3)+100*(log(T158)-log(T161)+log(T165));
residual(7)= lhs-rhs;
lhs =y(7);
rhs =params(2)+400*log(T172);
residual(8)= lhs-rhs;
lhs =y(8);
rhs =params(1)+params(2)+params(3)*4+400*log(T182);
residual(9)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(9, 21);

  %
  % Jacobian matrix
  %

T26 = (1-params(5))^(1/params(4));
T38 = (steady_state(6))*(y(12)/PSTAR__)^params(6);
T43 = (y(9)/ystar__)^params(7);
T49 = (steady_state(7))^(1-params(16));
T187 = 1/(steady_state(4));
T194 = (-(lamp__/lam__*y(15)))/(y(9)*y(9));
T202 = getPowerDeriv(y(9)/ystar__,params(7),1);
T205 = getPowerDeriv(RSTAR__,1-params(8),1);
T213 = lamp__/lam__/y(9);
T219 = zeta__*getPowerDeriv(y(10),(-params(4)),1);
T220 = getPowerDeriv(lam__,(-1),1);
T229 = y(15)*(-(lamp__*T219))/(lam__*lam__)/y(9);
T236 = zetap__*getPowerDeriv(y(16),(-params(4)),1);
T244 = y(15)*T236/lam__/y(9);
T249 = getPowerDeriv(y(2),params(8),1);
T262 = (-(T49*getPowerDeriv(y(3),params(16),1)));
T274 = T49*getPowerDeriv(y(12),params(16),1);
T292 = (steady_state(6))*1/PSTAR__*getPowerDeriv(y(12)/PSTAR__,params(6),1);
T293 = T43*T292;
T322 = (-(T26*y(9)))/(ystar__*ystar__);
T324 = T38*T202*T322;
T342 = params(11)/100*T126;
  g1(1,10)=T219;
  g1(1,16)=(-(y(11)*BET__*T236/y(17)/(GAM__*y(18))));
  g1(1,11)=(-(BET__*lamp__/y(17)/(GAM__*y(18))));
  g1(1,17)=(-((-(y(11)*BET__*lamp__))/(y(17)*y(17))/(GAM__*y(18))));
  g1(1,18)=(-((-(y(11)*BET__*lamp__/y(17)*GAM__))/(GAM__*y(18)*GAM__*y(18))));
  g1(2,9)=(-(BET__*params(14)*y(17)*(y(17)-gammap__)*T194));
  g1(2,15)=(-(BET__*params(14)*y(17)*(y(17)-gammap__)*T213));
  g1(2,10)=(-(1/params(5)*(-(T219*T220))+BET__*params(14)*y(17)*(y(17)-gammap__)*T229));
  g1(2,16)=(-(BET__*params(14)*y(17)*(y(17)-gammap__)*T244));
  g1(2,3)=(-(y(12)*params(14)*T262));
  g1(2,12)=(-(params(14)*(y(12)-gammapback__)+y(12)*params(14)-params(14)/(2*params(5))*(1-T274)*2*(y(12)-gammap__)+BET__*params(14)*y(17)*T98*(-T274)));
  g1(2,17)=(-(BET__*params(14)*(T98*(y(17)-gammap__)+y(17)*T98)));
  g1(3,9)=1-(1-1/y(13)+T111);
  g1(3,10)=(-1);
  g1(3,3)=(-(y(9)*T109*T262*2*(y(12)-gammapback__)));
  g1(3,12)=(-(y(9)*T109*2*(y(12)-gammapback__)));
  g1(3,13)=(-(y(9)*(-((-1)/(y(13)*y(13))))));
  g1(4,9)=(-(T126*T120*T38*1/ystar__*T202*T205));
  g1(4,2)=(-(T126*T118*T249));
  g1(4,11)=1;
  g1(4,12)=(-(T126*T120*T205*T293));
  g1(4,13)=(-(T126*T120*T205*T324));
  g1(4,19)=(-(T118*T120*T342));
  g1(5,4)=(-(params(9)*1/y(4)));
  g1(5,13)=1/y(13);
  g1(5,20)=(-(params(12)/100));
  g1(6,5)=(-(params(10)*1/y(5)));
  g1(6,14)=1/y(14);
  g1(6,21)=(-(params(13)/100));
  g1(7,6)=1;
  g1(7,1)=(-(100*(-(T187/T161))));
  g1(7,9)=(-(100*T187/T158));
  g1(7,14)=(-(100*1/(steady_state(9))/T165));
  g1(8,7)=1;
  g1(8,12)=(-(400*1/(steady_state(7))/T172));
  g1(9,8)=1;
  g1(9,11)=(-(400*1/(steady_state(6))/T182));

if nargout >= 3,
  %
  % Hessian matrix
  %

  v2 = zeros(99,3);
T348 = zeta__*getPowerDeriv(y(10),(-params(4)),2);
T350 = zetap__*getPowerDeriv(y(16),(-params(4)),2);
T471 = (-(T49*getPowerDeriv(y(3),params(16),2)));
T495 = (-(T49*getPowerDeriv(y(12),params(16),2)));
T550 = getPowerDeriv(y(9)/ystar__,params(7),2);
T551 = 1/ystar__*T550;
T554 = getPowerDeriv(RSTAR__,1-params(8),2);
T555 = T38*1/ystar__*T202*T554;
  v2(1,1)=1;
  v2(1,2)=199;
  v2(1,3)=T348;
  v2(2,1)=1;
  v2(2,2)=331;
  v2(2,3)=(-(y(11)*BET__*T350/y(17)/(GAM__*y(18))));
  v2(3,1)=1;
  v2(3,2)=226;
  v2(3,3)=(-(BET__*T236/y(17)/(GAM__*y(18))));
  v2(4,1)=1;
  v2(4,2)=326;
  v2(4,3)=  v2(3,3);
  v2(5,1)=1;
  v2(5,2)=352;
  v2(5,3)=(-((-(y(11)*BET__*T236))/(y(17)*y(17))/(GAM__*y(18))));
  v2(6,1)=1;
  v2(6,2)=332;
  v2(6,3)=  v2(5,3);
  v2(7,1)=1;
  v2(7,2)=347;
  v2(7,3)=(-((-(BET__*lamp__))/(y(17)*y(17))/(GAM__*y(18))));
  v2(8,1)=1;
  v2(8,2)=227;
  v2(8,3)=  v2(7,3);
  v2(9,1)=1;
  v2(9,2)=353;
  v2(9,3)=(-((-((-(y(11)*BET__*lamp__))*(y(17)+y(17))))/(y(17)*y(17)*y(17)*y(17))/(GAM__*y(18))));
  v2(10,1)=1;
  v2(10,2)=373;
  v2(10,3)=(-((-(GAM__*y(11)*BET__*T236/y(17)))/(GAM__*y(18)*GAM__*y(18))));
  v2(11,1)=1;
  v2(11,2)=333;
  v2(11,3)=  v2(10,3);
  v2(12,1)=1;
  v2(12,2)=368;
  v2(12,3)=(-((-(GAM__*BET__*lamp__/y(17)))/(GAM__*y(18)*GAM__*y(18))));
  v2(13,1)=1;
  v2(13,2)=228;
  v2(13,3)=  v2(12,3);
  v2(14,1)=1;
  v2(14,2)=374;
  v2(14,3)=(-((-(GAM__*(-(y(11)*BET__*lamp__))/(y(17)*y(17))))/(GAM__*y(18)*GAM__*y(18))));
  v2(15,1)=1;
  v2(15,2)=354;
  v2(15,3)=  v2(14,3);
  v2(16,1)=1;
  v2(16,2)=375;
  v2(16,3)=(-((-((-(y(11)*BET__*lamp__/y(17)*GAM__))*(GAM__*GAM__*y(18)+GAM__*GAM__*y(18))))/(GAM__*y(18)*GAM__*y(18)*GAM__*y(18)*GAM__*y(18))));
  v2(17,1)=2;
  v2(17,2)=177;
  v2(17,3)=(-(BET__*params(14)*y(17)*(y(17)-gammap__)*(-((-(lamp__/lam__*y(15)))*(y(9)+y(9))))/(y(9)*y(9)*y(9)*y(9))));
  v2(18,1)=2;
  v2(18,2)=303;
  v2(18,3)=(-(BET__*params(14)*y(17)*(y(17)-gammap__)*(-(lamp__/lam__))/(y(9)*y(9))));
  v2(19,1)=2;
  v2(19,2)=183;
  v2(19,3)=  v2(18,3);
  v2(20,1)=2;
  v2(20,2)=198;
  v2(20,3)=(-(BET__*params(14)*y(17)*(y(17)-gammap__)*(-(y(15)*(-(lamp__*T219))/(lam__*lam__)))/(y(9)*y(9))));
  v2(21,1)=2;
  v2(21,2)=178;
  v2(21,3)=  v2(20,3);
  v2(22,1)=2;
  v2(22,2)=204;
  v2(22,3)=(-(BET__*params(14)*y(17)*(y(17)-gammap__)*(-(lamp__*T219))/(lam__*lam__)/y(9)));
  v2(23,1)=2;
  v2(23,2)=304;
  v2(23,3)=  v2(22,3);
  v2(24,1)=2;
  v2(24,2)=199;
  v2(24,3)=(-(1/params(5)*(-(T220*T348+T219*T219*getPowerDeriv(lam__,(-1),2)))+BET__*params(14)*y(17)*(y(17)-gammap__)*y(15)*(lam__*lam__*(-(lamp__*T348))-(-(lamp__*T219))*(lam__*T219+lam__*T219))/(lam__*lam__*lam__*lam__)/y(9)));
  v2(25,1)=2;
  v2(25,2)=324;
  v2(25,3)=(-(BET__*params(14)*y(17)*(y(17)-gammap__)*(-(y(15)*T236/lam__))/(y(9)*y(9))));
  v2(26,1)=2;
  v2(26,2)=184;
  v2(26,3)=  v2(25,3);
  v2(27,1)=2;
  v2(27,2)=330;
  v2(27,3)=(-(BET__*params(14)*y(17)*(y(17)-gammap__)*T236/lam__/y(9)));
  v2(28,1)=2;
  v2(28,2)=310;
  v2(28,3)=  v2(27,3);
  v2(29,1)=2;
  v2(29,2)=325;
  v2(29,3)=(-(BET__*params(14)*y(17)*(y(17)-gammap__)*y(15)*(-(T219*T236))/(lam__*lam__)/y(9)));
  v2(30,1)=2;
  v2(30,2)=205;
  v2(30,3)=  v2(29,3);
  v2(31,1)=2;
  v2(31,2)=331;
  v2(31,3)=(-(BET__*params(14)*y(17)*(y(17)-gammap__)*y(15)*T350/lam__/y(9)));
  v2(32,1)=2;
  v2(32,2)=45;
  v2(32,3)=(-(y(12)*params(14)*T471));
  v2(33,1)=2;
  v2(33,2)=240;
  v2(33,3)=(-(BET__*params(14)*y(17)*T194*(-T274)));
  v2(34,1)=2;
  v2(34,2)=180;
  v2(34,3)=  v2(33,3);
  v2(35,1)=2;
  v2(35,2)=246;
  v2(35,3)=(-(BET__*params(14)*y(17)*T213*(-T274)));
  v2(36,1)=2;
  v2(36,2)=306;
  v2(36,3)=  v2(35,3);
  v2(37,1)=2;
  v2(37,2)=241;
  v2(37,3)=(-(BET__*params(14)*y(17)*T229*(-T274)));
  v2(38,1)=2;
  v2(38,2)=201;
  v2(38,3)=  v2(37,3);
  v2(39,1)=2;
  v2(39,2)=247;
  v2(39,3)=(-(BET__*params(14)*y(17)*T244*(-T274)));
  v2(40,1)=2;
  v2(40,2)=327;
  v2(40,3)=  v2(39,3);
  v2(41,1)=2;
  v2(41,2)=234;
  v2(41,3)=(-(params(14)*T262));
  v2(42,1)=2;
  v2(42,2)=54;
  v2(42,3)=  v2(41,3);
  v2(43,1)=2;
  v2(43,2)=243;
  v2(43,3)=(-(params(14)+params(14)-params(14)/(2*params(5))*(2*(y(12)-gammap__)*T495+(1-T274)*2*(1-T274))+BET__*params(14)*y(17)*T98*T495));
  v2(44,1)=2;
  v2(44,2)=345;
  v2(44,3)=(-(BET__*params(14)*((y(17)-gammap__)*T194+y(17)*T194)));
  v2(45,1)=2;
  v2(45,2)=185;
  v2(45,3)=  v2(44,3);
  v2(46,1)=2;
  v2(46,2)=351;
  v2(46,3)=(-(BET__*params(14)*((y(17)-gammap__)*T213+y(17)*T213)));
  v2(47,1)=2;
  v2(47,2)=311;
  v2(47,3)=  v2(46,3);
  v2(48,1)=2;
  v2(48,2)=346;
  v2(48,3)=(-(BET__*params(14)*((y(17)-gammap__)*T229+y(17)*T229)));
  v2(49,1)=2;
  v2(49,2)=206;
  v2(49,3)=  v2(48,3);
  v2(50,1)=2;
  v2(50,2)=352;
  v2(50,3)=(-(BET__*params(14)*((y(17)-gammap__)*T244+y(17)*T244)));
  v2(51,1)=2;
  v2(51,2)=332;
  v2(51,3)=  v2(50,3);
  v2(52,1)=2;
  v2(52,2)=348;
  v2(52,3)=(-(BET__*params(14)*T98*(-T274)));
  v2(53,1)=2;
  v2(53,2)=248;
  v2(53,3)=  v2(52,3);
  v2(54,1)=2;
  v2(54,2)=353;
  v2(54,3)=(-(BET__*params(14)*(T98+T98)));
  v2(55,1)=3;
  v2(55,2)=51;
  v2(55,3)=(-(T109*T262*2*(y(12)-gammapback__)));
  v2(56,1)=3;
  v2(56,2)=171;
  v2(56,3)=  v2(55,3);
  v2(57,1)=3;
  v2(57,2)=45;
  v2(57,3)=(-(y(9)*T109*(2*(y(12)-gammapback__)*T471+T262*2*T262)));
  v2(58,1)=3;
  v2(58,2)=240;
  v2(58,3)=(-(T109*2*(y(12)-gammapback__)));
  v2(59,1)=3;
  v2(59,2)=180;
  v2(59,3)=  v2(58,3);
  v2(60,1)=3;
  v2(60,2)=234;
  v2(60,3)=(-(y(9)*T109*2*T262));
  v2(61,1)=3;
  v2(61,2)=54;
  v2(61,3)=  v2(60,3);
  v2(62,1)=3;
  v2(62,2)=243;
  v2(62,3)=(-(y(9)*2*T109));
  v2(63,1)=3;
  v2(63,2)=261;
  v2(63,3)=(-1)/(y(13)*y(13));
  v2(64,1)=3;
  v2(64,2)=181;
  v2(64,3)=  v2(63,3);
  v2(65,1)=3;
  v2(65,2)=265;
  v2(65,3)=(-(y(9)*(-((y(13)+y(13))/(y(13)*y(13)*y(13)*y(13))))));
  v2(66,1)=4;
  v2(66,2)=177;
  v2(66,3)=(-(T126*T120*(T205*T38*1/ystar__*T551+T38*1/ystar__*T202*T555)));
  v2(67,1)=4;
  v2(67,2)=30;
  v2(67,3)=(-(T126*T38*1/ystar__*T202*T205*T249));
  v2(68,1)=4;
  v2(68,2)=170;
  v2(68,3)=  v2(67,3);
  v2(69,1)=4;
  v2(69,2)=23;
  v2(69,3)=(-(T126*T118*getPowerDeriv(y(2),params(8),2)));
  v2(70,1)=4;
  v2(70,2)=240;
  v2(70,3)=(-(T126*T120*(T293*T555+T205*1/ystar__*T202*T292)));
  v2(71,1)=4;
  v2(71,2)=180;
  v2(71,3)=  v2(70,3);
  v2(72,1)=4;
  v2(72,2)=233;
  v2(72,3)=(-(T126*T249*T205*T293));
  v2(73,1)=4;
  v2(73,2)=33;
  v2(73,3)=  v2(72,3);
  v2(74,1)=4;
  v2(74,2)=243;
  v2(74,3)=(-(T126*T120*(T293*T293*T554+T205*T43*(steady_state(6))*1/PSTAR__*1/PSTAR__*getPowerDeriv(y(12)/PSTAR__,params(6),2))));
  v2(75,1)=4;
  v2(75,2)=261;
  v2(75,3)=(-(T126*T120*(T324*T555+T205*T38*(T322*T551+T202*(-T26)/(ystar__*ystar__)))));
  v2(76,1)=4;
  v2(76,2)=181;
  v2(76,3)=  v2(75,3);
  v2(77,1)=4;
  v2(77,2)=254;
  v2(77,3)=(-(T126*T249*T205*T324));
  v2(78,1)=4;
  v2(78,2)=34;
  v2(78,3)=  v2(77,3);
  v2(79,1)=4;
  v2(79,2)=264;
  v2(79,3)=(-(T126*T120*(T324*T293*T554+T205*T292*T202*T322)));
  v2(80,1)=4;
  v2(80,2)=244;
  v2(80,3)=  v2(79,3);
  v2(81,1)=4;
  v2(81,2)=265;
  v2(81,3)=(-(T126*T120*(T324*T324*T554+T205*T38*(T322*T322*T550+T202*(-((-(T26*y(9)))*(T26*ystar__+T26*ystar__)))/(ystar__*ystar__*ystar__*ystar__)))));
  v2(82,1)=4;
  v2(82,2)=387;
  v2(82,3)=(-(T120*T38*1/ystar__*T202*T205*T342));
  v2(83,1)=4;
  v2(83,2)=187;
  v2(83,3)=  v2(82,3);
  v2(84,1)=4;
  v2(84,2)=380;
  v2(84,3)=(-(T118*T249*T342));
  v2(85,1)=4;
  v2(85,2)=40;
  v2(85,3)=  v2(84,3);
  v2(86,1)=4;
  v2(86,2)=390;
  v2(86,3)=(-(T120*T205*T293*T342));
  v2(87,1)=4;
  v2(87,2)=250;
  v2(87,3)=  v2(86,3);
  v2(88,1)=4;
  v2(88,2)=391;
  v2(88,3)=(-(T120*T205*T324*T342));
  v2(89,1)=4;
  v2(89,2)=271;
  v2(89,3)=  v2(88,3);
  v2(90,1)=4;
  v2(90,2)=397;
  v2(90,3)=(-(T118*T120*params(11)/100*T342));
  v2(91,1)=5;
  v2(91,2)=67;
  v2(91,3)=(-(params(9)*(-1)/(y(4)*y(4))));
  v2(92,1)=5;
  v2(92,2)=265;
  v2(92,3)=(-1)/(y(13)*y(13));
  v2(93,1)=6;
  v2(93,2)=89;
  v2(93,3)=(-(params(10)*(-1)/(y(5)*y(5))));
  v2(94,1)=6;
  v2(94,2)=287;
  v2(94,3)=(-1)/(y(14)*y(14));
  v2(95,1)=7;
  v2(95,2)=1;
  v2(95,3)=(-(100*(-((-(T187*T187))/(T161*T161)))));
  v2(96,1)=7;
  v2(96,2)=177;
  v2(96,3)=(-(100*(-(T187*T187))/(T158*T158)));
  v2(97,1)=7;
  v2(97,2)=287;
  v2(97,3)=(-(100*(-(1/(steady_state(9))*1/(steady_state(9))))/(T165*T165)));
  v2(98,1)=8;
  v2(98,2)=243;
  v2(98,3)=(-(400*(-(1/(steady_state(7))*1/(steady_state(7))))/(T172*T172)));
  v2(99,1)=9;
  v2(99,2)=221;
  v2(99,3)=(-(400*(-(1/(steady_state(6))*1/(steady_state(6))))/(T182*T182)));
  g2 = sparse(v2(:,1),v2(:,2),v2(:,3),9,441);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],9,9261);
end
end
end
end
