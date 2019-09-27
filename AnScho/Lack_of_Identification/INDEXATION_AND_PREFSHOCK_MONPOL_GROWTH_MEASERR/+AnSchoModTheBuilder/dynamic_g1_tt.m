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

assert(length(T) >= 54);

T = AnSchoModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(27) = (steady_state(6))*(y(13)/T(1))^params(6);
T(28) = y(10)/y(1);
T(29) = (T(28)*y(15))^params(7);
T(30) = (steady_state(7))^(1-params(16));
T(31) = y(15)*(-y(10))/(y(1)*y(1));
T(32) = getPowerDeriv(T(28)*y(15),params(7),1);
T(33) = getPowerDeriv(T(11),1-params(8),1);
T(34) = 1/(steady_state(4));
T(35) = (-(T(7)/T(5)*y(17)))/(y(10)*y(10));
T(36) = y(15)*1/y(1);
T(37) = T(27)*T(32)*T(36);
T(38) = T(7)/T(5)/y(10);
T(39) = getPowerDeriv(y(11),(-params(4)),1);
T(40) = y(16)*T(39);
T(41) = T(40)/y(16);
T(42) = getPowerDeriv(T(5)/y(16),(-1),1);
T(43) = y(17)*(-(T(7)*T(40)))/(T(5)*T(5))/y(10);
T(44) = getPowerDeriv(y(18),(-params(4)),1);
T(45) = T(4)*T(44);
T(46) = y(17)*T(45)/T(5)/y(10);
T(47) = getPowerDeriv(y(2),params(8),1);
T(48) = (-(T(30)*getPowerDeriv(y(3),params(16),1)));
T(49) = (-(T(30)*getPowerDeriv(y(13),params(16),1)));
T(50) = (steady_state(6))*1/T(1)*getPowerDeriv(y(13)/T(1),params(6),1);
T(51) = T(29)*T(50);
T(52) = (T(2)*y(16)-T(5))/(y(16)*y(16));
T(53) = y(17)*(-(T(2)*T(7)))/(T(5)*T(5))/y(10);
T(54) = y(17)*T(3)/T(5)/y(10);

end
