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
    T = AnSchoModTheBuilder.static_resid_tt(T, y, x, params);
end
residual = zeros(10, 1);
lhs = T(6);
rhs = y(6)*T(7)*T(8)/y(7)/(T(9)*y(9));
residual(1) = lhs - rhs;
lhs = 1;
rhs = 1/params(5)*(1-(T(6)/y(10))^(-1))+y(7)*params(14)*(y(7)-T(10))-params(14)/(2*params(5))*T(14)-T(7)*params(14)*y(7)*T(15);
residual(2) = lhs - rhs;
lhs = y(4)-y(4)*T(14)*params(14)/2;
rhs = y(5)+y(4)*(1-1/y(8));
residual(3) = lhs - rhs;
lhs = y(6);
rhs = T(16)*T(17)*exp(params(11)*x(1));
residual(4) = lhs - rhs;
lhs = log(y(8));
rhs = (1-params(9))*log(T(13))+log(y(8))*params(9)+params(12)*x(2);
residual(5) = lhs - rhs;
lhs = log(y(9));
rhs = log(y(9))*params(10)+params(13)*x(3);
residual(6) = lhs - rhs;
lhs = log(y(10));
rhs = log(y(10))*params(16)+params(17)*x(4);
residual(7) = lhs - rhs;
lhs = y(1);
rhs = params(3)+100*log(y(9)/(y(9)));
residual(8) = lhs - rhs;
lhs = y(2);
rhs = params(2)+400*log(y(7)/(y(7)));
residual(9) = lhs - rhs;
lhs = y(3);
rhs = params(1)+params(2)+params(3)*4+400*log(y(6)/(y(6)));
residual(10) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
