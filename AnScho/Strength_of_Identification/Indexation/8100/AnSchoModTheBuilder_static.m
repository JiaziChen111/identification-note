function [residual, g1, g2, g3] = AnSchoModTheBuilder_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations.
%                                          Dynare may prepend or append auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g3        [M_.endo_nbr by (M_.endo_nbr)^3] double   Third derivatives matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 9, 1);

%
% Model equations
%

GAM__ = 1+params(3)/100;
BET__ = 1/(1+params(1)/400);
PSTAR__ = 1+params(2)/400;
G__ = 1/params(15);
ystar__ = (1-params(5))^(1/params(4))*y(8);
RSTAR__ = (y(6))*(y(7)/PSTAR__)^params(6)*(y(4)/ystar__)^params(7);
gammap__ = y(7)^params(16)*(y(7))^(1-params(16));
gammapback__ = y(7)^params(16)*(y(7))^(1-params(16));
zeta__ = 1;
zetap__ = 1;
du_dc__ = y(5)^(-params(4));
dup_dcp__ = y(5)^(-params(4));
lam__ = du_dc__*zeta__;
lamp__ = dup_dcp__*zetap__;
T89 = y(4)*lamp__/lam__/y(4);
T90 = (y(7)-gammap__)*T89;
T101 = params(14)/2*(y(7)-gammapback__)^2;
T108 = RSTAR__^(1-params(8));
T109 = y(6)^params(8);
T115 = exp(params(11)/100*x(1));
lhs =lam__;
rhs =y(6)*BET__*lamp__/y(7)/(GAM__*y(9));
residual(1)= lhs-rhs;
lhs =1;
rhs =1/params(5)*(1-lam__^(-1))+y(7)*params(14)*(y(7)-gammapback__)-params(14)/(2*params(5))*(y(7)-gammap__)^2+BET__*params(14)*y(7)*T90;
residual(2)= lhs-rhs;
lhs =y(4);
rhs =y(5)+y(4)*(1-1/y(8))+y(4)*T101;
residual(3)= lhs-rhs;
lhs =y(6);
rhs =T108*T109*T115;
residual(4)= lhs-rhs;
lhs =log(y(8));
rhs =(1-params(9))*log(G__)+log(y(8))*params(9)+params(12)/100*x(2);
residual(5)= lhs-rhs;
lhs =log(y(9));
rhs =log(y(9))*params(10)+params(13)/100*x(3);
residual(6)= lhs-rhs;
lhs =y(1);
rhs =params(3)+100*log(y(9)/(y(9)));
residual(7)= lhs-rhs;
lhs =y(2);
rhs =params(2)+400*log(y(7)/(y(7)));
residual(8)= lhs-rhs;
lhs =y(3);
rhs =params(1)+params(2)+params(3)*4+400*log(y(6)/(y(6)));
residual(9)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(9, 9);

  %
  % Jacobian matrix
  %

T35 = (y(7)/PSTAR__)^params(6);
T41 = (y(4)/ystar__)^params(7);
T171 = getPowerDeriv(y(4)/ystar__,params(7),1);
T174 = getPowerDeriv(RSTAR__,1-params(8),1);
T179 = getPowerDeriv(y(5),(-params(4)),1);
T230 = 1-((y(7))^(1-params(16))*getPowerDeriv(y(7),params(16),1)+y(7)^params(16)*getPowerDeriv((y(7)),1-params(16),1));
  g1(1,5)=zeta__*T179-y(6)*BET__*zetap__*T179/y(7)/(GAM__*y(9));
  g1(1,6)=(-(BET__*lamp__/y(7)/(GAM__*y(9))));
  g1(1,7)=(-((-(y(6)*BET__*lamp__))/(y(7)*y(7))/(GAM__*y(9))));
  g1(1,9)=(-((-(y(6)*BET__*lamp__/y(7)*GAM__))/(GAM__*y(9)*GAM__*y(9))));
  g1(2,5)=(-(1/params(5)*(-(zeta__*T179*getPowerDeriv(lam__,(-1),1)))+BET__*params(14)*y(7)*(y(7)-gammap__)*y(4)*(lam__*zetap__*T179-lamp__*zeta__*T179)/(lam__*lam__)/y(4)));
  g1(2,7)=(-(params(14)*(y(7)-gammapback__)+y(7)*params(14)*T230-params(14)/(2*params(5))*T230*2*(y(7)-gammap__)+BET__*params(14)*(T90+y(7)*T89*T230)));
  g1(3,4)=1-(1-1/y(8)+T101);
  g1(3,5)=(-1);
  g1(3,7)=(-(y(4)*params(14)/2*T230*2*(y(7)-gammapback__)));
  g1(3,8)=(-(y(4)*(-((-1)/(y(8)*y(8))))));
  g1(4,4)=(-(T115*T109*(y(6))*T35*1/ystar__*T171*T174));
  g1(4,6)=1-T115*(T109*T174*T35*T41+T108*getPowerDeriv(y(6),params(8),1));
  g1(4,7)=(-(T115*T109*T174*T41*(y(6))*1/PSTAR__*getPowerDeriv(y(7)/PSTAR__,params(6),1)));
  g1(4,8)=(-(T115*T109*T174*(y(6))*T35*T171*(-((1-params(5))^(1/params(4))*y(4)))/(ystar__*ystar__)));
  g1(5,8)=1/y(8)-1/y(8)*params(9);
  g1(6,9)=1/y(9)-params(10)*1/y(9);
  g1(7,1)=1;
  g1(7,9)=(-(100*((y(9))-y(9))/((y(9))*(y(9)))/(y(9)/(y(9)))));
  g1(8,2)=1;
  g1(8,7)=(-(400*((y(7))-y(7))/((y(7))*(y(7)))/(y(7)/(y(7)))));
  g1(9,3)=1;
  g1(9,6)=(-(400*((y(6))-y(6))/((y(6))*(y(6)))/(y(6)/(y(6)))));
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],9,81);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],9,729);
end
end
end
end
