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
g1 = zeros(10, 19);
g1(1,5)=y(9)*T(33)*T(34)-(1-T(4))*getPowerDeriv(y(5)-T(3),(-1),1);
g1(1,14)=(-(T(10)*(-T(6))*getPowerDeriv(y(14)-T(5),(-1),1)));
g1(1,6)=y(9)*T(34)*T(41);
g1(1,9)=T(8);
g1(2,5)=y(9)*T(35)*T(36);
g1(2,1)=(-(y(9)*y(10)*T(13)*(T(38)-(T(15)*T(37)+T(22)*params(9)*T(37)))));
g1(2,6)=y(9)*T(36)*T(42)-(y(9)*y(10)*T(13)*(T(44)-(T(15)*T(43)+T(22)*params(9)*T(43)))+T(17)*T(47)+T(24)*params(9)*T(45));
g1(2,15)=(-(T(17)*T(49)+T(24)*params(9)*T(48)));
g1(2,9)=T(12)-(1-T(14)-T(22)*T(15))*y(10)*T(13);
g1(2,17)=(-(T(17)*T(23)*T(16)*T(10)*y(18)));
g1(2,10)=(-((1-T(14)-T(22)*T(15))*y(9)*T(13)));
g1(2,18)=(-(T(17)*T(23)*T(10)*y(17)*T(16)));
g1(3,16)=(-(T(10)*y(17)));
g1(3,9)=y(10);
g1(3,17)=(-(T(10)*(y(16)+y(18)*(1-params(3)))));
g1(3,10)=y(9);
g1(3,18)=(-(T(10)*y(17)*(1-params(3))));
g1(4,1)=(-(y(6)*T(13)*T(38)));
g1(4,6)=(-(y(6)*T(13)*T(44)+T(13)*(1-T(14))));
g1(4,2)=(-(1-params(3)));
g1(4,8)=1;
g1(5,4)=1;
g1(5,2)=(-(y(11)*T(51)));
g1(5,11)=(-T(18));
g1(5,12)=(-(y(11)*T(56)));
g1(6,7)=1;
g1(6,2)=(-(y(11)*params(1)*T(52)*T(53)));
g1(6,11)=(-T(19));
g1(6,12)=(-(y(11)*params(1)*T(53)*T(57)));
g1(7,4)=1;
g1(7,5)=(-T(32));
g1(7,6)=(-T(40));
g1(8,3)=(-(params(6)*1/y(3)));
g1(8,11)=1/y(11);
g1(8,19)=(-params(7));
g1(9,9)=y(13);
g1(9,12)=(-(params(10)*(-(getPowerDeriv(1-y(12),(-1),1)))));
g1(9,13)=y(9);
g1(10,2)=(-(y(11)*(1-params(1))*T(52)*T(54)));
g1(10,11)=(-T(21));
g1(10,12)=(-(y(11)*(1-params(1))*T(54)*T(57)));
g1(10,13)=1;

end
