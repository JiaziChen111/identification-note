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

assert(length(T) >= 29);

T = KimModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(21) = getPowerDeriv((1-T(1))*(y(5)/(1-T(1)))^(1+params(8))+T(1)*(y(6)/T(1))^(1+params(8)),1/(1+params(8)),1);
T(22) = (1-T(1))*1/(1-T(1))*getPowerDeriv(y(5)/(1-T(1)),1+params(8),1)*T(21);
T(23) = getPowerDeriv(y(5)/((1-T(1))*T(2)),params(8),1);
T(24) = getPowerDeriv(y(6)/(T(1)*T(2)),params(8),1);
T(25) = T(21)*T(1)*1/T(1)*getPowerDeriv(y(6)/T(1),1+params(8),1);
T(26) = getPowerDeriv(y(8)*params(3)/y(6),params(9),1);
T(27) = getPowerDeriv(y(6)*y(12)/params(3),1-params(9),1);
T(28) = getPowerDeriv(T(20),1/(1-params(9)),1);
T(29) = getPowerDeriv(y(15)/y(8),params(9),1);

end
