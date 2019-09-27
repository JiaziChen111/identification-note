%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'KimModTheBuilder';
M_.dynare_version = '4.6-unstable';
oo_.dynare_version = '4.6-unstable';
options_.dynare_version = '4.6-unstable';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('KimModTheBuilder.log');
options_.console_mode = true;
options_.nodisplay = true;
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'epsa'};
M_.exo_names_tex(1) = {'{\varepsilon^A}'};
M_.exo_names_long(1) = {'total factor productivity shock'};
M_.endo_names = cell(8,1);
M_.endo_names_tex = cell(8,1);
M_.endo_names_long = cell(8,1);
M_.endo_names(1) = {'y'};
M_.endo_names_tex(1) = {'{Y}'};
M_.endo_names_long(1) = {'output'};
M_.endo_names(2) = {'c'};
M_.endo_names_tex(2) = {'{C}'};
M_.endo_names_long(2) = {'consumption'};
M_.endo_names(3) = {'iv'};
M_.endo_names_tex(3) = {'{I}'};
M_.endo_names_long(3) = {'investment'};
M_.endo_names(4) = {'rk'};
M_.endo_names_tex(4) = {'{R^{K}}'};
M_.endo_names_long(4) = {'rental rate of capital'};
M_.endo_names(5) = {'k'};
M_.endo_names_tex(5) = {'{K}'};
M_.endo_names_long(5) = {'private capital stock'};
M_.endo_names(6) = {'lam'};
M_.endo_names_tex(6) = {'{\Lambda}'};
M_.endo_names_long(6) = {'marginal utility, i.e. Lagrange multiplier budget'};
M_.endo_names(7) = {'q'};
M_.endo_names_tex(7) = {'{Q}'};
M_.endo_names_long(7) = {'Tobins Q, i.e. Lagrange multiplier capital stock'};
M_.endo_names(8) = {'a'};
M_.endo_names_tex(8) = {'{A}'};
M_.endo_names_long(8) = {'total factor productivity'};
M_.endo_partitions = struct();
M_.param_names = cell(9,1);
M_.param_names_tex = cell(9,1);
M_.param_names_long = cell(9,1);
M_.param_names(1) = {'ALPHA'};
M_.param_names_tex(1) = {'{\alpha}'};
M_.param_names_long(1) = {'bias towards capital in production'};
M_.param_names(2) = {'RA'};
M_.param_names_tex(2) = {'{r_{A}}'};
M_.param_names_long(2) = {'annual steady-state real interest rate (defines discount factor)'};
M_.param_names(3) = {'DELTA'};
M_.param_names_tex(3) = {'{\delta}'};
M_.param_names_long(3) = {'depreciation rate'};
M_.param_names(4) = {'QBAR'};
M_.param_names_tex(4) = {'{\bar{Q}}'};
M_.param_names_long(4) = {'steady state Tobins Q'};
M_.param_names(5) = {'ABAR'};
M_.param_names_tex(5) = {'{\bar{A}}'};
M_.param_names_long(5) = {'steady state technology'};
M_.param_names(6) = {'RHOA'};
M_.param_names_tex(6) = {'{\rho_A}'};
M_.param_names_long(6) = {'persistence TFP'};
M_.param_names(7) = {'SIGA'};
M_.param_names_tex(7) = {'{\sigma_A}'};
M_.param_names_long(7) = {'standard deviation TFP shock'};
M_.param_names(8) = {'THETA'};
M_.param_names_tex(8) = {'{\theta}'};
M_.param_names_long(8) = {'multisectoral adjustment cost parameter'};
M_.param_names(9) = {'KAPPA'};
M_.param_names_tex(9) = {'{\kappa}'};
M_.param_names_long(9) = {'investment adjustment cost parameter'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 8;
M_.param_nbr = 9;
M_.orig_endo_nbr = 8;
M_.aux_vars = [];
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
options_.parallel = struct('Local', 1, 'ComputerName', 'localhost', 'Port', '', 'CPUnbr', [0:7], 'UserName', '', 'Password', '', 'RemoteDrive', '', 'RemoteDirectory', '', 'DynarePath', '', 'MatlabOctavePath', '', 'OperatingSystem', '', 'NodeWeight', '1', 'NumberOfThreadsPerJob', 2, 'SingleCompThread', 'false');
InitializeComputationalEnvironment();
M_.orig_eq_nbr = 8;
M_.eq_nbr = 8;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.max_endo_lag_by_var = [0 1 0 1 1 1 1 0 ];
M_.max_exo_lag_by_var = [0 ];
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 3 0;
 0 4 11;
 0 5 0;
 0 6 12;
 1 7 13;
 0 8 14;
 0 9 15;
 2 10 0;]';
M_.nstatic = 2;
M_.nfwrd   = 4;
M_.npred   = 1;
M_.nboth   = 1;
M_.nsfwrd   = 5;
M_.nspred   = 2;
M_.ndynamic   = 6;
M_.dynamic_tmp_nbr = [21; 8; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , 'foc household wrt c (marginal utility of consumption)' ;
  2 , 'name' , 'foc household wrt iv (Tobins Q)' ;
  3 , 'name' , 'foc household wrt k (Euler equation capital)' ;
  4 , 'name' , 'capital accumulation' ;
  5 , 'name' , 'production function' ;
  6 , 'name' , 'firm capital demand' ;
  7 , 'name' , 'market clearing (resource constraint)' ;
  8 , 'name' , 'Evolution of technology' ;
};
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [5 8 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(8, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(9, 1);
M_.NNZDerivatives = [31; -1; -1; ];
M_.static_tmp_nbr = [4; 15; 0; 0; ];
IBAR_O_YBAR = 0.25;         
KBAR_O_YBAR = 10;           
M_.params( 3 ) = IBAR_O_YBAR/KBAR_O_YBAR;
DELTA = M_.params( 3 );
M_.params( 2 ) = 2;
RA = M_.params( 2 );
BETTABAR    = 1/(1+RA/400); 
M_.params( 8 ) = 1.5;
THETA = M_.params( 8 );
M_.params( 9 ) = 2;
KAPPA = M_.params( 9 );
HBAR        = 0.6;          
ETAC        = 2;            
ETAL        = 1.5;          
LBAR        = 1;            
M_.params( 6 ) = 0.5;
RHOA = M_.params( 6 );
RHOUPSILON  = 0.5;          
RHOR        = 0.5;          
M_.params( 7 ) = 0.6;
SIGA = M_.params( 7 );
SIGUPSILON  = 0.6;          
SIGR        = 0.2;          
PIEA        = 3.2;          
PIEBAR      = 1+PIEA/400;   
PSIPIE      = 1.5;          
PSIY        = 0.125;        
M_.params( 5 ) = 1;
ABAR = M_.params( 5 );
M_.params( 4 ) = 1;
QBAR = M_.params( 4 );
UKBAR       = 1;            
UPSILONBAR  = 1;            
RKBAR = (1/BETTABAR+DELTA-1)*QBAR; 
M_.params( 1 ) = KBAR_O_YBAR*RKBAR;
ALPHA = M_.params( 1 );
KSBAR_o_LBAR = (ALPHA*ABAR/RKBAR)^(1/(1-ALPHA));   
KSBAR = KSBAR_o_LBAR*LBAR;                         
KBAR_o_LBAR = KSBAR_o_LBAR;       
KBAR = KSBAR;                     
IVBAR = DELTA/UPSILONBAR*KBAR;          
YBAR = ABAR*KSBAR^ALPHA*LBAR^(1-ALPHA); 
YSBAR = YBAR;                   
SAVBAR = IVBAR / YSBAR;  
CBAR = (1-SAVBAR)*YSBAR; 
YDBAR = ( (1-SAVBAR)*(CBAR/(1-SAVBAR))^(1+THETA) + SAVBAR*(IVBAR/SAVBAR)^(1+THETA) )^(1/(1+THETA)); 
XCBAR = ( CBAR/((1-SAVBAR)*YDBAR) )^THETA;                                                          
XIVBAR = ( IVBAR/(SAVBAR*YDBAR) )^THETA;                                                            
HABBAR = 0;          
DHABP_DC_BAR = 0;    
DU_DC_BAR = (CBAR-HABBAR)^(-1);  
DUP_DC_BAR = (CBAR-HABBAR)^(-1)*(-DHABP_DC_BAR); 
LAMBAR = XCBAR^(-1)*(DU_DC_BAR + BETTABAR*DUP_DC_BAR); 
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
estim_params_.var_exo = zeros(0, 10);
estim_params_.var_endo = zeros(0, 10);
estim_params_.corrx = zeros(0, 11);
estim_params_.corrn = zeros(0, 11);
estim_params_.param_vals = zeros(0, 10);
estim_params_.param_vals = [estim_params_.param_vals; 1, 0.3, 1e-8, 0.9999, 3, 0.3, 0.05, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 2, 2, 1e-8, 10, 2, 2, 0.25, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 3, 0.025, 1e-8, 0.9999, 5, NaN, NaN, 0, 1, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 6, 0.5, 1e-8, 0.9999, 1, 0.5, 0.1, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 7, 0.6, 1e-8, 10, 4, 0.6, 2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 8, 1.5, 1e-8, 10, 2, 1.5, 0.75, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 9, 2, 1e-8, 10, 2, 2, 1.5, NaN, NaN, NaN ];
options_.steady.maxit = 50000;
steady;
resid;                  
oo_.dr.eigval = check(M_,options_,oo_);
model_diagnostics(M_,options_,oo_);
disp(' ');
options_.irf = 0;
options_.order = 1;
options_.periods = 50000;
var_list_ = {};
info = stoch_simul(var_list_);
save('../simdat.mat','y','c','iv','rk','k','lam','q','a');
save('KimModTheBuilder_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('KimModTheBuilder_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('KimModTheBuilder_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('KimModTheBuilder_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('KimModTheBuilder_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('KimModTheBuilder_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('KimModTheBuilder_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
