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

T(49) = getPowerDeriv(y(6)-T(3),(-params(11)),2);
T(50) = (-params(10))*T(49);
T(51) = getPowerDeriv(T(24),1/(1+params(8)),2);
T(52) = T(27)*(1-T(1))*1/(1-T(1))*1/(1-T(1))*getPowerDeriv(y(6)/(1-T(1)),1+params(8),2)+T(26)*T(26)*T(51);
T(53) = getPowerDeriv(y(6)/((1-T(1))*T(2)),params(8),2);
T(54) = getPowerDeriv(y(13)-T(5),(-params(11)),2);
T(55) = (-params(10))*T(54);
T(56) = T(36)*T(36)*T(51)+T(27)*T(1)*1/T(1)*1/T(1)*getPowerDeriv(y(7)/T(1),1+params(8),2);
T(57) = getPowerDeriv(y(7)/(T(1)*T(2)),params(8),2);
T(58) = (-((-y(7))*(y(2)+y(2))))/(y(2)*y(2)*y(2)*y(2));
T(59) = (-(T(23)*(2*(T(20)-1)*(-1)/(y(2)*y(2))+T(34)*2*T(40))));

end
