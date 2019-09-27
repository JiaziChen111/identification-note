function T = static_g2_tt(T, y, x, params)
% function T = static_g2_tt(T, y, x, params)
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

assert(length(T) >= 36);

T = AnSchoModTheBuilder.static_g1_tt(T, y, x, params);

T(34) = getPowerDeriv(y(5),(-params(4)),2);
T(35) = getPowerDeriv(T(5)/y(10),(-1),2);
T(36) = getPowerDeriv(T(11),1-params(8),2);

end
