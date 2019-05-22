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

assert(length(T) >= 56);

T = AnSchoModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(26) = (1-params(5))^(1/params(4));
T(27) = (steady_state(6))*(y(12)/T(1))^params(6);
T(28) = (y(9)/T(2))^params(7);
T(29) = 1/(steady_state(4));
T(30) = (-(T(8)/T(6)*y(16)))/(y(9)*y(9));
T(31) = (y(18)-T(11))*T(30);
T(32) = 1/T(2);
T(33) = getPowerDeriv(y(9)/T(2),params(7),1);
T(34) = T(27)*T(32)*T(33);
T(35) = getPowerDeriv(T(12),1-params(8),1);
T(36) = T(8)/T(6)/y(9);
T(37) = (y(18)-T(11))*T(36);
T(38) = getPowerDeriv(y(10),(-params(4)),1);
T(39) = y(15)*T(38);
T(40) = getPowerDeriv(T(6),(-1),1);
T(41) = y(16)*(-(T(8)*T(39)))/(T(6)*T(6))/y(9);
T(42) = (y(18)-T(11))*T(41);
T(43) = getPowerDeriv(y(17),(-params(4)),1);
T(44) = T(5)*T(43);
T(45) = y(16)*T(44)/T(6)/y(9);
T(46) = (y(18)-T(11))*T(45);
T(47) = getPowerDeriv(y(2),params(8),1);
T(48) = (steady_state(6))*1/T(1)*getPowerDeriv(y(12)/T(1),params(6),1);
T(49) = T(28)*T(48);
T(50) = (-(T(26)*y(9)))/(T(2)*T(2));
T(51) = T(27)*T(33)*T(50);
T(52) = y(16)*(-(T(3)*T(8)))/(T(6)*T(6))/y(9);
T(53) = (y(18)-T(11))*T(52);
T(54) = y(16)*T(4)/T(6)/y(9);
T(55) = (y(18)-T(11))*T(54);
T(56) = params(11)/100*T(20);

end
