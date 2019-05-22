function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = KimModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(9, 1);
lhs = T(9)*y(8);
rhs = T(10)+T(11)*T(12);
residual(1) = lhs - rhs;
lhs = y(8)*T(13);
rhs = T(21)*T(22);
residual(2) = lhs - rhs;
lhs = y(8)*y(9);
rhs = T(11)*y(15)*T(24);
residual(3) = lhs - rhs;
lhs = y(6);
rhs = T(16);
residual(4) = lhs - rhs;
lhs = y(7);
rhs = T(25)^(1/(1-params(9)));
residual(5) = lhs - rhs;
lhs = y(3);
rhs = y(10)*T(17);
residual(6) = lhs - rhs;
lhs = y(6);
rhs = y(10)*T(18);
residual(7) = lhs - rhs;
lhs = y(3);
rhs = T(3)+y(1)*T(19);
residual(8) = lhs - rhs;
lhs = log(y(10));
rhs = params(6)*log(y(2))+params(7)*x(it_, 1);
residual(9) = lhs - rhs;

end
