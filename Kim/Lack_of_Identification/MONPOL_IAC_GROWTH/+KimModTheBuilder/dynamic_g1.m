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
g1 = zeros(10, 22);
g1(1,6)=y(10)*T(37)*T(38)-(1-T(4))*getPowerDeriv(y(6)-T(3),(-1),1);
g1(1,15)=(-(T(11)*(-T(6))*getPowerDeriv(y(15)-T(5),(-1),1)));
g1(1,7)=y(10)*T(38)*T(45);
g1(1,10)=T(9);
g1(2,6)=y(10)*T(39)*T(40);
g1(2,1)=(-(y(10)*y(11)*T(14)*(T(42)-(T(16)*T(41)+T(22)*params(9)*T(41)))));
g1(2,7)=y(10)*T(40)*T(46)-(y(10)*y(11)*T(14)*(T(48)-(T(16)*T(47)+T(22)*params(9)*T(47)))+T(18)*T(51)+T(24)*params(9)*T(49));
g1(2,16)=(-(T(18)*T(53)+T(24)*params(9)*T(52)));
g1(2,10)=T(13)-(1-T(15)-T(22)*T(16))*y(11)*T(14);
g1(2,18)=(-(T(18)*T(23)*T(17)*T(11)*y(19)));
g1(2,11)=(-((1-T(15)-T(22)*T(16))*y(10)*T(14)));
g1(2,19)=(-(T(18)*T(23)*T(11)*y(18)*T(17)));
g1(3,17)=(-(T(11)*y(18)));
g1(3,10)=y(11);
g1(3,18)=(-(T(11)*(y(17)+y(19)*(1-params(3)))));
g1(3,11)=y(10);
g1(3,19)=(-(T(11)*y(18)*(1-params(3))));
g1(4,1)=(-(y(7)*T(14)*T(42)));
g1(4,7)=(-(y(7)*T(14)*T(48)+T(14)*(1-T(15))));
g1(4,2)=(-(1-params(3)));
g1(4,9)=1;
g1(5,5)=1;
g1(5,2)=(-(y(12)*T(54)));
g1(5,12)=(-T(19));
g1(6,8)=1;
g1(6,2)=(-(y(12)*T(55)));
g1(6,12)=(-T(20));
g1(7,5)=1;
g1(7,6)=(-T(36));
g1(7,7)=(-T(44));
g1(8,3)=(-(params(6)*1/y(3)));
g1(8,12)=1/y(12);
g1(8,21)=(-params(7));
g1(9,10)=1;
g1(9,18)=(-(y(13)*T(11)/y(20)));
g1(9,13)=(-(y(18)*T(11)/y(20)));
g1(9,20)=(-(y(18)*(-(y(13)*T(11)))/(y(20)*y(20))));
g1(10,5)=(-(exp(params(14)*x(it_, 2))*T(26)*T(32)*T(33)));
g1(10,4)=(-(exp(params(14)*x(it_, 2))*T(25)*T(56)));
g1(10,13)=1;
g1(10,14)=(-(exp(params(14)*x(it_, 2))*T(26)*T(33)*T(58)));
g1(10,22)=(-(T(25)*T(26)*params(14)*exp(params(14)*x(it_, 2))));

end
