function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = KimModTheBuilder.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(9, 19);
g1(1,5)=y(9)*T(32)*T(33)-(1-T(5))*getPowerDeriv(y(5)-T(4),(-1),1);
g1(1,13)=(-(T(11)*(-T(7))*getPowerDeriv(y(13)-T(6),(-1),1)));
g1(1,6)=y(9)*T(33)*T(40);
g1(1,9)=T(9);
g1(2,5)=y(9)*T(34)*T(35);
g1(2,1)=(-(y(9)*y(10)*T(14)*(T(37)-(T(16)*T(36)+T(24)*params(9)*T(36)))));
g1(2,6)=y(9)*T(35)*T(41)-(y(9)*y(10)*T(14)*(T(43)-(T(16)*T(42)+T(24)*params(9)*T(42)))+T(18)*T(46)+T(26)*params(9)*T(44));
g1(2,14)=(-(T(18)*T(48)+T(26)*params(9)*T(47)));
g1(2,9)=T(13)-(1-T(15)-T(24)*T(16))*y(10)*T(14);
g1(2,16)=(-(T(18)*T(25)*T(17)*T(11)*y(17)));
g1(2,10)=(-((1-T(15)-T(24)*T(16))*y(9)*T(14)));
g1(2,17)=(-(T(18)*T(25)*T(11)*y(16)*T(17)));
g1(3,15)=(-(y(18)*T(11)*y(16)));
g1(3,9)=y(10);
g1(3,16)=(-(T(11)*(y(18)*y(15)-T(19)+y(17)*(1-params(3)))));
g1(3,10)=y(9);
g1(3,17)=(-(T(11)*y(16)*(1-params(3))));
g1(3,18)=(-(T(11)*y(16)*(y(15)-(1-params(11)+params(11)/2*2*(y(18)-(steady_state(9)))))));
g1(4,7)=1;
g1(4,12)=(-params(11));
g1(5,1)=(-(y(6)*T(14)*T(37)));
g1(5,6)=(-(y(6)*T(14)*T(43)+T(14)*(1-T(15))));
g1(5,2)=(-(1-params(3)));
g1(5,8)=1;
g1(6,4)=1;
g1(6,2)=(-(y(11)*y(12)*T(49)));
g1(6,11)=(-T(21));
g1(6,12)=(-(y(11)*y(2)*T(49)));
g1(7,7)=1;
g1(7,2)=(-(y(11)*params(1)*y(12)*T(50)));
g1(7,11)=(-T(22));
g1(7,12)=(-(y(11)*params(1)*y(2)*T(50)));
g1(8,4)=1;
g1(8,5)=(-T(31));
g1(8,6)=(-T(39));
g1(8,2)=(-T(23));
g1(8,12)=(-(y(2)*(1-params(11)+params(11)/2*2*(y(12)-(steady_state(9))))));
g1(9,3)=(-(params(6)*1/y(3)));
g1(9,11)=1/y(11);
g1(9,19)=(-params(7));

end
