function [ys_, params, info] = steadystate(ys_, exo_, params)
% Steady state generated by Dynare preprocessor
    info = 0;
    GAMMA=1+params(3)/100;
    BETA=1/(1+params(1)/400);
    PBARSTAR=1+params(2)/400;
    ZBAR=1;
    ys_(9)=ZBAR;
    ys_(7)=PBARSTAR;
    ys_(8)=1/params(15);
    ys_(6)=PBARSTAR*GAMMA*ZBAR/BETA;
    ys_(5)=(1-params(5))^(1/params(4));
    ys_(4)=ys_(8)*ys_(5);
    ys_(1)=params(3);
    ys_(2)=params(2);
    ys_(3)=params(1)+params(2)+params(3)*4;
    % Auxiliary equations
    check_=0;
end
