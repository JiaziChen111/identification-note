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

assert(length(T) >= 45);

T = AnSchoModTheBuilder.static_resid_tt(T, y, x, params);

T(24) = (1-params(5))^(1/params(4));
T(25) = (y(7)/T(1))^params(6);
T(26) = (y(4)/T(2))^params(7);
T(27) = y(7)^params(16);
T(28) = (y(7))^(1-params(16));
T(29) = 1/T(2);
T(30) = getPowerDeriv(y(4)/T(2),params(7),1);
T(31) = (y(6))*T(25)*T(29)*T(30);
T(32) = getPowerDeriv(T(13),1-params(8),1);
T(33) = getPowerDeriv(y(5),(-params(4)),1);
T(34) = getPowerDeriv(T(7),(-1),1);
T(35) = y(4)*(T(7)*T(6)*T(33)-T(9)*T(4)*T(33))/(T(7)*T(7))/y(4);
T(36) = (y(7)-T(12))*T(35);
T(37) = getPowerDeriv(y(6),params(8),1);
T(38) = getPowerDeriv(y(7),params(16),1);
T(39) = getPowerDeriv((y(7)),1-params(16),1);
T(40) = 1-(T(28)*T(38)+T(27)*T(39));
T(41) = 1/T(1)*getPowerDeriv(y(7)/T(1),params(6),1);
T(42) = (y(6))*T(41);
T(43) = (-1)/(y(8)*y(8));
T(44) = (-(T(24)*y(4)))/(T(2)*T(2));
T(45) = T(30)*T(44);

end
