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
g1 = zeros(10, 18);
g1(1,4)=y(8)*T(31)*T(32)-(1-T(4))*getPowerDeriv(y(4)-T(3),(-1),1);
g1(1,13)=(-(T(10)*(-T(6))*getPowerDeriv(y(13)-T(5),(-1),1)));
g1(1,5)=y(8)*T(32)*T(37);
g1(1,8)=T(8);
g1(2,4)=y(8)*T(33)*T(34);
g1(2,5)=y(8)*T(34)*T(38)-T(19)*T(39)*T(40);
g1(2,7)=(-(T(19)*T(40)*params(3)/y(5)));
g1(2,8)=T(12)-T(20)*y(9)*T(18);
g1(2,9)=(-(T(20)*y(8)*T(18)));
g1(3,14)=(-(T(10)*y(16)));
g1(3,7)=(-(T(10)*y(16)*(1-params(3))*y(17)*T(49)*T(50)));
g1(3,15)=(-(T(10)*y(16)*(1-params(3))*y(17)*T(50)*1/y(7)));
g1(3,8)=y(9);
g1(3,16)=(-(T(10)*T(22)));
g1(3,9)=y(8);
g1(3,17)=(-(T(10)*y(16)*(1-params(3))*T(21)));
g1(4,5)=(-(T(41)*T(42)));
g1(4,1)=(-(T(42)*T(43)));
g1(4,7)=1;
g1(5,3)=1;
g1(5,1)=(-(y(10)*T(45)));
g1(5,10)=(-T(14));
g1(5,11)=(-(y(10)*T(52)));
g1(6,6)=1;
g1(6,1)=(-(y(10)*params(1)*T(46)*T(47)));
g1(6,10)=(-T(15));
g1(6,11)=(-(y(10)*params(1)*T(47)*T(53)));
g1(7,3)=1;
g1(7,4)=(-T(30));
g1(7,5)=(-T(36));
g1(8,2)=(-(params(6)*1/y(2)));
g1(8,10)=1/y(10);
g1(8,18)=(-params(7));
g1(9,8)=y(12);
g1(9,11)=(-(params(10)*(-(getPowerDeriv(1-y(11),(-1),1)))));
g1(9,12)=y(8);
g1(10,1)=(-(y(10)*(1-params(1))*T(46)*T(48)));
g1(10,10)=(-T(17));
g1(10,11)=(-(y(10)*(1-params(1))*T(48)*T(53)));
g1(10,12)=1;

end
