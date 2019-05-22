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

assert(length(T) >= 52);

T = AnSchoModTheBuilder.static_g1_tt(T, y, x, params);

T(49) = getPowerDeriv(y(5),(-params(4)),2);
T(50) = getPowerDeriv(T(7),(-1),2);
T(51) = getPowerDeriv(y(4)/T(2),params(7),2);
T(52) = getPowerDeriv(T(13),1-params(9),2);

end
