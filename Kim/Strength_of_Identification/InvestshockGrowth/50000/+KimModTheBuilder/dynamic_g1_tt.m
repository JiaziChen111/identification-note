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

assert(length(T) >= 28);

T = KimModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(22) = getPowerDeriv((1-T(1))*(y(6)/(1-T(1)))^(1+params(8))+T(1)*(y(7)/T(1))^(1+params(8)),1/(1+params(8)),1);
T(23) = (1-T(1))*1/(1-T(1))*getPowerDeriv(y(6)/(1-T(1)),1+params(8),1)*T(22);
T(24) = getPowerDeriv(y(6)/((1-T(1))*T(2)),params(8),1);
T(25) = getPowerDeriv(y(7)/(T(1)*T(2)),params(8),1);
T(26) = (-(params(9)/2*(-y(7))/(y(1)*y(1))*2*(T(19)-1)));
T(27) = T(22)*T(1)*1/T(1)*getPowerDeriv(y(7)/T(1),1+params(8),1);
T(28) = (-(params(9)/2*2*(T(19)-1)*1/y(1)));

end
