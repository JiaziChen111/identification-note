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
    T = AnSchoModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(10, 1);
lhs = T(5);
rhs = y(12)*T(6)*T(7)/y(19)/(T(8)*y(20));
residual(1) = lhs - rhs;
lhs = 1;
rhs = T(13)*(1-T(5)^(-1))+y(13)*params(14)*(y(13)-T(9))-params(14)/(2*params(5))*(y(13)-T(10))^2+T(14)*y(19)*T(15)*(y(19)-T(10));
residual(2) = lhs - rhs;
lhs = y(10)-y(10)*T(17);
rhs = y(11)+y(10)*(1-1/y(14));
residual(3) = lhs - rhs;
lhs = y(12);
rhs = T(18)*T(19)*T(20);
residual(4) = lhs - rhs;
lhs = log(y(14));
rhs = (1-params(9))*log(T(12))+params(9)*log(y(4))+params(12)/100*x(it_, 2);
residual(5) = lhs - rhs;
lhs = log(y(15));
rhs = params(10)*log(y(5))+params(13)/100*x(it_, 3);
residual(6) = lhs - rhs;
lhs = log(y(16));
rhs = params(17)*log(y(6))+params(18)/100*x(it_, 4);
residual(7) = lhs - rhs;
lhs = y(7);
rhs = params(3)+100*(log(T(21))-log(T(22))+log(T(23)));
residual(8) = lhs - rhs;
lhs = y(8);
rhs = params(2)+400*log(T(24));
residual(9) = lhs - rhs;
lhs = y(9);
rhs = params(1)+params(2)+params(3)*4+400*log(T(25));
residual(10) = lhs - rhs;

end
