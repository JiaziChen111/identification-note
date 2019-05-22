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

T = KimModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(26) = (1-T(1))*(y(5)/(1-T(1)))^(1+params(8))+T(1)*(y(6)/T(1))^(1+params(8));
T(27) = (steady_state(9))*(y(13)/T(8))^params(11);
T(28) = (y(4)/(steady_state(1)))^params(12);
T(29) = 1/(steady_state(1))*getPowerDeriv(y(4)/(steady_state(1)),params(12),1);
T(30) = T(27)*T(29);
T(31) = getPowerDeriv(T(17),1-params(13),1);
T(32) = (1-T(1))*1/(1-T(1))*getPowerDeriv(y(5)/(1-T(1)),1+params(8),1);
T(33) = getPowerDeriv(T(26),1/(1+params(8)),1);
T(34) = T(32)*T(33);
T(35) = ((1-T(1))*T(2)-y(5)*(1-T(1))*T(34))/((1-T(1))*T(2)*(1-T(1))*T(2));
T(36) = getPowerDeriv(y(5)/((1-T(1))*T(2)),params(8),1);
T(37) = (-(y(6)*T(1)*T(34)))/(T(1)*T(2)*T(1)*T(2));
T(38) = getPowerDeriv(y(6)/(T(1)*T(2)),params(8),1);
T(39) = T(1)*1/T(1)*getPowerDeriv(y(6)/T(1),1+params(8),1);
T(40) = T(33)*T(39);
T(41) = (-(y(5)*(1-T(1))*T(40)))/((1-T(1))*T(2)*(1-T(1))*T(2));
T(42) = (T(1)*T(2)-y(6)*T(1)*T(40))/(T(1)*T(2)*T(1)*T(2));
T(43) = (-(y(8)*params(3)))/(y(6)*y(6));
T(44) = getPowerDeriv(y(8)*params(3)/y(6),params(9),1);
T(45) = params(3)*T(14)/params(3)*getPowerDeriv(y(6)*T(14)/params(3),1-params(9),1);
T(46) = getPowerDeriv(T(23),1/(1-params(9)),1);
T(47) = (1-params(3))*getPowerDeriv(y(1),1-params(9),1);
T(48) = getPowerDeriv(T(7),params(1),1);
T(49) = params(1)*getPowerDeriv(T(7),params(1)-1,1);
T(50) = (-y(16))/(y(8)*y(8));
T(51) = getPowerDeriv(y(16)/y(8),params(9),1);
T(52) = getPowerDeriv(y(3),params(13),1);
T(53) = (steady_state(9))*1/T(8)*getPowerDeriv(y(13)/T(8),params(11),1);
T(54) = T(28)*T(53);

end
