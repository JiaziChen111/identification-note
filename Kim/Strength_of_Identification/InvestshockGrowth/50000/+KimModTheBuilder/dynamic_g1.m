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
g1 = zeros(9, 21);
g1(1,6)=y(10)*((1-T(1))*T(2)-y(6)*(1-T(1))*T(23))/((1-T(1))*T(2)*(1-T(1))*T(2))*T(24)-(1-T(4))*getPowerDeriv(y(6)-T(3),(-1),1);
g1(1,14)=(-(T(10)*(-T(6))*getPowerDeriv(y(14)-T(5),(-1),1)));
g1(1,7)=y(10)*T(24)*(-(y(6)*(1-T(1))*T(27)))/((1-T(1))*T(2)*(1-T(1))*T(2));
g1(1,10)=T(8);
g1(2,6)=y(10)*(-(y(7)*T(1)*T(23)))/(T(1)*T(2)*T(1)*T(2))*T(25);
g1(2,1)=(-(y(10)*y(11)*y(13)*(T(26)-(T(14)*(-y(7))/(y(1)*y(1))+T(19)*params(9)*(-y(7))/(y(1)*y(1))))));
g1(2,7)=y(10)*T(25)*(T(1)*T(2)-y(7)*T(1)*T(27))/(T(1)*T(2)*T(1)*T(2))-(y(10)*y(11)*y(13)*(T(28)-(T(14)*1/y(1)+T(19)*params(9)*1/y(1)))+T(16)*T(10)*y(17)*y(18)*T(15)*(-y(15))/(y(7)*y(7))*2*y(15)/y(7)+T(21)*params(9)*(-y(15))/(y(7)*y(7)));
g1(2,15)=(-(T(16)*T(10)*y(17)*y(18)*T(15)*2*y(15)/y(7)*1/y(7)+T(21)*params(9)*1/y(7)));
g1(2,10)=T(12)-(1-T(13)-T(19)*T(14))*y(11)*y(13);
g1(2,17)=(-(T(16)*T(20)*T(15)*T(10)*y(18)));
g1(2,11)=(-((1-T(13)-T(19)*T(14))*y(10)*y(13)));
g1(2,18)=(-(T(16)*T(20)*T(10)*y(17)*T(15)));
g1(2,13)=(-(y(10)*y(11)*(1-T(13)-T(19)*T(14))));
g1(2,19)=(-(T(16)*T(10)*y(17)*y(18)*T(20)));
g1(3,16)=(-(T(10)*y(17)));
g1(3,10)=y(11);
g1(3,17)=(-(T(10)*(y(16)+y(18)*(1-params(3)))));
g1(3,11)=y(10);
g1(3,18)=(-(T(10)*y(17)*(1-params(3))));
g1(4,1)=(-(y(7)*y(13)*T(26)));
g1(4,7)=(-(y(7)*y(13)*T(28)+y(13)*(1-T(13))));
g1(4,2)=(-(1-params(3)));
g1(4,9)=1;
g1(4,13)=(-(y(7)*(1-T(13))));
g1(5,5)=1;
g1(5,2)=(-(y(12)*getPowerDeriv(T(7),params(1),1)));
g1(5,12)=(-T(17));
g1(6,8)=1;
g1(6,2)=(-(y(12)*params(1)*getPowerDeriv(T(7),params(1)-1,1)));
g1(6,12)=(-T(18));
g1(7,5)=1;
g1(7,6)=(-T(23));
g1(7,7)=(-T(27));
g1(8,3)=(-(params(6)*1/y(3)));
g1(8,12)=1/y(12);
g1(8,20)=(-params(7));
g1(9,4)=(-(params(11)*1/y(4)));
g1(9,13)=1/y(13);
g1(9,21)=(-params(12));

end
