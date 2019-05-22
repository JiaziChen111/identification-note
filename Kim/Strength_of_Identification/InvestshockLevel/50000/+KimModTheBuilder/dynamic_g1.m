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
g1 = zeros(9, 19);
g1(1,5)=y(9)*((1-T(1))*T(2)-y(5)*(1-T(1))*T(22))/((1-T(1))*T(2)*(1-T(1))*T(2))*T(23)-(1-T(4))*getPowerDeriv(y(5)-T(3),(-1),1);
g1(1,13)=(-(T(10)*(-T(6))*getPowerDeriv(y(13)-T(5),(-1),1)));
g1(1,6)=y(9)*T(23)*(-(y(5)*(1-T(1))*T(25)))/((1-T(1))*T(2)*(1-T(1))*T(2));
g1(1,9)=T(8);
g1(2,5)=y(9)*(-(y(6)*T(1)*T(22)))/(T(1)*T(2)*T(1)*T(2))*T(24);
g1(2,6)=y(9)*T(24)*(T(1)*T(2)-y(6)*T(1)*T(25))/(T(1)*T(2)*T(1)*T(2))-T(16)*(-(y(8)*params(3)))/(y(6)*y(6))*T(26);
g1(2,8)=(-(T(16)*T(26)*params(3)/y(6)));
g1(2,9)=T(12)-T(17)*y(10)*T(15);
g1(2,10)=(-(T(17)*y(9)*T(15)));
g1(2,12)=(-(T(17)*y(9)*y(10)*getPowerDeriv(y(12),(-params(9)),1)));
g1(3,14)=(-(T(10)*y(16)));
g1(3,8)=(-(T(10)*y(16)*(1-params(3))*y(17)*(-y(15))/(y(8)*y(8))*T(29)));
g1(3,15)=(-(T(10)*y(16)*(1-params(3))*y(17)*T(29)*1/y(8)));
g1(3,9)=y(10);
g1(3,16)=(-(T(10)*T(19)));
g1(3,10)=y(9);
g1(3,17)=(-(T(10)*y(16)*(1-params(3))*T(18)));
g1(4,6)=(-(params(3)*y(12)/params(3)*T(27)*T(28)));
g1(4,1)=(-(T(28)*(1-params(3))*getPowerDeriv(y(1),1-params(9),1)));
g1(4,8)=1;
g1(4,12)=(-(T(28)*params(3)*T(27)*y(6)/params(3)));
g1(5,4)=1;
g1(5,1)=(-(y(11)*getPowerDeriv(T(7),params(1),1)));
g1(5,11)=(-T(13));
g1(6,7)=1;
g1(6,1)=(-(y(11)*params(1)*getPowerDeriv(T(7),params(1)-1,1)));
g1(6,11)=(-T(14));
g1(7,4)=1;
g1(7,5)=(-T(22));
g1(7,6)=(-T(25));
g1(8,2)=(-(params(6)*1/y(2)));
g1(8,11)=1/y(11);
g1(8,18)=(-params(7));
g1(9,3)=(-(params(11)*1/y(3)));
g1(9,12)=1/y(12);
g1(9,19)=(-params(12));

end
