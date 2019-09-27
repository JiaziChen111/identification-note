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
residual = zeros(9, 1);
lhs = T(6);
rhs = y(10)*T(7)*T(8)/y(16)/(T(9)*y(17));
residual(1) = lhs - rhs;
lhs = 1;
rhs = 1/params(5)*(1-(T(6)/T(3))^(-1))+y(11)*params(14)*(y(11)-T(10))-params(14)/(2*params(5))*T(15)-T(7)*params(14)*y(16)*T(17);
residual(2) = lhs - rhs;
lhs = y(8)-y(8)*T(15)*params(14)/2;
rhs = y(9)+y(8)*(1-1/y(12));
residual(3) = lhs - rhs;
lhs = y(10);
rhs = T(18)*T(19)*exp(params(11)*x(it_, 1));
residual(4) = lhs - rhs;
lhs = log(y(12));
rhs = (1-params(9))*log(T(13))+params(9)*log(y(3))+params(12)*x(it_, 2);
residual(5) = lhs - rhs;
lhs = log(y(13));
rhs = params(10)*log(y(4))+params(13)*x(it_, 3);
residual(6) = lhs - rhs;
lhs = y(5);
rhs = params(3)+100*(log(T(14))-log(T(20))+log(T(21)))+params(16)*x(it_, 4);
residual(7) = lhs - rhs;
lhs = y(6);
rhs = params(2)+400*log(T(22))+params(17)*x(it_, 5);
residual(8) = lhs - rhs;
lhs = y(7);
rhs = params(1)+params(2)+params(3)*4+400*log(T(23))+params(18)*x(it_, 6);
residual(9) = lhs - rhs;

end
