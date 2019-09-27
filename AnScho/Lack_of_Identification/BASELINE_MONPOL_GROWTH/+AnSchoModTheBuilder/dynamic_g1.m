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
g1 = zeros(9, 20);
g1(1,9)=T(38);
g1(1,15)=(-(y(10)*T(7)*T(42)/y(16)/(T(9)*y(17))));
g1(1,10)=(-(T(7)*T(8)/y(16)/(T(9)*y(17))));
g1(1,16)=(-((-(y(10)*T(7)*T(8)))/(y(16)*y(16))/(T(9)*y(17))));
g1(1,17)=(-((-(y(10)*T(7)*T(8)/y(16)*T(9)))/(T(9)*y(17)*T(9)*y(17))));
g1(2,8)=T(7)*params(14)*y(16)*T(33);
g1(2,14)=T(7)*params(14)*y(16)*T(37);
g1(2,9)=(-(1/params(5)*(-(T(38)/T(3)*T(39)))-T(7)*params(14)*y(16)*T(41)));
g1(2,15)=T(7)*params(14)*y(16)*T(44);
g1(2,11)=(-(params(14)*(y(11)-T(10))+y(11)*params(14)-params(14)/(2*params(5))*2*(y(11)-T(10))));
g1(2,16)=T(7)*params(14)*(T(16)+y(16)*T(15));
g1(3,8)=1-T(14)*params(14)/2-(1-1/y(12));
g1(3,9)=(-1);
g1(3,11)=(-(y(8)*params(14)/2*2*(y(11)-T(10))));
g1(3,12)=(-(y(8)*(-((-1)/(y(12)*y(12))))));
g1(4,1)=(-(T(19)*T(18)*T(25)*T(28)*T(29)*T(30)));
g1(4,8)=(-(T(19)*T(18)*T(30)*T(35)));
g1(4,2)=(-(T(19)*T(17)*T(45)));
g1(4,10)=1;
g1(4,11)=(-(T(19)*T(18)*T(30)*T(47)));
g1(4,13)=(-(T(19)*T(18)*T(30)*T(25)*T(26)*T(29)));
g1(4,18)=(-(T(17)*T(18)*params(11)*T(19)));
g1(5,3)=(-(params(9)*1/y(3)));
g1(5,12)=1/y(12);
g1(5,19)=(-params(12));
g1(6,4)=(-(params(10)*1/y(4)));
g1(6,13)=1/y(13);
g1(6,20)=(-params(13));
g1(7,5)=1;
g1(7,1)=(-(100*(-(T(31)/T(21)))));
g1(7,8)=(-(100*T(31)/T(20)));
g1(7,13)=(-(100*1/(steady_state(9))/T(22)));
g1(8,6)=1;
g1(8,11)=(-(400*1/(steady_state(7))/T(23)));
g1(9,7)=1;
g1(9,10)=(-(400*1/(steady_state(6))/T(24)));

end
