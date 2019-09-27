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

assert(length(T) >= 25);

T = AnSchoModTheBuilder.static_resid_tt(T, y, x, params);

T(20) = (y(7)/T(1))^params(6);
T(21) = (y(4)/T(2))^params(7);
T(22) = getPowerDeriv(y(4)/T(2),params(7),1);
T(23) = getPowerDeriv(T(13),1-params(8),1);
T(24) = getPowerDeriv(y(5),(-params(4)),1);
T(25) = 1-((y(7))^(1-params(16))*getPowerDeriv(y(7),params(16),1)+y(7)^params(16)*getPowerDeriv((y(7)),1-params(16),1));

end
