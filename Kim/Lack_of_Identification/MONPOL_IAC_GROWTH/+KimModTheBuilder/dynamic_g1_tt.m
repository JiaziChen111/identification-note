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

assert(length(T) >= 58);

T = KimModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(27) = params(9)/2;
T(28) = (1-T(1))*(y(6)/(1-T(1)))^(1+params(8))+T(1)*(y(7)/T(1))^(1+params(8));
T(29) = (steady_state(9))*(y(14)/T(8))^params(11);
T(30) = (y(5)/(steady_state(1)))^params(12);
T(31) = 1/(steady_state(1))*getPowerDeriv(y(5)/(steady_state(1)),params(12),1);
T(32) = T(29)*T(31);
T(33) = getPowerDeriv(T(21),1-params(13),1);
T(34) = (1-T(1))*1/(1-T(1))*getPowerDeriv(y(6)/(1-T(1)),1+params(8),1);
T(35) = getPowerDeriv(T(28),1/(1+params(8)),1);
T(36) = T(34)*T(35);
T(37) = ((1-T(1))*T(2)-y(6)*(1-T(1))*T(36))/((1-T(1))*T(2)*(1-T(1))*T(2));
T(38) = getPowerDeriv(y(6)/((1-T(1))*T(2)),params(8),1);
T(39) = (-(y(7)*T(1)*T(36)))/(T(1)*T(2)*T(1)*T(2));
T(40) = getPowerDeriv(y(7)/(T(1)*T(2)),params(8),1);
T(41) = (-y(7))/(y(1)*y(1));
T(42) = (-(T(27)*T(41)*2*(T(22)-1)));
T(43) = T(1)*1/T(1)*getPowerDeriv(y(7)/T(1),1+params(8),1);
T(44) = T(35)*T(43);
T(45) = (-(y(6)*(1-T(1))*T(44)))/((1-T(1))*T(2)*(1-T(1))*T(2));
T(46) = (T(1)*T(2)-y(7)*T(1)*T(44))/(T(1)*T(2)*T(1)*T(2));
T(47) = 1/y(1);
T(48) = (-(T(27)*2*(T(22)-1)*T(47)));
T(49) = (-y(16))/(y(7)*y(7));
T(50) = 2*y(16)/y(7);
T(51) = T(11)*y(18)*y(19)*T(17)*T(49)*T(50);
T(52) = 1/y(7);
T(53) = T(11)*y(18)*y(19)*T(17)*T(50)*T(52);
T(54) = getPowerDeriv(T(7),params(1),1);
T(55) = params(1)*getPowerDeriv(T(7),params(1)-1,1);
T(56) = getPowerDeriv(y(4),params(13),1);
T(57) = (steady_state(9))*1/T(8)*getPowerDeriv(y(14)/T(8),params(11),1);
T(58) = T(30)*T(57);

end
