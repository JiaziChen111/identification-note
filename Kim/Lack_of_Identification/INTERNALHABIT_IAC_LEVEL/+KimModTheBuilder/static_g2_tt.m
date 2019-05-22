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

assert(length(T) >= 75);

T = KimModTheBuilder.static_g1_tt(T, y, x, params);

T(57) = (-((-(y(3)))*((y(1))+(y(1)))))/((y(1))*(y(1))*(y(1))*(y(1)));
T(58) = (-T(57));
T(59) = getPowerDeriv(y(2)/(1-T(1)),1+params(8),2);
T(60) = getPowerDeriv(y(3)/T(1),1+params(8),2);
T(61) = getPowerDeriv((1-T(1))*T(20)+T(1)*T(21),1/(1+params(8)),2);
T(62) = T(29)*(T(23)*T(24)*T(25)+T(20)*T(58)+T(23)*T(24)*T(25)+(1-T(1))*(T(25)*((1-T(1))*(1-T(1))*(-(y(2)*T(58)))-(-(y(2)*T(23)))*((1-T(1))*T(23)+(1-T(1))*T(23)))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1)))+T(24)*T(24)*T(59))+T(22)*T(26)*T(27)+T(21)*T(57)+T(22)*T(26)*T(27)+T(1)*(T(27)*(T(1)*T(1)*(-(y(3)*T(57)))-(-(y(3)*T(22)))*(T(1)*T(22)+T(1)*T(22)))/(T(1)*T(1)*T(1)*T(1))+T(26)*T(26)*T(60)))+T(28)*T(28)*T(61);
T(63) = getPowerDeriv(y(2)/((1-T(1))*T(2)),params(8),2);
T(64) = T(29)*(T(23)*T(25)*T(36)+(1-T(1))*(T(25)*T(22)/((1-T(1))*(1-T(1)))+T(24)*T(36)*T(59)))+T(28)*T(37)*T(61);
T(65) = (-1)/((y(1))*(y(1)));
T(66) = (-T(65));
T(67) = T(29)*(T(23)*T(43)+T(20)*T(66)+T(24)*T(25)*(-T(41))+(1-T(1))*(T(25)*((1-T(1))*(1-T(1))*(-(y(2)*T(66)))-(-(y(2)*T(23)))*((1-T(1))*(-T(41))+(1-T(1))*(-T(41))))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1)))+T(24)*T(42)*T(59))+T(22)*T(45)+T(21)*T(65)+T(26)*T(27)*T(41)+T(1)*(T(27)*(T(1)*T(1)*(-(T(22)+y(3)*T(65)))-(-(y(3)*T(22)))*(T(1)*T(41)+T(1)*T(41)))/(T(1)*T(1)*T(1)*T(1))+T(26)*T(44)*T(60)))+T(28)*T(46)*T(61);
T(68) = (1-T(1))*T(2)*(T(2)*(-T(41))+(1-T(1))*T(47))+(1-T(1))*T(2)*(T(2)*(-T(41))+(1-T(1))*T(47));
T(69) = T(37)*T(46)*T(61)+T(29)*(T(25)*T(36)*(-T(41))+(1-T(1))*(T(36)*T(42)*T(59)+T(25)*T(41)/((1-T(1))*(1-T(1)))));
T(70) = T(46)*T(46)*T(61)+T(29)*((-T(41))*T(43)+(-T(41))*T(43)+(1-T(1))*(T(42)*T(42)*T(59)+T(25)*(-((-(y(2)*(-T(41))))*((1-T(1))*(-T(41))+(1-T(1))*(-T(41)))))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1))))+T(41)*T(45)+T(41)*T(45)+T(1)*(T(44)*T(44)*T(60)+T(27)*(-((T(1)-y(3)*T(41))*(T(1)*T(41)+T(1)*T(41))))/(T(1)*T(1)*T(1)*T(1))));
T(71) = T(1)*T(2)*T(1)*T(2)*T(1)*T(2)*T(1)*T(2);
T(72) = getPowerDeriv(y(3)/(T(1)*T(2)),params(8),2);
T(73) = T(49)*T(72);
T(74) = getPowerDeriv(y(5)*params(3)/y(3),params(9),2);
T(75) = getPowerDeriv(T(19),1/(1-params(9)),2);

end
