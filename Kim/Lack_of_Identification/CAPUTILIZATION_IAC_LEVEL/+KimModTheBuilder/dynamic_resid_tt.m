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

assert(length(T) >= 25);

T(1) = 0;
T(2) = (steady_state(3))/((steady_state(1))-T(1)*(steady_state(5)));
T(3) = ((1-T(2))*(y(4)/(1-T(2)))^(1+params(8))+T(2)*(y(5)/T(2))^(1+params(8)))^(1/(1+params(8)));
T(4) = 0;
T(5) = 0;
T(6) = 0;
T(7) = 0;
T(8) = y(11)*y(1);
T(9) = (y(4)/((1-T(2))*T(3)))^params(8);
T(10) = (y(4)-T(4))^(-1)*(1-T(5));
T(11) = 1/(1+params(2)/400);
T(12) = (y(12)-T(6))^(-1)*(-T(7));
T(13) = (y(5)/(T(2)*T(3)))^params(8);
T(14) = 1;
T(15) = (1-params(11))*(y(17)-(steady_state(9)))+params(11)/2*(y(17)-(steady_state(9)))^2;
T(16) = 1-params(11)+params(11)*(y(11)-(steady_state(9)));
T(17) = T(8)^params(1);
T(18) = params(1)*T(8)^(params(1)-1);
T(19) = (1-params(11))*(y(11)-(steady_state(9)))+params(11)/2*(y(11)-(steady_state(9)))^2;
T(20) = T(14)^(-params(9));
T(21) = y(8)*y(9)*T(20);
T(22) = (y(7)*params(3)/y(5))^params(9);
T(23) = (y(14)/y(7))^params(9);
T(24) = y(17)*y(13)-T(15)+(1-params(3))*y(16)*T(23);
T(25) = (1-params(3))*y(1)^(1-params(9))+params(3)*(y(5)*T(14)/params(3))^(1-params(9));

end
