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
g1 = zeros(8, 16);
g1(1,4)=y(8)*T(26)*T(27)-(1-T(4))*getPowerDeriv(y(4)-T(3),(-params(10)),1);
g1(1,11)=(-(T(10)*(-T(6))*getPowerDeriv(y(11)-T(5),(-params(10)),1)));
g1(1,5)=y(8)*T(27)*T(32);
g1(1,8)=T(8);
g1(2,4)=y(8)*T(28)*T(29);
g1(2,5)=y(8)*T(29)*T(33)-T(17)*T(34)*T(35);
g1(2,7)=(-(T(17)*T(35)*params(3)/y(5)));
g1(2,8)=T(12)-T(18)*y(9)*T(16);
g1(2,9)=(-(T(18)*y(8)*T(16)));
g1(3,12)=(-(T(10)*y(14)));
g1(3,7)=(-(T(10)*y(14)*(1-params(3))*y(15)*T(41)*T(42)));
g1(3,13)=(-(T(10)*y(14)*(1-params(3))*y(15)*T(42)*1/y(7)));
g1(3,8)=y(9);
g1(3,14)=(-(T(10)*T(20)));
g1(3,9)=y(8);
g1(3,15)=(-(T(10)*y(14)*(1-params(3))*T(19)));
g1(4,5)=(-(T(36)*T(37)));
g1(4,1)=(-(T(37)*T(38)));
g1(4,7)=1;
g1(5,3)=1;
g1(5,1)=(-(y(10)*T(39)));
g1(5,10)=(-T(14));
g1(6,6)=1;
g1(6,1)=(-(y(10)*T(40)));
g1(6,10)=(-T(15));
g1(7,3)=1;
g1(7,4)=(-T(25));
g1(7,5)=(-T(31));
g1(8,2)=(-(params(6)*1/y(2)));
g1(8,10)=1/y(10);
g1(8,16)=(-params(7));

end
