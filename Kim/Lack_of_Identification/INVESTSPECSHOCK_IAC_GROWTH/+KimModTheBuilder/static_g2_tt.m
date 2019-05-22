function T = static_g2_tt(T, y, x, params)
% function T = static_g2_tt(T, y, x, params)
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

assert(length(T) >= 67);

T = KimModTheBuilder.static_g1_tt(T, y, x, params);

T(51) = (-((-(y(3)))*((y(1))+(y(1)))))/((y(1))*(y(1))*(y(1))*(y(1)));
T(52) = (-T(51));
T(53) = getPowerDeriv(y(2)/(1-T(1)),1+params(8),2);
T(54) = getPowerDeriv(y(3)/T(1),1+params(8),2);
T(55) = getPowerDeriv((1-T(1))*T(19)+T(1)*T(20),1/(1+params(8)),2);
T(56) = T(28)*(T(22)*T(23)*T(24)+T(19)*T(52)+T(22)*T(23)*T(24)+(1-T(1))*(T(24)*((1-T(1))*(1-T(1))*(-(y(2)*T(52)))-(-(y(2)*T(22)))*((1-T(1))*T(22)+(1-T(1))*T(22)))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1)))+T(23)*T(23)*T(53))+T(21)*T(25)*T(26)+T(20)*T(51)+T(21)*T(25)*T(26)+T(1)*(T(26)*(T(1)*T(1)*(-(y(3)*T(51)))-(-(y(3)*T(21)))*(T(1)*T(21)+T(1)*T(21)))/(T(1)*T(1)*T(1)*T(1))+T(25)*T(25)*T(54)))+T(27)*T(27)*T(55);
T(57) = getPowerDeriv(y(2)/((1-T(1))*T(2)),params(8),2);
T(58) = T(28)*(T(22)*T(24)*T(35)+(1-T(1))*(T(24)*T(21)/((1-T(1))*(1-T(1)))+T(23)*T(35)*T(53)))+T(27)*T(36)*T(55);
T(59) = (-1)/((y(1))*(y(1)));
T(60) = (-T(59));
T(61) = T(28)*(T(22)*T(42)+T(19)*T(60)+T(23)*T(24)*(-T(40))+(1-T(1))*(T(24)*((1-T(1))*(1-T(1))*(-(y(2)*T(60)))-(-(y(2)*T(22)))*((1-T(1))*(-T(40))+(1-T(1))*(-T(40))))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1)))+T(23)*T(41)*T(53))+T(21)*T(44)+T(20)*T(59)+T(25)*T(26)*T(40)+T(1)*(T(26)*(T(1)*T(1)*(-(T(21)+y(3)*T(59)))-(-(y(3)*T(21)))*(T(1)*T(40)+T(1)*T(40)))/(T(1)*T(1)*T(1)*T(1))+T(25)*T(43)*T(54)))+T(27)*T(45)*T(55);
T(62) = (1-T(1))*T(2)*(T(2)*(-T(40))+(1-T(1))*T(46))+(1-T(1))*T(2)*(T(2)*(-T(40))+(1-T(1))*T(46));
T(63) = T(36)*T(45)*T(55)+T(28)*(T(24)*T(35)*(-T(40))+(1-T(1))*(T(35)*T(41)*T(53)+T(24)*T(40)/((1-T(1))*(1-T(1)))));
T(64) = T(45)*T(45)*T(55)+T(28)*((-T(40))*T(42)+(-T(40))*T(42)+(1-T(1))*(T(41)*T(41)*T(53)+T(24)*(-((-(y(2)*(-T(40))))*((1-T(1))*(-T(40))+(1-T(1))*(-T(40)))))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1))))+T(40)*T(44)+T(40)*T(44)+T(1)*(T(43)*T(43)*T(54)+T(26)*(-((T(1)-y(3)*T(40))*(T(1)*T(40)+T(1)*T(40))))/(T(1)*T(1)*T(1)*T(1))));
T(65) = T(1)*T(2)*T(1)*T(2)*T(1)*T(2)*T(1)*T(2);
T(66) = getPowerDeriv(y(3)/(T(1)*T(2)),params(8),2);
T(67) = T(48)*T(66);

end
