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

assert(length(T) >= 45);

T = KimModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(22) = params(9)/2;
T(23) = (1-T(1))*(y(6)/(1-T(1)))^(1+params(8))+T(1)*(y(7)/T(1))^(1+params(8));
T(24) = (1-T(1))*1/(1-T(1))*getPowerDeriv(y(6)/(1-T(1)),1+params(8),1);
T(25) = getPowerDeriv(T(23),1/(1+params(8)),1);
T(26) = T(24)*T(25);
T(27) = ((1-T(1))*T(2)-y(6)*(1-T(1))*T(26))/((1-T(1))*T(2)*(1-T(1))*T(2));
T(28) = getPowerDeriv(y(6)/((1-T(1))*T(2)),params(8),1);
T(29) = (-(y(7)*T(1)*T(26)))/(T(1)*T(2)*T(1)*T(2));
T(30) = getPowerDeriv(y(7)/(T(1)*T(2)),params(8),1);
T(31) = (-y(7))/(y(1)*y(1));
T(32) = (-(T(22)*T(31)*2*(T(19)-1)));
T(33) = T(1)*1/T(1)*getPowerDeriv(y(7)/T(1),1+params(8),1);
T(34) = T(25)*T(33);
T(35) = (-(y(6)*(1-T(1))*T(34)))/((1-T(1))*T(2)*(1-T(1))*T(2));
T(36) = (T(1)*T(2)-y(7)*T(1)*T(34))/(T(1)*T(2)*T(1)*T(2));
T(37) = 1/y(1);
T(38) = (-(T(22)*2*(T(19)-1)*T(37)));
T(39) = (-y(15))/(y(7)*y(7));
T(40) = 2*y(15)/y(7);
T(41) = T(10)*y(17)*y(18)*T(15)*T(39)*T(40);
T(42) = 1/y(7);
T(43) = T(10)*y(17)*y(18)*T(15)*T(40)*T(42);
T(44) = getPowerDeriv(T(7),params(1),1);
T(45) = params(1)*getPowerDeriv(T(7),params(1)-1,1);

end
