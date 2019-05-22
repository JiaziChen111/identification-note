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

assert(length(T) >= 81);

T = KimModTheBuilder.static_g1_tt(T, y, x, params);

T(63) = (-((-(y(3)))*((y(1))+(y(1)))))/((y(1))*(y(1))*(y(1))*(y(1)));
T(64) = (-T(63));
T(65) = getPowerDeriv(y(2)/(1-T(1)),1+params(8),2);
T(66) = getPowerDeriv(y(3)/T(1),1+params(8),2);
T(67) = getPowerDeriv((1-T(1))*T(22)+T(1)*T(23),1/(1+params(8)),2);
T(68) = T(34)*(T(28)*T(29)*T(30)+T(22)*T(64)+T(28)*T(29)*T(30)+(1-T(1))*(T(30)*((1-T(1))*(1-T(1))*(-(y(2)*T(64)))-(-(y(2)*T(28)))*((1-T(1))*T(28)+(1-T(1))*T(28)))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1)))+T(29)*T(29)*T(65))+T(27)*T(31)*T(32)+T(23)*T(63)+T(27)*T(31)*T(32)+T(1)*(T(32)*(T(1)*T(1)*(-(y(3)*T(63)))-(-(y(3)*T(27)))*(T(1)*T(27)+T(1)*T(27)))/(T(1)*T(1)*T(1)*T(1))+T(31)*T(31)*T(66)))+T(33)*T(33)*T(67);
T(69) = getPowerDeriv(y(2)/((1-T(1))*T(2)),params(8),2);
T(70) = T(34)*(T(28)*T(30)*T(41)+(1-T(1))*(T(30)*T(27)/((1-T(1))*(1-T(1)))+T(29)*T(41)*T(65)))+T(33)*T(42)*T(67);
T(71) = (-1)/((y(1))*(y(1)));
T(72) = (-T(71));
T(73) = T(34)*(T(28)*T(48)+T(22)*T(72)+T(29)*T(30)*(-T(46))+(1-T(1))*(T(30)*((1-T(1))*(1-T(1))*(-(y(2)*T(72)))-(-(y(2)*T(28)))*((1-T(1))*(-T(46))+(1-T(1))*(-T(46))))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1)))+T(29)*T(47)*T(65))+T(27)*T(50)+T(23)*T(71)+T(31)*T(32)*T(46)+T(1)*(T(32)*(T(1)*T(1)*(-(T(27)+y(3)*T(71)))-(-(y(3)*T(27)))*(T(1)*T(46)+T(1)*T(46)))/(T(1)*T(1)*T(1)*T(1))+T(31)*T(49)*T(66)))+T(33)*T(51)*T(67);
T(74) = (1-T(1))*T(2)*(T(2)*(-T(46))+(1-T(1))*T(52))+(1-T(1))*T(2)*(T(2)*(-T(46))+(1-T(1))*T(52));
T(75) = T(42)*T(51)*T(67)+T(34)*(T(30)*T(41)*(-T(46))+(1-T(1))*(T(41)*T(47)*T(65)+T(30)*T(46)/((1-T(1))*(1-T(1)))));
T(76) = T(51)*T(51)*T(67)+T(34)*((-T(46))*T(48)+(-T(46))*T(48)+(1-T(1))*(T(47)*T(47)*T(65)+T(30)*(-((-(y(2)*(-T(46))))*((1-T(1))*(-T(46))+(1-T(1))*(-T(46)))))/((1-T(1))*(1-T(1))*(1-T(1))*(1-T(1))))+T(46)*T(50)+T(46)*T(50)+T(1)*(T(49)*T(49)*T(66)+T(32)*(-((T(1)-y(3)*T(46))*(T(1)*T(46)+T(1)*T(46))))/(T(1)*T(1)*T(1)*T(1))));
T(77) = T(1)*T(2)*T(1)*T(2)*T(1)*T(2)*T(1)*T(2);
T(78) = getPowerDeriv(y(3)/(T(1)*T(2)),params(8),2);
T(79) = T(54)*T(78);
T(80) = getPowerDeriv(T(26),params(1)-1,2);
T(81) = getPowerDeriv(T(26),params(1),2);

end
