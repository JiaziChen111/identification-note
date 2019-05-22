function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 60);

T = AnSchoModTheBuilder.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(53) = y(16)*getPowerDeriv(y(11),(-params(4)),2);
T(54) = T(4)*getPowerDeriv(y(18),(-params(4)),2);
T(55) = getPowerDeriv(T(5),(-1),2);
T(56) = (-(T(29)*getPowerDeriv(y(3),params(16),2)));
T(57) = (-(T(29)*getPowerDeriv(y(13),params(16),2)));
T(58) = getPowerDeriv(T(27)*y(15),params(7),2);
T(59) = getPowerDeriv(T(11),1-params(8),2);
T(60) = T(26)*T(27)*T(31)*T(59);

end
