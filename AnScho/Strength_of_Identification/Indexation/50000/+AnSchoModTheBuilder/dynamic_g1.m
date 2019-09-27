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
g1 = zeros(9, 21);
g1(1,10)=T(23);
g1(1,16)=(-(y(11)*T(8)*T(24)/y(17)/(T(10)*y(18))));
g1(1,11)=(-(T(8)*T(9)/y(17)/(T(10)*y(18))));
g1(1,17)=(-((-(y(11)*T(8)*T(9)))/(y(17)*y(17))/(T(10)*y(18))));
g1(1,18)=(-((-(y(11)*T(8)*T(9)/y(17)*T(10)))/(T(10)*y(18)*T(10)*y(18))));
g1(2,9)=T(8)*params(14)*y(17)*(y(17)-T(12))*(-(T(9)/T(7)*y(15)))/(y(9)*y(9));
g1(2,15)=T(8)*params(14)*y(17)*(y(17)-T(12))*T(9)/T(7)/y(9);
g1(2,10)=(-(1/params(5)*(-(T(23)/T(4)*getPowerDeriv(T(7)/T(4),(-1),1)))-T(8)*params(14)*y(17)*(y(17)-T(12))*y(15)*(-(T(9)*T(23)))/(T(7)*T(7))/y(9)));
g1(2,16)=T(8)*params(14)*y(17)*(y(17)-T(12))*y(15)*T(24)/T(7)/y(9);
g1(2,3)=(-(y(12)*params(14)*T(25)-params(14)/(2*params(5))*T(25)*2*(y(12)-T(11))));
g1(2,12)=(-(params(14)*(y(12)-T(11))+y(12)*params(14)-params(14)/(2*params(5))*2*(y(12)-T(11))-T(8)*params(14)*y(17)*T(16)*(-(T(20)*getPowerDeriv(y(12),params(16),1)))));
g1(2,17)=T(8)*params(14)*(T(16)*(y(17)-T(12))+y(17)*T(16));
g1(3,9)=1-T(15)*params(14)/2-(1-1/y(13));
g1(3,10)=(-1);
g1(3,3)=(-(y(9)*params(14)/2*T(25)*2*(y(12)-T(11))));
g1(3,12)=(-(y(9)*params(14)/2*2*(y(12)-T(11))));
g1(3,13)=(-(y(9)*(-((-1)/(y(13)*y(13))))));
g1(4,9)=(-(exp(params(11)*x(it_, 1))*T(18)*T(19)*1/T(2)*T(21)*T(22)));
g1(4,2)=(-(exp(params(11)*x(it_, 1))*T(17)*getPowerDeriv(y(2),params(8),1)));
g1(4,11)=1;
g1(4,12)=(-(exp(params(11)*x(it_, 1))*T(18)*T(22)*(y(9)/T(2))^params(7)*(steady_state(6))*1/T(1)*getPowerDeriv(y(12)/T(1),params(6),1)));
g1(4,13)=(-(exp(params(11)*x(it_, 1))*T(18)*T(22)*T(19)*T(21)*(-((1-params(5))^(1/params(4))*y(9)))/(T(2)*T(2))));
g1(4,19)=(-(T(17)*T(18)*params(11)*exp(params(11)*x(it_, 1))));
g1(5,4)=(-(params(9)*1/y(4)));
g1(5,13)=1/y(13);
g1(5,20)=(-params(12));
g1(6,5)=(-(params(10)*1/y(5)));
g1(6,14)=1/y(14);
g1(6,21)=(-params(13));
g1(7,6)=1;
g1(7,1)=(-(100*(-(1/(steady_state(4))/(y(1)/(steady_state(4)))))));
g1(7,9)=(-(100*1/(steady_state(4))/(y(9)/(steady_state(4)))));
g1(7,14)=(-(100*1/(steady_state(9))/(y(14)/(steady_state(9)))));
g1(8,7)=1;
g1(8,12)=(-(400*1/(steady_state(7))/(y(12)/(steady_state(7)))));
g1(9,8)=1;
g1(9,11)=(-(400*1/(steady_state(6))/(y(11)/(steady_state(6)))));

end
