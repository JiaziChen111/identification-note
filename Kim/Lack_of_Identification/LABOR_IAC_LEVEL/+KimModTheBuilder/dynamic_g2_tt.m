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

assert(length(T) >= 63);

T = KimModTheBuilder.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(54) = getPowerDeriv(T(24),1/(1+params(8)),2);
T(55) = T(29)*(1-T(1))*1/(1-T(1))*1/(1-T(1))*getPowerDeriv(y(4)/(1-T(1)),1+params(8),2)+T(28)*T(28)*T(54);
T(56) = getPowerDeriv(y(4)/((1-T(1))*T(2)),params(8),2);
T(57) = T(35)*T(35)*T(54)+T(29)*T(1)*1/T(1)*1/T(1)*getPowerDeriv(y(5)/T(1),1+params(8),2);
T(58) = getPowerDeriv(y(5)/(T(1)*T(2)),params(8),2);
T(59) = getPowerDeriv(y(7)*params(3)/y(5),params(9),2);
T(60) = getPowerDeriv(y(15)/y(7),params(9),2);
T(61) = getPowerDeriv(T(23),1/(1-params(9)),2);
T(62) = getPowerDeriv(T(27),params(1)-1,2);
T(63) = getPowerDeriv(T(27),params(1),2);

end
