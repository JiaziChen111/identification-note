function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 64);

T = KimModTheBuilder.static_resid_tt(T, y, x, params);

T(24) = (y(2)/(1-T(1)))^(1+params(8));
T(25) = (y(3)/T(1))^(1+params(8));
T(26) = (y(10)/T(8))^params(11);
T(27) = (y(1)/(y(1)))^params(12);
T(28) = (-(y(3)))/((y(1))*(y(1)));
T(29) = (-T(28));
T(30) = (-(y(2)*T(29)))/((1-T(1))*(1-T(1)));
T(31) = getPowerDeriv(y(2)/(1-T(1)),1+params(8),1);
T(32) = (-(y(3)*T(28)))/(T(1)*T(1));
T(33) = getPowerDeriv(y(3)/T(1),1+params(8),1);
T(34) = T(24)*T(29)+(1-T(1))*T(30)*T(31)+T(25)*T(28)+T(1)*T(32)*T(33);
T(35) = getPowerDeriv((1-T(1))*T(24)+T(1)*T(25),1/(1+params(8)),1);
T(36) = T(34)*T(35);
T(37) = (1-T(1))*T(2)*(1-T(1))*T(2);
T(38) = (-(y(2)*(T(2)*T(29)+(1-T(1))*T(36))))/T(37);
T(39) = getPowerDeriv(y(2)/((1-T(1))*T(2)),params(8),1);
T(40) = (-(y(3)*(T(2)*T(28)+T(1)*T(36))))/(T(1)*T(2)*T(1)*T(2));
T(41) = getPowerDeriv(y(3)/(T(1)*T(2)),params(8),1);
T(42) = getPowerDeriv(y(1)/(y(1)),params(12),1);
T(43) = ((y(1))-y(1))/((y(1))*(y(1)))*T(42);
T(44) = (y(9))*T(26)*T(43);
T(45) = getPowerDeriv(T(21),1-params(13),1);
T(46) = 1/(1-T(1));
T(47) = (1-T(1))*T(31)*T(46);
T(48) = T(35)*T(47);
T(49) = ((1-T(1))*T(2)-y(2)*(1-T(1))*T(48))/T(37);
T(50) = (-(y(3)*T(1)*T(48)))/(T(1)*T(2)*T(1)*T(2));
T(51) = 1/(y(1));
T(52) = (-(y(2)*(-T(51))))/((1-T(1))*(1-T(1)));
T(53) = T(31)*T(52);
T(54) = (T(1)-y(3)*T(51))/(T(1)*T(1));
T(55) = T(33)*T(54);
T(56) = T(24)*(-T(51))+(1-T(1))*T(53)+T(25)*T(51)+T(1)*T(55);
T(57) = T(35)*T(56);
T(58) = (-(y(2)*(T(2)*(-T(51))+(1-T(1))*T(57))))/T(37);
T(59) = (T(1)*T(2)-y(3)*(T(2)*T(51)+T(1)*T(57)))/(T(1)*T(2)*T(1)*T(2));
T(60) = getPowerDeriv(T(7),params(1),1);
T(61) = params(1)*getPowerDeriv(T(7),params(1)-1,1);
T(62) = getPowerDeriv(y(9),params(13),1);
T(63) = 1/T(8)*getPowerDeriv(y(10)/T(8),params(11),1);
T(64) = (y(9))*T(63);

end
