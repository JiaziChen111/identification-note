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

assert(length(T) >= 88);

T = KimModTheBuilder.static_g1_tt(T, y, x, params);

T(68) = (-((-(y(3)))*((y(1))+(y(1)))))/((y(1))*(y(1))*(y(1))*(y(1)));
T(69) = (-T(68));
T(70) = getPowerDeriv(y(2)/(1-T(1)),1+params(8),2);
T(71) = getPowerDeriv(y(3)/T(1),1+params(8),2);
T(72) = getPowerDeriv((1-T(1))*T(22)+T(1)*T(23),1/(1+params(8)),2);
T(73) = T(34)*(T(28)*T(29)*T(30)+T(22)*T(69)+T(28)*T(29)*T(30)+(1-T(1))*(T(30)*((1-T(1))*(1-T(1))*(-(y(2)*T(69)))-(-(y(2)*T(28)))*((1-T(1))*T(28)+(1-T(1))*T(28)))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1)))+T(29)*T(29)*T(70))+T(27)*T(31)*T(32)+T(23)*T(68)+T(27)*T(31)*T(32)+T(1)*(T(32)*(T(1)*T(1)*(-(y(3)*T(68)))-(-(y(3)*T(27)))*(T(1)*T(27)+T(1)*T(27)))/(T(1)*T(1)*T(1)*T(1))+T(31)*T(31)*T(71)))+T(33)*T(33)*T(72);
T(74) = getPowerDeriv(y(2)/((1-T(1))*T(2)),params(8),2);
T(75) = T(34)*(T(28)*T(30)*T(41)+(1-T(1))*(T(30)*T(27)/((1-T(1))*(1-T(1)))+T(29)*T(41)*T(70)))+T(33)*T(42)*T(72);
T(76) = (-1)/((y(1))*(y(1)));
T(77) = (-T(76));
T(78) = T(34)*(T(28)*T(48)+T(22)*T(77)+T(29)*T(30)*(-T(46))+(1-T(1))*(T(30)*((1-T(1))*(1-T(1))*(-(y(2)*T(77)))-(-(y(2)*T(28)))*((1-T(1))*(-T(46))+(1-T(1))*(-T(46))))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1)))+T(29)*T(47)*T(70))+T(27)*T(50)+T(23)*T(76)+T(31)*T(32)*T(46)+T(1)*(T(32)*(T(1)*T(1)*(-(T(27)+y(3)*T(76)))-(-(y(3)*T(27)))*(T(1)*T(46)+T(1)*T(46)))/(T(1)*T(1)*T(1)*T(1))+T(31)*T(49)*T(71)))+T(33)*T(51)*T(72);
T(79) = (1-T(1))*T(2)*(T(2)*(-T(46))+(1-T(1))*T(52))+(1-T(1))*T(2)*(T(2)*(-T(46))+(1-T(1))*T(52));
T(80) = T(42)*T(51)*T(72)+T(34)*(T(30)*T(41)*(-T(46))+(1-T(1))*(T(41)*T(47)*T(70)+T(30)*T(46)/((1-T(1))*(1-T(1)))));
T(81) = T(51)*T(51)*T(72)+T(34)*((-T(46))*T(48)+(-T(46))*T(48)+(1-T(1))*(T(47)*T(47)*T(70)+T(30)*(-((-(y(2)*(-T(46))))*((1-T(1))*(-T(46))+(1-T(1))*(-T(46)))))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1))))+T(46)*T(50)+T(46)*T(50)+T(1)*(T(49)*T(49)*T(71)+T(32)*(-((T(1)-y(3)*T(46))*(T(1)*T(46)+T(1)*T(46))))/(T(1)*T(1)*T(1)*T(1))));
T(82) = T(1)*T(2)*T(1)*T(2)*T(1)*T(2)*T(1)*T(2);
T(83) = getPowerDeriv(y(3)/(T(1)*T(2)),params(8),2);
T(84) = T(54)*T(83);
T(85) = getPowerDeriv(y(5)*params(3)/y(3),params(9),2);
T(86) = getPowerDeriv(T(21),1/(1-params(9)),2);
T(87) = getPowerDeriv(T(26),params(1)-1,2);
T(88) = getPowerDeriv(T(26),params(1),2);

end
