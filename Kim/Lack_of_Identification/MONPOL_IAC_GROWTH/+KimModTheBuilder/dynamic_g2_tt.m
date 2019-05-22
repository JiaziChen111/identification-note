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

assert(length(T) >= 66);

T = KimModTheBuilder.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(59) = getPowerDeriv(T(28),1/(1+params(8)),2);
T(60) = T(35)*(1-T(1))*1/(1-T(1))*1/(1-T(1))*getPowerDeriv(y(6)/(1-T(1)),1+params(8),2)+T(34)*T(34)*T(59);
T(61) = getPowerDeriv(y(6)/((1-T(1))*T(2)),params(8),2);
T(62) = T(43)*T(43)*T(59)+T(35)*T(1)*1/T(1)*1/T(1)*getPowerDeriv(y(7)/T(1),1+params(8),2);
T(63) = getPowerDeriv(y(7)/(T(1)*T(2)),params(8),2);
T(64) = (-((-y(7))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1));
T(65) = (-(T(27)*(2*(T(22)-1)*(-1)/(y(1)*y(1))+T(41)*2*T(47))));
T(66) = getPowerDeriv(T(21),1-params(13),2);

end
