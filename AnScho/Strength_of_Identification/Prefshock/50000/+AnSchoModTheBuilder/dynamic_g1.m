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
g1(1,10)=T(23);
g1(1,17)=(-(y(11)*T(7)*T(25)/y(18)/(T(9)*y(19))));
g1(1,11)=(-(T(7)*T(8)/y(18)/(T(9)*y(19))));
g1(1,18)=(-((-(y(11)*T(7)*T(8)))/(y(18)*y(18))/(T(9)*y(19))));
g1(1,19)=(-((-(y(11)*T(7)*T(8)/y(18)*T(9)))/(T(9)*y(19)*T(9)*y(19))));
g1(1,15)=T(3);
g1(1,20)=(-(y(11)*T(4)*T(7)/y(18)/(T(9)*y(19))));
g1(2,9)=T(7)*params(14)*y(18)*(y(18)-T(11))*(-(T(8)/T(6)*y(16)))/(y(9)*y(9));
g1(2,16)=T(7)*params(14)*y(18)*(y(18)-T(11))*T(8)/T(6)/y(9);
g1(2,10)=(-(1/params(5)*(-(T(23)/y(15)*T(24)))-T(7)*params(14)*y(18)*(y(18)-T(11))*y(16)*(-(T(8)*T(23)))/(T(6)*T(6))/y(9)));
g1(2,17)=T(7)*params(14)*y(18)*(y(18)-T(11))*y(16)*T(25)/T(6)/y(9);
g1(2,12)=(-(params(14)*(y(12)-T(10))+y(12)*params(14)-params(14)/(2*params(5))*2*(y(12)-T(10))));
g1(2,18)=T(7)*params(14)*(T(16)+y(18)*T(15));
g1(2,15)=(-(1/params(5)*(-(T(24)*(T(3)*y(15)-T(6))/(y(15)*y(15))))-T(7)*params(14)*y(18)*(y(18)-T(11))*y(16)*(-(T(3)*T(8)))/(T(6)*T(6))/y(9)));
g1(2,20)=T(7)*params(14)*y(18)*(y(18)-T(11))*y(16)*T(4)/T(6)/y(9);
g1(3,9)=1-T(14)*params(14)/2-(1-1/y(13));
g1(3,10)=(-1);
g1(3,12)=(-(y(9)*params(14)/2*2*(y(12)-T(10))));
g1(3,13)=(-(y(9)*(-((-1)/(y(13)*y(13))))));
g1(4,9)=(-(T(19)*T(18)*T(20)*1/T(2)*T(21)*T(22)));
g1(4,2)=(-(T(19)*T(17)*getPowerDeriv(y(2),params(8),1)));
g1(4,11)=1;
g1(4,12)=(-(T(19)*T(18)*T(22)*(y(9)/T(2))^params(7)*(steady_state(6))*1/T(1)*getPowerDeriv(y(12)/T(1),params(6),1)));
g1(4,13)=(-(T(19)*T(18)*T(22)*T(20)*T(21)*(-((1-params(5))^(1/params(4))*y(9)))/(T(2)*T(2))));
g1(4,21)=(-(T(17)*T(18)*params(11)/100*T(19)));
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
g1(8,1)=(-(100*(-(1/(steady_state(4))/(y(1)/(steady_state(4)))))));
g1(8,9)=(-(100*1/(steady_state(4))/(y(9)/(steady_state(4)))));
g1(8,14)=(-(100*1/(steady_state(9))/(y(14)/(steady_state(9)))));
g1(9,7)=1;
g1(9,12)=(-(400*1/(steady_state(7))/(y(12)/(steady_state(7)))));
g1(10,8)=1;
g1(10,11)=(-(400*1/(steady_state(6))/(y(11)/(steady_state(6)))));

end
