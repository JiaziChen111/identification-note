function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 38);

T = AnSchoModTheBuilder.static_resid_tt(T, y, x, params);

T(23) = (1-params(5))^(1/params(4));
T(24) = (y(7)/T(1))^params(6);
T(25) = (y(4)/T(2))^params(7);
T(26) = 1/T(2);
T(27) = getPowerDeriv(y(4)/T(2),params(7),1);
T(28) = (y(6))*T(24)*T(26)*T(27);
T(29) = getPowerDeriv(T(13),1-params(8),1);
T(30) = getPowerDeriv(y(5),(-params(4)),1);
T(31) = getPowerDeriv(T(7)/T(4),(-1),1);
T(32) = (y(7)-T(12))*y(4)*(T(7)*T(6)*T(30)-T(9)*T(4)*T(30))/(T(7)*T(7))/y(4);
T(33) = getPowerDeriv(y(6),params(8),1);
T(34) = 1/T(1)*getPowerDeriv(y(7)/T(1),params(6),1);
T(35) = (y(6))*T(34);
T(36) = (-1)/(y(8)*y(8));
T(37) = (-(T(23)*y(4)))/(T(2)*T(2));
T(38) = T(27)*T(37);

end
