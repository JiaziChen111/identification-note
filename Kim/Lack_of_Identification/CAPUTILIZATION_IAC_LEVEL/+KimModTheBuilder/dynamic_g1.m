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
g1 = zeros(9, 18);
g1(1,4)=y(8)*T(30)*T(31)-(1-T(5))*getPowerDeriv(y(4)-T(4),(-1),1);
g1(1,12)=(-(T(11)*(-T(7))*getPowerDeriv(y(12)-T(6),(-1),1)));
g1(1,5)=y(8)*T(31)*T(36);
g1(1,8)=T(9);
g1(2,4)=y(8)*T(32)*T(33);
g1(2,5)=y(8)*T(33)*T(37)-T(21)*T(38)*T(39);
g1(2,7)=(-(T(21)*T(39)*params(3)/y(5)));
g1(2,8)=T(13)-T(22)*y(9)*T(20);
g1(2,9)=(-(T(22)*y(8)*T(20)));
g1(3,13)=(-(y(17)*T(11)*y(15)));
g1(3,7)=(-(T(11)*y(15)*(1-params(3))*y(16)*T(45)*T(46)));
g1(3,14)=(-(T(11)*y(15)*(1-params(3))*y(16)*T(46)*1/y(7)));
g1(3,8)=y(9);
g1(3,15)=(-(T(11)*T(24)));
g1(3,9)=y(8);
g1(3,16)=(-(T(11)*y(15)*(1-params(3))*T(23)));
g1(3,17)=(-(T(11)*y(15)*(y(13)-(1-params(11)+params(11)/2*2*(y(17)-(steady_state(9)))))));
g1(4,6)=1;
g1(4,11)=(-params(11));
g1(5,5)=(-(T(40)*T(41)));
g1(5,1)=(-(T(41)*T(42)));
g1(5,7)=1;
g1(6,3)=1;
g1(6,1)=(-(y(10)*y(11)*T(43)));
g1(6,10)=(-T(17));
g1(6,11)=(-(y(10)*y(1)*T(43)));
g1(7,6)=1;
g1(7,1)=(-(y(10)*params(1)*y(11)*T(44)));
g1(7,10)=(-T(18));
g1(7,11)=(-(y(10)*params(1)*y(1)*T(44)));
g1(8,3)=1;
g1(8,4)=(-T(29));
g1(8,5)=(-T(35));
g1(8,1)=(-T(19));
g1(8,11)=(-(y(1)*(1-params(11)+params(11)/2*2*(y(11)-(steady_state(9))))));
g1(9,2)=(-(params(6)*1/y(2)));
g1(9,10)=1/y(10);
g1(9,18)=(-params(7));

end
