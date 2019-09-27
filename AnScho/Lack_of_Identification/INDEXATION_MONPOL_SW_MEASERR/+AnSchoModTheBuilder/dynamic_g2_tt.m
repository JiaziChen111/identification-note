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

assert(length(T) >= 70);

T = AnSchoModTheBuilder.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(64) = T(5)*getPowerDeriv(y(10),(-params(4)),2);
T(65) = T(7)*getPowerDeriv(y(16),(-params(4)),2);
T(66) = (-(T(36)*getPowerDeriv(y(3),params(17),2)));
T(67) = getPowerDeriv(T(34),params(8),2);
T(68) = getPowerDeriv(T(14),1-params(9),2);
T(69) = (T(35)*T(61)+T(31)*T(38)*T(63))*T(68);
T(70) = getPowerDeriv(y(9)/T(2),params(7),2);

end
