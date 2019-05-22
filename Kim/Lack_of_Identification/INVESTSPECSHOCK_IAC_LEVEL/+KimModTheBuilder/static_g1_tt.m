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

assert(length(T) >= 60);

T = KimModTheBuilder.static_resid_tt(T, y, x, params);

T(19) = (y(2)/(1-T(1)))^(1+params(8));
T(20) = (y(3)/T(1))^(1+params(8));
T(21) = (-(y(3)))/((y(1))*(y(1)));
T(22) = (-T(21));
T(23) = (-(y(2)*T(22)))/((1-T(1))*(1-T(1)));
T(24) = getPowerDeriv(y(2)/(1-T(1)),1+params(8),1);
T(25) = (-(y(3)*T(21)))/(T(1)*T(1));
T(26) = getPowerDeriv(y(3)/T(1),1+params(8),1);
T(27) = T(19)*T(22)+(1-T(1))*T(23)*T(24)+T(20)*T(21)+T(1)*T(25)*T(26);
T(28) = getPowerDeriv((1-T(1))*T(19)+T(1)*T(20),1/(1+params(8)),1);
T(29) = T(27)*T(28);
T(30) = (1-T(1))*T(2)*(1-T(1))*T(2);
T(31) = (-(y(2)*(T(2)*T(22)+(1-T(1))*T(29))))/T(30);
T(32) = getPowerDeriv(y(2)/((1-T(1))*T(2)),params(8),1);
T(33) = (-(y(3)*(T(2)*T(21)+T(1)*T(29))))/(T(1)*T(2)*T(1)*T(2));
T(34) = getPowerDeriv(y(3)/(T(1)*T(2)),params(8),1);
T(35) = 1/(1-T(1));
T(36) = (1-T(1))*T(24)*T(35);
T(37) = T(28)*T(36);
T(38) = ((1-T(1))*T(2)-y(2)*(1-T(1))*T(37))/T(30);
T(39) = (-(y(3)*T(1)*T(37)))/(T(1)*T(2)*T(1)*T(2));
T(40) = 1/(y(1));
T(41) = (-(y(2)*(-T(40))))/((1-T(1))*(1-T(1)));
T(42) = T(24)*T(41);
T(43) = (T(1)-y(3)*T(40))/(T(1)*T(1));
T(44) = T(26)*T(43);
T(45) = T(19)*(-T(40))+(1-T(1))*T(42)+T(20)*T(40)+T(1)*T(44);
T(46) = T(28)*T(45);
T(47) = (-(y(2)*(T(2)*(-T(40))+(1-T(1))*T(46))))/T(30);
T(48) = (T(1)*T(2)-y(3)*(T(2)*T(40)+T(1)*T(46)))/(T(1)*T(2)*T(1)*T(2));
T(49) = (-(y(5)*params(3)))/(y(3)*y(3));
T(50) = getPowerDeriv(y(5)*params(3)/y(3),params(9),1);
T(51) = y(9)/params(3);
T(52) = getPowerDeriv(y(9)*y(3)/params(3),1-params(9),1);
T(53) = params(3)*T(51)*T(52);
T(54) = getPowerDeriv(T(18),1/(1-params(9)),1);
T(55) = T(50)*params(3)/y(3);
T(56) = (1-params(3))*getPowerDeriv(y(5),1-params(9),1);
T(57) = getPowerDeriv(T(7),params(1),1);
T(58) = params(1)*getPowerDeriv(T(7),params(1)-1,1);
T(59) = getPowerDeriv(y(9),(-params(9)),1);
T(60) = y(6)*y(7)*T(59);

end
