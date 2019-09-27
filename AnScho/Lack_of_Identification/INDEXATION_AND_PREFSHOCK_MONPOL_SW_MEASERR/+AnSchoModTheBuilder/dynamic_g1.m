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
g1 = zeros(10, 28);
g1(1,11)=T(50);
g1(1,18)=(-(y(12)*T(8)*T(55)/y(19)/(T(10)*y(20))));
g1(1,12)=(-(T(8)*T(9)/y(19)/(T(10)*y(20))));
g1(1,19)=(-((-(y(12)*T(8)*T(9)))/(y(19)*y(19))/(T(10)*y(20))));
g1(1,20)=(-((-(y(12)*T(8)*T(9)/y(19)*T(10)))/(T(10)*y(20)*T(10)*y(20))));
g1(1,16)=T(4);
g1(1,21)=(-(y(12)*T(5)*T(8)/y(19)/(T(10)*y(20))));
g1(2,10)=T(18)*y(19)*(y(19)-T(12))*T(42);
g1(2,17)=T(18)*y(19)*(y(19)-T(12))*T(48);
g1(2,11)=(-(T(15)*(-(T(51)*T(52)))-T(18)*y(19)*(y(19)-T(12))*T(53)));
g1(2,18)=T(18)*y(19)*(y(19)-T(12))*T(56);
g1(2,3)=(-(y(13)*params(15)*T(58)-T(16)*T(58)*2*(y(13)-T(11))));
g1(2,13)=(-(params(15)*(y(13)-T(11))+y(13)*params(15)-T(16)*2*(y(13)-T(11))-T(18)*y(19)*T(19)*T(59)));
g1(2,19)=T(18)*(T(19)*(y(19)-T(12))+y(19)*T(19));
g1(2,16)=(-(T(15)*(-(T(52)*T(68)))-T(18)*y(19)*(y(19)-T(12))*T(69)));
g1(2,21)=T(18)*y(19)*(y(19)-T(12))*T(70);
g1(3,10)=1-T(17)*T(20)-(1-1/y(14));
g1(3,11)=(-1);
g1(3,3)=(-(y(10)*T(20)*T(58)*2*(y(13)-T(11))));
g1(3,13)=(-(y(10)*T(20)*2*(y(13)-T(11))));
g1(3,14)=(-(y(10)*(-((-1)/(y(14)*y(14))))));
g1(4,1)=(-(T(23)*T(22)*T(32)*T(38)*T(39)*T(40)));
g1(4,10)=(-(T(23)*T(22)*T(40)*T(47)));
g1(4,2)=(-(T(23)*T(21)*T(57)));
g1(4,12)=1;
g1(4,13)=(-(T(23)*T(22)*T(40)*T(36)*T(61)));
g1(4,4)=(-(T(23)*T(22)*T(40)*T(32)*T(39)*T(63)));
g1(4,14)=(-(T(23)*T(22)*T(40)*(T(36)*T(65)+T(32)*T(39)*T(67))));
g1(4,22)=(-(T(21)*T(22)*params(12)*T(23)));
g1(5,4)=(-(params(10)*1/y(4)));
g1(5,14)=1/y(14);
g1(5,23)=(-params(13));
g1(6,5)=(-(params(11)*1/y(5)));
g1(6,15)=1/y(15);
g1(6,24)=(-params(14));
g1(7,6)=(-(params(18)*1/y(6)));
g1(7,16)=1/y(16);
g1(7,25)=(-params(19));
g1(8,7)=1;
g1(8,1)=(-(100*(-(T(41)/T(25)))));
g1(8,10)=(-(100*T(41)/T(24)));
g1(8,15)=(-(100*1/(steady_state(9))/T(26)));
g1(8,26)=(-params(20));
g1(9,8)=1;
g1(9,13)=(-(400*1/(steady_state(7))/T(27)));
g1(9,27)=(-params(21));
g1(10,9)=1;
g1(10,12)=(-(400*1/(steady_state(6))/T(28)));
g1(10,28)=(-params(22));

end
