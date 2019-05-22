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

assert(length(T) >= 48);

T = KimModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(23) = params(9)/2;
T(24) = (1-T(1))*(y(6)/(1-T(1)))^(1+params(8))+T(1)*(y(7)/T(1))^(1+params(8));
T(25) = getPowerDeriv(y(6)-T(3),(-1),1);
T(26) = (1-T(1))*1/(1-T(1))*getPowerDeriv(y(6)/(1-T(1)),1+params(8),1);
T(27) = getPowerDeriv(T(24),1/(1+params(8)),1);
T(28) = T(26)*T(27);
T(29) = ((1-T(1))*T(2)-y(6)*(1-T(1))*T(28))/((1-T(1))*T(2)*(1-T(1))*T(2));
T(30) = getPowerDeriv(y(6)/((1-T(1))*T(2)),params(8),1);
T(31) = getPowerDeriv(y(13)-T(5),(-1),1);
T(32) = (-(y(7)*T(1)*T(28)))/(T(1)*T(2)*T(1)*T(2));
T(33) = getPowerDeriv(y(7)/(T(1)*T(2)),params(8),1);
T(34) = (-y(7))/(y(2)*y(2));
T(35) = (-(T(23)*T(34)*2*(T(20)-1)));
T(36) = T(1)*1/T(1)*getPowerDeriv(y(7)/T(1),1+params(8),1);
T(37) = T(27)*T(36);
T(38) = (-(y(6)*(1-T(1))*T(37)))/((1-T(1))*T(2)*(1-T(1))*T(2));
T(39) = (T(1)*T(2)-y(7)*T(1)*T(37))/(T(1)*T(2)*T(1)*T(2));
T(40) = 1/y(2);
T(41) = (-(T(23)*2*(T(20)-1)*T(40)));
T(42) = (-y(14))/(y(7)*y(7));
T(43) = 2*y(14)/y(7);
T(44) = T(10)*y(16)*y(17)*T(16)*T(42)*T(43);
T(45) = 1/y(7);
T(46) = T(10)*y(16)*y(17)*T(16)*T(43)*T(45);
T(47) = getPowerDeriv(T(7),params(1),1);
T(48) = params(1)*getPowerDeriv(T(7),params(1)-1,1);

end
