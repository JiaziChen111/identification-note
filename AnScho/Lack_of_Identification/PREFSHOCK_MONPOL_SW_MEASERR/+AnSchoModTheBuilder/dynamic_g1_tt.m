function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 71);

T = AnSchoModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(27) = (1-params(5))^(1/params(4));
T(28) = (steady_state(6))*(y(12)/T(1))^params(6);
T(29) = (y(9)/T(2))^params(7);
T(30) = T(28)*T(29);
T(31) = y(9)/y(1);
T(32) = T(2)/T(3);
T(33) = T(31)/T(32);
T(34) = T(33)^params(8);
T(35) = (-y(9))/(y(1)*y(1))/T(32);
T(36) = getPowerDeriv(T(33),params(8),1);
T(37) = getPowerDeriv(T(13),1-params(9),1);
T(38) = 1/(steady_state(4));
T(39) = (-(T(9)/T(7)*y(16)))/(y(9)*y(9));
T(40) = (y(18)-T(12))*T(39);
T(41) = 1/T(2);
T(42) = getPowerDeriv(y(9)/T(2),params(7),1);
T(43) = T(28)*T(41)*T(42);
T(44) = 1/y(1)/T(32);
T(45) = T(34)*T(43)+T(30)*T(36)*T(44);
T(46) = T(9)/T(7)/y(9);
T(47) = (y(18)-T(12))*T(46);
T(48) = getPowerDeriv(y(10),(-params(4)),1);
T(49) = y(15)*T(48);
T(50) = T(49)/y(15);
T(51) = getPowerDeriv(T(7)/y(15),(-1),1);
T(52) = y(16)*(-(T(9)*T(49)))/(T(7)*T(7))/y(9);
T(53) = (y(18)-T(12))*T(52);
T(54) = getPowerDeriv(y(17),(-params(4)),1);
T(55) = T(6)*T(54);
T(56) = y(16)*T(55)/T(7)/y(9);
T(57) = (y(18)-T(12))*T(56);
T(58) = getPowerDeriv(y(2),params(9),1);
T(59) = (steady_state(6))*1/T(1)*getPowerDeriv(y(12)/T(1),params(6),1);
T(60) = T(29)*T(59);
T(61) = (-(T(27)*T(2)))/(T(3)*T(3));
T(62) = (-(T(31)*T(61)))/(T(32)*T(32));
T(63) = (-(T(27)*y(9)))/(T(2)*T(2));
T(64) = T(28)*T(42)*T(63);
T(65) = T(27)/T(3);
T(66) = (-(T(31)*T(65)))/(T(32)*T(32));
T(67) = (T(4)*y(15)-T(7))/(y(15)*y(15));
T(68) = y(16)*(-(T(4)*T(9)))/(T(7)*T(7))/y(9);
T(69) = (y(18)-T(12))*T(68);
T(70) = y(16)*T(5)/T(7)/y(9);
T(71) = (y(18)-T(12))*T(70);

end
