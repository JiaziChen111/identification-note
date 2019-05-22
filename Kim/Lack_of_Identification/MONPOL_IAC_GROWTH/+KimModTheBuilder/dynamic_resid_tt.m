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

assert(length(T) >= 26);

T(1) = (steady_state(3))/(steady_state(1));
T(2) = ((1-T(1))*(y(6)/(1-T(1)))^(1+params(8))+T(1)*(y(7)/T(1))^(1+params(8)))^(1/(1+params(8)));
T(3) = 0;
T(4) = 0;
T(5) = 0;
T(6) = 0;
T(7) = y(2);
T(8) = 1+params(10)/400;
T(9) = (y(6)/((1-T(1))*T(2)))^params(8);
T(10) = (y(6)-T(3))^(-1)*(1-T(4));
T(11) = 1/(1+params(2)/400);
T(12) = (y(15)-T(5))^(-1)*(-T(6));
T(13) = (y(7)/(T(1)*T(2)))^params(8);
T(14) = 1;
T(15) = params(9)/2*(y(7)/y(1)-1)^2;
T(16) = params(9)*(y(7)/y(1)-1);
T(17) = 1;
T(18) = params(9)*(y(16)/y(7)-1);
T(19) = T(7)^params(1);
T(20) = params(1)*T(7)^(params(1)-1);
T(21) = (steady_state(9))*(y(14)/T(8))^params(11)*(y(5)/(steady_state(1)))^params(12);
T(22) = y(7)/y(1);
T(23) = (y(16)/y(7))^2;
T(24) = T(11)*y(18)*y(19)*T(17)*T(23);
T(25) = T(21)^(1-params(13));
T(26) = y(4)^params(13);

end
