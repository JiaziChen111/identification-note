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

assert(length(T) >= 51);

T = AnSchoModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(24) = (steady_state(6))*(y(12)/T(1))^params(6);
T(25) = T(13)^params(7);
T(26) = 1/(steady_state(4));
T(27) = (-(T(7)/T(5)*y(16)))/(y(9)*y(9));
T(28) = (y(18)-T(10))*T(27);
T(29) = T(26)*getPowerDeriv(T(13),params(7),1);
T(30) = T(24)*T(29);
T(31) = getPowerDeriv(T(11),1-params(8),1);
T(32) = T(7)/T(5)/y(9);
T(33) = (y(18)-T(10))*T(32);
T(34) = getPowerDeriv(y(10),(-params(4)),1);
T(35) = y(15)*T(34);
T(36) = T(35)/y(15);
T(37) = getPowerDeriv(T(5)/y(15),(-1),1);
T(38) = y(16)*(-(T(7)*T(35)))/(T(5)*T(5))/y(9);
T(39) = (y(18)-T(10))*T(38);
T(40) = getPowerDeriv(y(17),(-params(4)),1);
T(41) = T(4)*T(40);
T(42) = y(16)*T(41)/T(5)/y(9);
T(43) = (y(18)-T(10))*T(42);
T(44) = getPowerDeriv(y(2),params(8),1);
T(45) = (steady_state(6))*1/T(1)*getPowerDeriv(y(12)/T(1),params(6),1);
T(46) = T(25)*T(45);
T(47) = (T(2)*y(15)-T(5))/(y(15)*y(15));
T(48) = y(16)*(-(T(2)*T(7)))/(T(5)*T(5))/y(9);
T(49) = (y(18)-T(10))*T(48);
T(50) = y(16)*T(3)/T(5)/y(9);
T(51) = (y(18)-T(10))*T(50);

end
