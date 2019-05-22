function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = KimModTheBuilder.static_resid_tt(T, y, x, params);
end
residual = zeros(9, 1);
lhs = T(8)*y(6);
rhs = T(9)+T(10)*T(11);
residual(1) = lhs - rhs;
lhs = y(6)*T(12);
rhs = y(9)*y(6)*y(7)*(1-T(13)-T(14))+y(7)*y(6)*T(10)*T(15)*T(16);
residual(2) = lhs - rhs;
lhs = y(6)*y(7);
rhs = y(6)*T(10)*(y(4)+y(7)*(1-params(3)));
residual(3) = lhs - rhs;
lhs = y(5);
rhs = y(5)*(1-params(3))+(1-T(13))*y(9)*y(3);
residual(4) = lhs - rhs;
lhs = y(1);
rhs = y(8)*T(17);
residual(5) = lhs - rhs;
lhs = y(4);
rhs = y(8)*T(18);
residual(6) = lhs - rhs;
lhs = y(1);
rhs = T(2);
residual(7) = lhs - rhs;
lhs = log(y(8));
rhs = log(y(8))*params(6)+params(7)*x(1);
residual(8) = lhs - rhs;
lhs = log(y(9));
rhs = log(y(9))*params(11)+params(12)*x(2);
residual(9) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
