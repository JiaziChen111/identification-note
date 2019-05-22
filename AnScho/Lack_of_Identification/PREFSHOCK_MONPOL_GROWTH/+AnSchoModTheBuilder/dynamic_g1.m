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
    T = AnSchoModTheBuilder.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(10, 24);
g1(1,10)=T(39);
g1(1,17)=(-(y(11)*T(6)*T(44)/y(18)/(T(8)*y(19))));
g1(1,11)=(-(T(6)*T(7)/y(18)/(T(8)*y(19))));
g1(1,18)=(-((-(y(11)*T(6)*T(7)))/(y(18)*y(18))/(T(8)*y(19))));
g1(1,19)=(-((-(y(11)*T(6)*T(7)/y(18)*T(8)))/(T(8)*y(19)*T(8)*y(19))));
g1(1,15)=T(2);
g1(1,20)=(-(y(11)*T(3)*T(6)/y(18)/(T(8)*y(19))));
g1(2,9)=(-(T(6)*params(14)*y(18)*T(33)));
g1(2,16)=(-(T(6)*params(14)*y(18)*T(37)));
g1(2,10)=(-(T(13)*(-(T(39)*T(40)))+T(6)*params(14)*y(18)*T(42)));
g1(2,17)=(-(T(6)*params(14)*y(18)*T(46)));
g1(2,12)=(-(params(14)*(y(12)-T(9))+y(12)*params(14)-params(14)/(2*params(5))*2*(y(12)-T(10))));
g1(2,18)=(-(T(6)*params(14)*(T(15)+y(18)*T(14))));
g1(2,15)=(-(T(13)*(-(T(2)*T(40)))+T(6)*params(14)*y(18)*T(51)));
g1(2,20)=(-(T(6)*params(14)*y(18)*T(53)));
g1(3,9)=1-T(16)-(1-1/y(13));
g1(3,10)=(-1);
g1(3,12)=(-(y(9)*params(14)/2*2*(y(12)-T(9))));
g1(3,13)=(-(y(9)*(-((-1)/(y(13)*y(13))))));
g1(4,1)=(-(T(19)*T(18)*T(25)*T(28)*T(29)*T(30)));
g1(4,9)=(-(T(19)*T(18)*T(30)*T(35)));
g1(4,2)=(-(T(19)*T(17)*T(47)));
g1(4,11)=1;
g1(4,12)=(-(T(19)*T(18)*T(30)*T(49)));
g1(4,14)=(-(T(19)*T(18)*T(30)*T(25)*T(26)*T(29)));
g1(4,21)=(-(T(17)*T(18)*T(54)));
g1(5,3)=(-(params(9)*1/y(3)));
g1(5,13)=1/y(13);
g1(5,22)=(-(params(12)/100));
g1(6,4)=(-(params(10)*1/y(4)));
g1(6,14)=1/y(14);
g1(6,23)=(-(params(13)/100));
g1(7,5)=(-(params(16)*1/y(5)));
g1(7,15)=1/y(15);
g1(7,24)=(-(params(17)/100));
g1(8,6)=1;
g1(8,1)=(-(100*(-(T(31)/T(21)))));
g1(8,9)=(-(100*T(31)/T(20)));
g1(8,14)=(-(100*1/(steady_state(9))/T(22)));
g1(9,7)=1;
g1(9,12)=(-(400*1/(steady_state(7))/T(23)));
g1(10,8)=1;
g1(10,11)=(-(400*1/(steady_state(6))/T(24)));

end
