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
g1 = zeros(10, 21);
g1(1,5)=y(9)*T(35)*T(36)-(1-T(4))*getPowerDeriv(y(5)-T(3),(-1),1);
g1(1,14)=(-(T(11)*(-T(6))*getPowerDeriv(y(14)-T(5),(-1),1)));
g1(1,6)=y(9)*T(36)*T(41);
g1(1,9)=T(9);
g1(2,5)=y(9)*T(37)*T(38);
g1(2,6)=y(9)*T(38)*T(42)-T(19)*T(43)*T(44);
g1(2,8)=(-(T(19)*T(44)*params(3)/y(6)));
g1(2,9)=T(13)-T(20)*y(10)*T(18);
g1(2,10)=(-(T(20)*y(9)*T(18)));
g1(3,15)=(-(T(11)*y(17)));
g1(3,8)=(-(T(11)*y(17)*(1-params(3))*y(18)*T(50)*T(51)));
g1(3,16)=(-(T(11)*y(17)*(1-params(3))*y(18)*T(51)*1/y(8)));
g1(3,9)=y(10);
g1(3,17)=(-(T(11)*T(22)));
g1(3,10)=y(9);
g1(3,18)=(-(T(11)*y(17)*(1-params(3))*T(21)));
g1(4,6)=(-(T(45)*T(46)));
g1(4,1)=(-(T(46)*T(47)));
g1(4,8)=1;
g1(5,4)=1;
g1(5,1)=(-(y(11)*T(48)));
g1(5,11)=(-T(15));
g1(6,7)=1;
g1(6,1)=(-(y(11)*T(49)));
g1(6,11)=(-T(16));
g1(7,4)=1;
g1(7,5)=(-T(34));
g1(7,6)=(-T(40));
g1(8,2)=(-(params(6)*1/y(2)));
g1(8,11)=1/y(11);
g1(8,20)=(-params(7));
g1(9,9)=1;
g1(9,17)=(-(y(12)*T(11)/y(19)));
g1(9,12)=(-(y(17)*T(11)/y(19)));
g1(9,19)=(-(y(17)*(-(y(12)*T(11)))/(y(19)*y(19))));
g1(10,4)=(-(exp(params(14)*x(it_, 2))*T(25)*T(30)*T(31)));
g1(10,3)=(-(exp(params(14)*x(it_, 2))*T(24)*T(52)));
g1(10,12)=1;
g1(10,13)=(-(exp(params(14)*x(it_, 2))*T(25)*T(31)*T(54)));
g1(10,21)=(-(T(24)*T(25)*params(14)*exp(params(14)*x(it_, 2))));

end
