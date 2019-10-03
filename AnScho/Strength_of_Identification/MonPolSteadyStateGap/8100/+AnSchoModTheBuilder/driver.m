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
M_.fname = 'AnSchoModTheBuilder';
M_.dynare_version = '4.6-unstable';
oo_.dynare_version = '4.6-unstable';
options_.dynare_version = '4.6-unstable';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('AnSchoModTheBuilder.log');
options_.console_mode = true;
options_.nodisplay = true;
M_.exo_names = cell(3,1);
M_.exo_names_tex = cell(3,1);
M_.exo_names_long = cell(3,1);
M_.exo_names(1) = {'epsr'};
M_.exo_names_tex(1) = {'{\varepsilon^R}'};
M_.exo_names_long(1) = {'monetary policy shock'};
M_.exo_names(2) = {'epsg'};
M_.exo_names_tex(2) = {'{\varepsilon^g}'};
M_.exo_names_long(2) = {'government spending shock'};
M_.exo_names(3) = {'epsz'};
M_.exo_names_tex(3) = {'{\varepsilon^z}'};
M_.exo_names_long(3) = {'total factor productivity growth shock'};
M_.endo_names = cell(9,1);
M_.endo_names_tex = cell(9,1);
M_.endo_names_long = cell(9,1);
M_.endo_names(1) = {'YGR'};
M_.endo_names_tex(1) = {'{YGR}'};
M_.endo_names_long(1) = {'output growth rate (quarter-on-quarter)'};
M_.endo_names(2) = {'INFL'};
M_.endo_names_tex(2) = {'{INFL}'};
M_.endo_names_long(2) = {'annualized inflation rate'};
M_.endo_names(3) = {'INT'};
M_.endo_names_tex(3) = {'{INT}'};
M_.endo_names_long(3) = {'annualized nominal interest rate'};
M_.endo_names(4) = {'y'};
M_.endo_names_tex(4) = {'{y}'};
M_.endo_names_long(4) = {'detrended output (Y/A)'};
M_.endo_names(5) = {'c'};
M_.endo_names_tex(5) = {'{c}'};
M_.endo_names_long(5) = {'detrended consumption (C/A)'};
M_.endo_names(6) = {'r'};
M_.endo_names_tex(6) = {'{R}'};
M_.endo_names_long(6) = {'nominal interest rate'};
M_.endo_names(7) = {'p'};
M_.endo_names_tex(7) = {'{\pi}'};
M_.endo_names_long(7) = {'gross inflation rate'};
M_.endo_names(8) = {'g'};
M_.endo_names_tex(8) = {'{g}'};
M_.endo_names_long(8) = {'government consumption process (g = 1/(1-G/Y))'};
M_.endo_names(9) = {'z'};
M_.endo_names_tex(9) = {'{z}'};
M_.endo_names_long(9) = {'shifter to steady-state technology growth'};
M_.endo_partitions = struct();
M_.param_names = cell(15,1);
M_.param_names_tex = cell(15,1);
M_.param_names_long = cell(15,1);
M_.param_names(1) = {'RA'};
M_.param_names_tex(1) = {'{r_{A}}'};
M_.param_names_long(1) = {'annualized steady-state real interest rate'};
M_.param_names(2) = {'PA'};
M_.param_names_tex(2) = {'{\pi^{(A)}}'};
M_.param_names_long(2) = {'annualized target inflation rate'};
M_.param_names(3) = {'GAMQ'};
M_.param_names_tex(3) = {'{\gamma^{(Q)}}'};
M_.param_names_long(3) = {'quarterly steady-state growth rate of technology'};
M_.param_names(4) = {'TAU'};
M_.param_names_tex(4) = {'{\tau}'};
M_.param_names_long(4) = {'inverse of intertemporal elasticity of subsitution'};
M_.param_names(5) = {'NU'};
M_.param_names_tex(5) = {'{\nu}'};
M_.param_names_long(5) = {'inverse of elasticity of demand in Dixit Stiglitz aggregator'};
M_.param_names(6) = {'PSIP'};
M_.param_names_tex(6) = {'{\psi_\pi}'};
M_.param_names_long(6) = {'Taylor rule sensitivity parameter to inflation deviations'};
M_.param_names(7) = {'PSIY'};
M_.param_names_tex(7) = {'{\psi_y}'};
M_.param_names_long(7) = {'Taylor rule sensitivity parameter to output deviations'};
M_.param_names(8) = {'RHOR'};
M_.param_names_tex(8) = {'{\rho_R}'};
M_.param_names_long(8) = {'Taylor rule persistence'};
M_.param_names(9) = {'RHOG'};
M_.param_names_tex(9) = {'{\rho_{g}}'};
M_.param_names_long(9) = {'persistence government spending process'};
M_.param_names(10) = {'RHOZ'};
M_.param_names_tex(10) = {'{\rho_z}'};
M_.param_names_long(10) = {'persistence TFP growth rate process'};
M_.param_names(11) = {'SIGR'};
M_.param_names_tex(11) = {'{\sigma_R}'};
M_.param_names_long(11) = {'standard deviation monetary policy shock'};
M_.param_names(12) = {'SIGG'};
M_.param_names_tex(12) = {'{\sigma_{g}}'};
M_.param_names_long(12) = {'standard deviation government spending process'};
M_.param_names(13) = {'SIGZ'};
M_.param_names_tex(13) = {'{\sigma_z}'};
M_.param_names_long(13) = {'standard deviation TFP growth shock'};
M_.param_names(14) = {'PHI'};
M_.param_names_tex(14) = {'{\phi}'};
M_.param_names_long(14) = {'Rotemberg adjustment cost parameter'};
M_.param_names(15) = {'C_o_Y'};
M_.param_names_tex(15) = {'{\bar{C}/\bar{Y}}'};
M_.param_names_long(15) = {'steady state consumption to output ratio'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 9;
M_.param_nbr = 15;
M_.orig_endo_nbr = 9;
M_.aux_vars = [];
options_.varobs = cell(3, 1);
options_.varobs(1)  = {'YGR'};
options_.varobs(2)  = {'INFL'};
options_.varobs(3)  = {'INT'};
options_.varobs_id = [ 1 2 3  ];
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.nonzero_hessian_eqs = [0 1 2 3 4 5 6 7 8];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
options_.parallel = struct('Local', 1, 'ComputerName', 'localhost', 'Port', '', 'CPUnbr', [0:71], 'UserName', '', 'Password', '', 'RemoteDrive', '', 'RemoteDirectory', '', 'DynarePath', '', 'MatlabOctavePath', '', 'OperatingSystem', '', 'NodeWeight', '1', 'NumberOfThreadsPerJob', 18, 'SingleCompThread', 'false');
InitializeComputationalEnvironment();
M_.orig_eq_nbr = 9;
M_.eq_nbr = 9;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
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
 0 5 0;
 0 6 0;
 0 7 0;
 1 8 14;
 0 9 15;
 2 10 0;
 0 11 16;
 3 12 0;
 4 13 17;]';
M_.nstatic = 3;
M_.nfwrd   = 2;
M_.npred   = 2;
M_.nboth   = 2;
M_.nsfwrd   = 4;
M_.nspred   = 4;
M_.ndynamic   = 6;
M_.dynamic_tmp_nbr = [11; 21; 3; 0; ];
M_.equations_tags = {
  1 , 'name' , 'Euler equation' ;
  2 , 'name' , 'Price setting based on Rotemberg quadratic price adjustment costs and Dixit/Stiglitz aggregator' ;
  3 , 'name' , 'Market clearing: aggregate supply equals aggregate demand' ;
  4 , 'name' , 'Taylor rule' ;
  5 , 'name' , 'Government spending process' ;
  6 , 'name' , 'Technology growth process' ;
  7 , 'name' , 'Output growth (q-on-q)' ;
  8 , 'name' , 'Annualized inflation' ;
  9 , 'name' , 'Annualized nominal interest rate' ;
};
M_.static_and_dynamic_models_differ = false;
M_.state_var = [4 6 8 9 ];
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(9, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(15, 1);
M_.NNZDerivatives = [34; 72; -1; ];
M_.static_tmp_nbr = [5; 4; 0; 0; ];
M_.params( 1 ) = 1;
RA = M_.params( 1 );
M_.params( 2 ) = 3.2;
PA = M_.params( 2 );
M_.params( 3 ) = 0.55;
GAMQ = M_.params( 3 );
M_.params( 4 ) = 2;
TAU = M_.params( 4 );
M_.params( 5 ) = 0.1;
NU = M_.params( 5 );
M_.params( 6 ) = 1.5;
PSIP = M_.params( 6 );
M_.params( 7 ) = 0.125;
PSIY = M_.params( 7 );
PSIDY   = 0.2;
M_.params( 8 ) = 0.75;
RHOR = M_.params( 8 );
M_.params( 9 ) = 0.95;
RHOG = M_.params( 9 );
M_.params( 10 ) = 0.9;
RHOZ = M_.params( 10 );
M_.params( 11 ) = 0.2;
SIGR = M_.params( 11 );
M_.params( 12 ) = 0.6;
SIGG = M_.params( 12 );
M_.params( 13 ) = 0.3;
SIGZ = M_.params( 13 );
M_.params( 15 ) = 0.85;
C_o_Y = M_.params( 15 );
M_.params( 14 ) = 50;
PHI = M_.params( 14 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(2, 2) = 1;
M_.Sigma_e(3, 3) = 1;
estim_params_.var_exo = zeros(0, 10);
estim_params_.var_endo = zeros(0, 10);
estim_params_.corrx = zeros(0, 11);
estim_params_.corrn = zeros(0, 11);
estim_params_.param_vals = zeros(0, 10);
estim_params_.param_vals = [estim_params_.param_vals; 1, 1, 1e-5, 10, 2, 0.8, 0.5, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 2, 3.2, 1e-5, 20, 2, 4, 2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 3, 0.55, (-5), 5, 3, 0.4, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 4, 2, 1e-5, 10, 2, 2, 0.5, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 5, 0.1, 1e-5, 0.99999, 1, 0.1, 0.05, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 6, 1.5, 1e-5, 10, 2, 1.5, 0.25, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 7, 0.125, 1e-5, 10, 2, 0.5, 0.25, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 8, 0.75, 1e-5, 0.99999, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 9, 0.95, 1e-5, 0.99999, 1, 0.8, 0.1, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 10, 0.9, 1e-5, 0.99999, 1, 0.66, 0.15, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 11, 0.2, 1e-8, 5, 4, 0.3, 4, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 12, 0.6, 1e-8, 5, 4, 0.4, 4, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 13, 0.3, 1e-8, 5, 4, 0.4, 4, NaN, NaN, NaN ];
steady;
resid;                  
oo_.dr.eigval = check(M_,options_,oo_);
model_diagnostics(M_,options_,oo_);
disp(' ');
copyfile('../simdat.mat');
pause(1);
options_.TeX = true;
options_.cova_compute = 1;
options_.mh_replic = 0;
options_.mode_check.status = true;
options_.mode_compute = 4;
options_.plot_priors = 0;
options_.datafile = 'simdat';
options_.first_obs = 1234;
options_.nobs = 8100;
options_.order = 1;
var_list_ = {};
oo_recursive_=dynare_estimation(var_list_);
movefile([M_.fname '_mode.mat'], 'finalmode.mat'); 
weakresults_hessian = (diag(oo_.posterior.optimization.Variance).*8100).^(-1)';
options_.TeX = true;
options_.mh_jscale = 0.6;
options_.mh_nblck = 4;
options_.mh_replic = 1000000;
options_.mode_compute = 0;
options_.plot_priors = 0;
options_.datafile = 'simdat';
options_.mode_file = 'finalmode';
options_.first_obs = 1234;
options_.nobs = 8100;
options_.order = 1;
var_list_ = {};
oo_recursive_=dynare_estimation(var_list_);
weakresults_mcmc = (diag(oo_.posterior.metropolis.Variance).*8100).^(-1)';
collect_latex_files;
system(['pdflatex -halt-on-error -interaction=batchmode ' M_.fname '_TeX_binder.tex'])
save('AnSchoModTheBuilder_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('AnSchoModTheBuilder_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('AnSchoModTheBuilder_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('AnSchoModTheBuilder_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('AnSchoModTheBuilder_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('AnSchoModTheBuilder_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('AnSchoModTheBuilder_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
