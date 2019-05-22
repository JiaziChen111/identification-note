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

assert(length(T) >= 59);

T = KimModTheBuilder.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(51) = getPowerDeriv(T(28),1/(1+params(8)),2);
T(52) = T(30)*(1-T(2))*1/(1-T(2))*1/(1-T(2))*getPowerDeriv(y(5)/(1-T(2)),1+params(8),2)+T(29)*T(29)*T(51);
T(53) = getPowerDeriv(y(5)/((1-T(2))*T(3)),params(8),2);
T(54) = T(38)*T(38)*T(51)+T(30)*T(2)*1/T(2)*1/T(2)*getPowerDeriv(y(6)/T(2),1+params(8),2);
T(55) = getPowerDeriv(y(6)/(T(2)*T(3)),params(8),2);
T(56) = (-((-y(6))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1));
T(57) = (-(T(27)*(2*(T(24)-1)*(-1)/(y(1)*y(1))+T(36)*2*T(42))));
T(58) = getPowerDeriv(T(8),params(1),2);
T(59) = getPowerDeriv(T(8),params(1)-1,2);

end
