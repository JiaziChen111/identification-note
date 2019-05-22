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

assert(length(T) >= 46);

T = KimModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(23) = params(9)/2;
T(24) = (1-T(1))*(y(5)/(1-T(1)))^(1+params(8))+T(1)*(y(6)/T(1))^(1+params(8));
T(25) = (1-T(1))*1/(1-T(1))*getPowerDeriv(y(5)/(1-T(1)),1+params(8),1);
T(26) = getPowerDeriv(T(24),1/(1+params(8)),1);
T(27) = T(25)*T(26);
T(28) = ((1-T(1))*T(2)-y(5)*(1-T(1))*T(27))/((1-T(1))*T(2)*(1-T(1))*T(2));
T(29) = getPowerDeriv(y(5)/((1-T(1))*T(2)),params(8),1);
T(30) = (-(y(6)*T(1)*T(27)))/(T(1)*T(2)*T(1)*T(2));
T(31) = getPowerDeriv(y(6)/(T(1)*T(2)),params(8),1);
T(32) = (-y(6))/(y(1)*y(1));
T(33) = (-(T(23)*T(32)*2*(T(20)-1)));
T(34) = T(1)*1/T(1)*getPowerDeriv(y(6)/T(1),1+params(8),1);
T(35) = T(26)*T(34);
T(36) = (-(y(5)*(1-T(1))*T(35)))/((1-T(1))*T(2)*(1-T(1))*T(2));
T(37) = (T(1)*T(2)-y(6)*T(1)*T(35))/(T(1)*T(2)*T(1)*T(2));
T(38) = 1/y(1);
T(39) = (-(T(23)*2*(T(20)-1)*T(38)));
T(40) = (-y(13))/(y(6)*y(6));
T(41) = 2*y(13)/y(6);
T(42) = T(10)*y(15)*y(16)*T(16)*T(40)*T(41);
T(43) = 1/y(6);
T(44) = T(10)*y(15)*y(16)*T(16)*T(41)*T(43);
T(45) = getPowerDeriv(T(7),params(1),1);
T(46) = params(1)*getPowerDeriv(T(7),params(1)-1,1);

end
