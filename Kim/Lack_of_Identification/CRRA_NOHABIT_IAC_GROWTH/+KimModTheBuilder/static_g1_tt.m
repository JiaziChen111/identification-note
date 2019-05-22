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

assert(length(T) >= 51);

T = KimModTheBuilder.static_resid_tt(T, y, x, params);

T(20) = (y(2)/(1-T(1)))^(1+params(8));
T(21) = (y(3)/T(1))^(1+params(8));
T(22) = (-(y(3)))/((y(1))*(y(1)));
T(23) = (-T(22));
T(24) = (-(y(2)*T(23)))/((1-T(1))*(1-T(1)));
T(25) = getPowerDeriv(y(2)/(1-T(1)),1+params(8),1);
T(26) = (-(y(3)*T(22)))/(T(1)*T(1));
T(27) = getPowerDeriv(y(3)/T(1),1+params(8),1);
T(28) = T(20)*T(23)+(1-T(1))*T(24)*T(25)+T(21)*T(22)+T(1)*T(26)*T(27);
T(29) = getPowerDeriv((1-T(1))*T(20)+T(1)*T(21),1/(1+params(8)),1);
T(30) = T(28)*T(29);
T(31) = (1-T(1))*T(2)*(1-T(1))*T(2);
T(32) = (-(y(2)*(T(2)*T(23)+(1-T(1))*T(30))))/T(31);
T(33) = getPowerDeriv(y(2)/((1-T(1))*T(2)),params(8),1);
T(34) = (-(y(3)*(T(2)*T(22)+T(1)*T(30))))/(T(1)*T(2)*T(1)*T(2));
T(35) = getPowerDeriv(y(3)/(T(1)*T(2)),params(8),1);
T(36) = 1/(1-T(1));
T(37) = (1-T(1))*T(25)*T(36);
T(38) = T(29)*T(37);
T(39) = ((1-T(1))*T(2)-y(2)*(1-T(1))*T(38))/T(31);
T(40) = (-(y(3)*T(1)*T(38)))/(T(1)*T(2)*T(1)*T(2));
T(41) = 1/(y(1));
T(42) = (-(y(2)*(-T(41))))/((1-T(1))*(1-T(1)));
T(43) = T(25)*T(42);
T(44) = (T(1)-y(3)*T(41))/(T(1)*T(1));
T(45) = T(27)*T(44);
T(46) = T(20)*(-T(41))+(1-T(1))*T(43)+T(21)*T(41)+T(1)*T(45);
T(47) = T(29)*T(46);
T(48) = (-(y(2)*(T(2)*(-T(41))+(1-T(1))*T(47))))/T(31);
T(49) = (T(1)*T(2)-y(3)*(T(2)*T(41)+T(1)*T(47)))/(T(1)*T(2)*T(1)*T(2));
T(50) = getPowerDeriv(T(7),params(1),1);
T(51) = params(1)*getPowerDeriv(T(7),params(1)-1,1);

end
