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

assert(length(T) >= 50);

T = KimModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(27) = params(9)/2;
T(28) = (1-T(2))*(y(5)/(1-T(2)))^(1+params(8))+T(2)*(y(6)/T(2))^(1+params(8));
T(29) = (1-T(2))*1/(1-T(2))*getPowerDeriv(y(5)/(1-T(2)),1+params(8),1);
T(30) = getPowerDeriv(T(28),1/(1+params(8)),1);
T(31) = T(29)*T(30);
T(32) = ((1-T(2))*T(3)-y(5)*(1-T(2))*T(31))/((1-T(2))*T(3)*(1-T(2))*T(3));
T(33) = getPowerDeriv(y(5)/((1-T(2))*T(3)),params(8),1);
T(34) = (-(y(6)*T(2)*T(31)))/(T(2)*T(3)*T(2)*T(3));
T(35) = getPowerDeriv(y(6)/(T(2)*T(3)),params(8),1);
T(36) = (-y(6))/(y(1)*y(1));
T(37) = (-(T(27)*T(36)*2*(T(24)-1)));
T(38) = T(2)*1/T(2)*getPowerDeriv(y(6)/T(2),1+params(8),1);
T(39) = T(30)*T(38);
T(40) = (-(y(5)*(1-T(2))*T(39)))/((1-T(2))*T(3)*(1-T(2))*T(3));
T(41) = (T(2)*T(3)-y(6)*T(2)*T(39))/(T(2)*T(3)*T(2)*T(3));
T(42) = 1/y(1);
T(43) = (-(T(27)*2*(T(24)-1)*T(42)));
T(44) = (-y(14))/(y(6)*y(6));
T(45) = 2*y(14)/y(6);
T(46) = T(11)*y(16)*y(17)*T(17)*T(44)*T(45);
T(47) = 1/y(6);
T(48) = T(11)*y(16)*y(17)*T(17)*T(45)*T(47);
T(49) = getPowerDeriv(T(8),params(1),1);
T(50) = getPowerDeriv(T(8),params(1)-1,1);

end
