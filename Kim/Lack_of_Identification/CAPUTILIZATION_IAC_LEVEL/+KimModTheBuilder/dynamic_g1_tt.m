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

T(26) = (1-T(2))*(y(4)/(1-T(2)))^(1+params(8))+T(2)*(y(5)/T(2))^(1+params(8));
T(27) = (1-T(2))*1/(1-T(2))*getPowerDeriv(y(4)/(1-T(2)),1+params(8),1);
T(28) = getPowerDeriv(T(26),1/(1+params(8)),1);
T(29) = T(27)*T(28);
T(30) = ((1-T(2))*T(3)-y(4)*(1-T(2))*T(29))/((1-T(2))*T(3)*(1-T(2))*T(3));
T(31) = getPowerDeriv(y(4)/((1-T(2))*T(3)),params(8),1);
T(32) = (-(y(5)*T(2)*T(29)))/(T(2)*T(3)*T(2)*T(3));
T(33) = getPowerDeriv(y(5)/(T(2)*T(3)),params(8),1);
T(34) = T(2)*1/T(2)*getPowerDeriv(y(5)/T(2),1+params(8),1);
T(35) = T(28)*T(34);
T(36) = (-(y(4)*(1-T(2))*T(35)))/((1-T(2))*T(3)*(1-T(2))*T(3));
T(37) = (T(2)*T(3)-y(5)*T(2)*T(35))/(T(2)*T(3)*T(2)*T(3));
T(38) = (-(y(7)*params(3)))/(y(5)*y(5));
T(39) = getPowerDeriv(y(7)*params(3)/y(5),params(9),1);
T(40) = params(3)*T(14)/params(3)*getPowerDeriv(y(5)*T(14)/params(3),1-params(9),1);
T(41) = getPowerDeriv(T(25),1/(1-params(9)),1);
T(42) = (1-params(3))*getPowerDeriv(y(1),1-params(9),1);
T(43) = getPowerDeriv(T(8),params(1),1);
T(44) = getPowerDeriv(T(8),params(1)-1,1);
T(45) = (-y(14))/(y(7)*y(7));
T(46) = getPowerDeriv(y(14)/y(7),params(9),1);

end
