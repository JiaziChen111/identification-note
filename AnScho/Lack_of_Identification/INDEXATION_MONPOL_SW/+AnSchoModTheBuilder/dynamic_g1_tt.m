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

assert(length(T) >= 63);

T = AnSchoModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(27) = (1-params(5))^(1/params(4));
T(28) = (steady_state(6))*(y(12)/T(1))^params(6);
T(29) = (y(9)/T(2))^params(7);
T(30) = T(28)*T(29);
T(31) = y(9)/y(1);
T(32) = T(2)/T(3);
T(33) = T(31)/T(32);
T(34) = T(33)^params(8);
T(35) = (steady_state(7))^(1-params(17));
T(36) = (-y(9))/(y(1)*y(1))/T(32);
T(37) = getPowerDeriv(T(33),params(8),1);
T(38) = getPowerDeriv(T(14),1-params(9),1);
T(39) = 1/(steady_state(4));
T(40) = (-(T(10)/T(8)*y(15)))/(y(9)*y(9));
T(41) = 1/T(2);
T(42) = getPowerDeriv(y(9)/T(2),params(7),1);
T(43) = T(28)*T(41)*T(42);
T(44) = 1/y(1)/T(32);
T(45) = T(34)*T(43)+T(30)*T(37)*T(44);
T(46) = T(10)/T(8)/y(9);
T(47) = T(5)*getPowerDeriv(y(10),(-params(4)),1);
T(48) = getPowerDeriv(T(8),(-1),1);
T(49) = y(15)*(-(T(10)*T(47)))/(T(8)*T(8))/y(9);
T(50) = T(7)*getPowerDeriv(y(16),(-params(4)),1);
T(51) = y(15)*T(50)/T(8)/y(9);
T(52) = getPowerDeriv(y(2),params(9),1);
T(53) = (-(T(35)*getPowerDeriv(y(3),params(17),1)));
T(54) = T(35)*getPowerDeriv(y(12),params(17),1);
T(55) = (steady_state(6))*1/T(1)*getPowerDeriv(y(12)/T(1),params(6),1);
T(56) = T(29)*T(55);
T(57) = (-(T(27)*T(2)))/(T(3)*T(3));
T(58) = (-(T(31)*T(57)))/(T(32)*T(32));
T(59) = (-(T(27)*y(9)))/(T(2)*T(2));
T(60) = T(28)*T(42)*T(59);
T(61) = T(27)/T(3);
T(62) = (-(T(31)*T(61)))/(T(32)*T(32));
T(63) = params(12)/100*T(21);

end
