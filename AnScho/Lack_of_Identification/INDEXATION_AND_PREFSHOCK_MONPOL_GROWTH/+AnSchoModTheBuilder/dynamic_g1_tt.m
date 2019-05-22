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

assert(length(T) >= 52);

T = AnSchoModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(26) = (steady_state(6))*(y(13)/T(1))^params(6);
T(27) = y(10)/y(1);
T(28) = (T(27)*y(15))^params(7);
T(29) = (steady_state(7))^(1-params(16));
T(30) = y(15)*(-y(10))/(y(1)*y(1));
T(31) = getPowerDeriv(T(27)*y(15),params(7),1);
T(32) = getPowerDeriv(T(11),1-params(8),1);
T(33) = 1/(steady_state(4));
T(34) = (-(T(7)/T(5)*y(17)))/(y(10)*y(10));
T(35) = y(15)*1/y(1);
T(36) = T(26)*T(31)*T(35);
T(37) = T(7)/T(5)/y(10);
T(38) = getPowerDeriv(y(11),(-params(4)),1);
T(39) = y(16)*T(38);
T(40) = getPowerDeriv(T(5),(-1),1);
T(41) = y(17)*(-(T(7)*T(39)))/(T(5)*T(5))/y(10);
T(42) = getPowerDeriv(y(18),(-params(4)),1);
T(43) = T(4)*T(42);
T(44) = y(17)*T(43)/T(5)/y(10);
T(45) = getPowerDeriv(y(2),params(8),1);
T(46) = (-(T(29)*getPowerDeriv(y(3),params(16),1)));
T(47) = T(29)*getPowerDeriv(y(13),params(16),1);
T(48) = (steady_state(6))*1/T(1)*getPowerDeriv(y(13)/T(1),params(6),1);
T(49) = T(28)*T(48);
T(50) = y(17)*(-(T(2)*T(7)))/(T(5)*T(5))/y(10);
T(51) = y(17)*T(3)/T(5)/y(10);
T(52) = params(11)/100*T(20);

end
