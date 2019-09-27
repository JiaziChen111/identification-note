function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 27);

T(1) = 1+params(2)/400;
T(2) = (1-params(5))^(1/params(4))*y(13);
T(3) = (1-params(5))^(1/params(4))*y(4);
T(4) = y(10)^(-params(4));
T(5) = 1;
T(6) = y(16)^(-params(4));
T(7) = 1;
T(8) = T(4)*T(5);
T(9) = 1/(1+params(1)/400);
T(10) = T(6)*T(7);
T(11) = 1+params(3)/100;
T(12) = (steady_state(7))^(1-params(17))*y(3)^params(17);
T(13) = y(12)^params(17)*(steady_state(7))^(1-params(17));
T(14) = (steady_state(6))*(y(12)/T(1))^params(6)*(y(9)/T(2))^params(7)*(y(9)/y(1)/(T(2)/T(3)))^params(8);
T(15) = 1/params(16);
T(16) = params(15)/(2*params(5));
T(17) = (y(12)-T(12))^2;
T(18) = T(10)/T(8)*y(15)/y(9);
T(19) = params(15)/2;
T(20) = T(14)^(1-params(9));
T(21) = y(2)^params(9);
T(22) = exp(params(12)*x(it_, 1));
T(23) = y(9)/(steady_state(4));
T(24) = y(1)/(steady_state(4));
T(25) = y(14)/(steady_state(9));
T(26) = y(12)/(steady_state(7));
T(27) = y(11)/(steady_state(6));

end
