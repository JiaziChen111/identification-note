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
lhs = T(8)*y(10);
rhs = T(9)+T(10)*T(11);
residual(1) = lhs - rhs;
lhs = y(10)*T(12);
rhs = y(10)*y(11)*y(13)*(1-T(13)-T(19)*T(14))+T(21)*T(16);
residual(2) = lhs - rhs;
lhs = y(10)*y(11);
rhs = T(10)*y(17)*(y(16)+y(18)*(1-params(3)));
residual(3) = lhs - rhs;
lhs = y(9);
rhs = y(2)*(1-params(3))+(1-T(13))*y(7)*y(13);
residual(4) = lhs - rhs;
lhs = y(5);
rhs = y(12)*T(17);
residual(5) = lhs - rhs;
lhs = y(8);
rhs = y(12)*T(18);
residual(6) = lhs - rhs;
lhs = y(5);
rhs = T(2);
residual(7) = lhs - rhs;
lhs = log(y(12));
rhs = params(6)*log(y(3))+params(7)*x(it_, 1);
residual(8) = lhs - rhs;
lhs = log(y(13));
rhs = params(11)*log(y(4))+params(12)*x(it_, 2);
residual(9) = lhs - rhs;

end
