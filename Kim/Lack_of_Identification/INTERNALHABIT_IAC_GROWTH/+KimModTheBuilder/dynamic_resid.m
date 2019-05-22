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
residual = zeros(8, 1);
lhs = T(8)*y(10);
rhs = T(9)+T(10)*T(11);
residual(1) = lhs - rhs;
lhs = y(10)*T(12);
rhs = y(10)*y(11)*T(13)*(1-T(14)-T(20)*T(15))+T(22)*T(17);
residual(2) = lhs - rhs;
lhs = y(10)*y(11);
rhs = T(10)*y(16)*(y(15)+y(17)*(1-params(3)));
residual(3) = lhs - rhs;
lhs = y(9);
rhs = y(3)*(1-params(3))+(1-T(14))*y(7)*T(13);
residual(4) = lhs - rhs;
lhs = y(5);
rhs = y(12)*T(18);
residual(5) = lhs - rhs;
lhs = y(8);
rhs = y(12)*T(19);
residual(6) = lhs - rhs;
lhs = y(5);
rhs = T(2);
residual(7) = lhs - rhs;
lhs = log(y(12));
rhs = params(6)*log(y(4))+params(7)*x(it_, 1);
residual(8) = lhs - rhs;

end
