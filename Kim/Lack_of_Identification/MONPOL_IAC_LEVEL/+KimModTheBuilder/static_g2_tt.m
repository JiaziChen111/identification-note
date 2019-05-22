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

assert(length(T) >= 89);

T = KimModTheBuilder.static_g1_tt(T, y, x, params);

T(70) = (-((-(y(3)))*((y(1))+(y(1)))))/((y(1))*(y(1))*(y(1))*(y(1)));
T(71) = (-T(70));
T(72) = getPowerDeriv(y(2)/(1-T(1)),1+params(8),2);
T(73) = getPowerDeriv(y(3)/T(1),1+params(8),2);
T(74) = getPowerDeriv((1-T(1))*T(24)+T(1)*T(25),1/(1+params(8)),2);
T(75) = T(35)*(T(29)*T(30)*T(31)+T(24)*T(71)+T(29)*T(30)*T(31)+(1-T(1))*(T(31)*((1-T(1))*(1-T(1))*(-(y(2)*T(71)))-(-(y(2)*T(29)))*((1-T(1))*T(29)+(1-T(1))*T(29)))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1)))+T(30)*T(30)*T(72))+T(28)*T(32)*T(33)+T(25)*T(70)+T(28)*T(32)*T(33)+T(1)*(T(33)*(T(1)*T(1)*(-(y(3)*T(70)))-(-(y(3)*T(28)))*(T(1)*T(28)+T(1)*T(28)))/(T(1)*T(1)*T(1)*T(1))+T(32)*T(32)*T(73)))+T(34)*T(34)*T(74);
T(76) = getPowerDeriv(y(2)/((1-T(1))*T(2)),params(8),2);
T(77) = T(35)*(T(29)*T(31)*T(46)+(1-T(1))*(T(31)*T(28)/((1-T(1))*(1-T(1)))+T(30)*T(46)*T(72)))+T(34)*T(47)*T(74);
T(78) = (-1)/((y(1))*(y(1)));
T(79) = (-T(78));
T(80) = T(35)*(T(29)*T(53)+T(24)*T(79)+T(30)*T(31)*(-T(51))+(1-T(1))*(T(31)*((1-T(1))*(1-T(1))*(-(y(2)*T(79)))-(-(y(2)*T(29)))*((1-T(1))*(-T(51))+(1-T(1))*(-T(51))))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1)))+T(30)*T(52)*T(72))+T(28)*T(55)+T(25)*T(78)+T(32)*T(33)*T(51)+T(1)*(T(33)*(T(1)*T(1)*(-(T(28)+y(3)*T(78)))-(-(y(3)*T(28)))*(T(1)*T(51)+T(1)*T(51)))/(T(1)*T(1)*T(1)*T(1))+T(32)*T(54)*T(73)))+T(34)*T(56)*T(74);
T(81) = (1-T(1))*T(2)*(T(2)*(-T(51))+(1-T(1))*T(57))+(1-T(1))*T(2)*(T(2)*(-T(51))+(1-T(1))*T(57));
T(82) = T(47)*T(56)*T(74)+T(35)*(T(31)*T(46)*(-T(51))+(1-T(1))*(T(46)*T(52)*T(72)+T(31)*T(51)/((1-T(1))*(1-T(1)))));
T(83) = T(56)*T(56)*T(74)+T(35)*((-T(51))*T(53)+(-T(51))*T(53)+(1-T(1))*(T(52)*T(52)*T(72)+T(31)*(-((-(y(2)*(-T(51))))*((1-T(1))*(-T(51))+(1-T(1))*(-T(51)))))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1))))+T(51)*T(55)+T(51)*T(55)+T(1)*(T(54)*T(54)*T(73)+T(33)*(-((T(1)-y(3)*T(51))*(T(1)*T(51)+T(1)*T(51))))/(T(1)*T(1)*T(1)*T(1))));
T(84) = T(1)*T(2)*T(1)*T(2)*T(1)*T(2)*T(1)*T(2);
T(85) = getPowerDeriv(y(3)/(T(1)*T(2)),params(8),2);
T(86) = T(59)*T(85);
T(87) = getPowerDeriv(y(5)*params(3)/y(3),params(9),2);
T(88) = getPowerDeriv(T(21),1/(1-params(9)),2);
T(89) = getPowerDeriv(T(17),1-params(13),2);

end
