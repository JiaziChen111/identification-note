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

assert(length(T) >= 24);

T = AnSchoModTheBuilder.static_resid_tt(T, y, x, params);

T(19) = (y(7)/T(1))^params(6);
T(20) = (y(4)/T(2))^params(7);
T(21) = getPowerDeriv(y(4)/T(2),params(7),1);
T(22) = getPowerDeriv(T(12),1-params(8),1);
T(23) = getPowerDeriv(y(5),(-params(4)),1);
T(24) = getPowerDeriv(T(6)/y(10),(-1),1);

end
