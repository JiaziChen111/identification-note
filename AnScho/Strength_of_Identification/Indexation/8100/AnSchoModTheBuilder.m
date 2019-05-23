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
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'AnSchoModTheBuilder';
M_.dynare_version = '4.5.6';
oo_.dynare_version = '4.5.6';
options_.dynare_version = '4.5.6';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('AnSchoModTheBuilder.log');
options_.console_mode = 1;
options_.nodisplay = 1;
M_.exo_names = 'epsr';
M_.exo_names_tex = '{\varepsilon^R}';
M_.exo_names_long = 'monetary policy shock';
M_.exo_names = char(M_.exo_names, 'epsg');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon^g}');
M_.exo_names_long = char(M_.exo_names_long, 'government spending shock');
M_.exo_names = char(M_.exo_names, 'epsz');
M_.exo_names_tex = char(M_.exo_names_tex, '{\varepsilon^z}');
M_.exo_names_long = char(M_.exo_names_long, 'total factor productivity growth shock');
M_.endo_names = 'YGR';
M_.endo_names_tex = '{YGR}';
M_.endo_names_long = 'output growth rate (quarter-on-quarter)';
M_.endo_names = char(M_.endo_names, 'INFL');
M_.endo_names_tex = char(M_.endo_names_tex, '{INFL}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized inflation rate');
M_.endo_names = char(M_.endo_names, 'INT');
M_.endo_names_tex = char(M_.endo_names_tex, '{INT}');
M_.endo_names_long = char(M_.endo_names_long, 'annualized nominal interest rate');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, '{y}');
M_.endo_names_long = char(M_.endo_names_long, 'detrended output (Y/A)');
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, '{c}');
M_.endo_names_long = char(M_.endo_names_long, 'detrended consumption (C/A)');
M_.endo_names = char(M_.endo_names, 'r');
M_.endo_names_tex = char(M_.endo_names_tex, '{R}');
M_.endo_names_long = char(M_.endo_names_long, 'nominal interest rate');
M_.endo_names = char(M_.endo_names, 'p');
M_.endo_names_tex = char(M_.endo_names_tex, '{\pi}');
M_.endo_names_long = char(M_.endo_names_long, 'gross inflation rate');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, '{g}');
M_.endo_names_long = char(M_.endo_names_long, 'government consumption process (g = 1/(1-G/Y))');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, '{z}');
M_.endo_names_long = char(M_.endo_names_long, 'shifter to steady-state technology growth');
M_.endo_partitions = struct();
M_.param_names = 'RA';
M_.param_names_tex = '{r_{A}}';
M_.param_names_long = 'annualized steady-state real interest rate';
M_.param_names = char(M_.param_names, 'PA');
M_.param_names_tex = char(M_.param_names_tex, '{\pi^{(A)}}');
M_.param_names_long = char(M_.param_names_long, 'annualized target inflation rate');
M_.param_names = char(M_.param_names, 'GAMQ');
M_.param_names_tex = char(M_.param_names_tex, '{\gamma^{(Q)}}');
M_.param_names_long = char(M_.param_names_long, 'quarterly steady-state growth rate of technology');
M_.param_names = char(M_.param_names, 'TAU');
M_.param_names_tex = char(M_.param_names_tex, '{\tau}');
M_.param_names_long = char(M_.param_names_long, 'inverse of intertemporal elasticity of subsitution');
M_.param_names = char(M_.param_names, 'NU');
M_.param_names_tex = char(M_.param_names_tex, '{\nu}');
M_.param_names_long = char(M_.param_names_long, 'inverse of elasticity of demand in Dixit Stiglitz aggregator');
M_.param_names = char(M_.param_names, 'PSIP');
M_.param_names_tex = char(M_.param_names_tex, '{\psi_\pi}');
M_.param_names_long = char(M_.param_names_long, 'Taylor rule sensitivity parameter to inflation deviations');
M_.param_names = char(M_.param_names, 'PSIY');
M_.param_names_tex = char(M_.param_names_tex, '{\psi_y}');
M_.param_names_long = char(M_.param_names_long, 'Taylor rule sensitivity parameter to output deviations');
M_.param_names = char(M_.param_names, 'RHOR');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_R}');
M_.param_names_long = char(M_.param_names_long, 'Taylor rule persistence');
M_.param_names = char(M_.param_names, 'RHOG');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_{g}}');
M_.param_names_long = char(M_.param_names_long, 'persistence government spending process');
M_.param_names = char(M_.param_names, 'RHOZ');
M_.param_names_tex = char(M_.param_names_tex, '{\rho_z}');
M_.param_names_long = char(M_.param_names_long, 'persistence TFP growth rate process');
M_.param_names = char(M_.param_names, 'SIGR');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma_R}');
M_.param_names_long = char(M_.param_names_long, 'standard deviation monetary policy shock');
M_.param_names = char(M_.param_names, 'SIGG');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma_{g}}');
M_.param_names_long = char(M_.param_names_long, 'standard deviation government spending process');
M_.param_names = char(M_.param_names, 'SIGZ');
M_.param_names_tex = char(M_.param_names_tex, '{\sigma_z}');
M_.param_names_long = char(M_.param_names_long, 'standard deviation TFP growth shock');
M_.param_names = char(M_.param_names, 'PHI');
M_.param_names_tex = char(M_.param_names_tex, '{\phi}');
M_.param_names_long = char(M_.param_names_long, 'Rotemberg adjustment cost parameter');
M_.param_names = char(M_.param_names, 'C_o_Y');
M_.param_names_tex = char(M_.param_names_tex, '{\bar{C}/\bar{Y}}');
M_.param_names_long = char(M_.param_names_long, 'steady state consumption to output ratio');
M_.param_names = char(M_.param_names, 'IOTAP');
M_.param_names_tex = char(M_.param_names_tex, '{\iota_p}');
M_.param_names_long = char(M_.param_names_long, 'partial inflation indexation');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 9;
M_.param_nbr = 16;
M_.orig_endo_nbr = 9;
M_.aux_vars = [];
options_.varobs = cell(1);
options_.varobs(1)  = {'YGR'};
options_.varobs(2)  = {'INFL'};
options_.varobs(3)  = {'INT'};
options_.varobs_id = [ 1 2 3  ];
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 0;
options_.parallel = struct('Local', 1, 'ComputerName', 'localhost', 'Port', '', 'CPUnbr', [0:71], 'UserName', '', 'Password', '', 'RemoteDrive', '', 'RemoteDirectory', '', 'DynarePath', '', 'MatlabOctavePath', '', 'OperatingSystem', '', 'NodeWeight', '1', 'NumberOfThreadsPerJob', 18, 'SingleCompThread', 'false');
InitializeComputationalEnvironment();
erase_compiled_function('AnSchoModTheBuilder_static');
erase_compiled_function('AnSchoModTheBuilder_dynamic');
M_.orig_eq_nbr = 9;
M_.eq_nbr = 9;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 6 0;
 0 7 0;
 0 8 0;
 1 9 15;
 0 10 16;
 2 11 0;
 3 12 17;
 4 13 0;
 5 14 18;]';
M_.nstatic = 3;
M_.nfwrd   = 1;
M_.npred   = 2;
M_.nboth   = 3;
M_.nsfwrd   = 4;
M_.nspred   = 5;
M_.ndynamic   = 6;
M_.equations_tags = {
  1 , 'name' , 'Euler equation' ;
  2 , 'name' , 'Phillips curve based on Rotemberg price setting and Dixit/Stiglitz aggregator' ;
  3 , 'name' , 'market clearing' ;
  4 , 'name' , 'Taylor rule' ;
  5 , 'name' , 'government spending process' ;
  6 , 'name' , 'technology growth process' ;
  7 , 'name' , 'output growth (q-on-q)' ;
  8 , 'name' , 'annualized inflation' ;
  9 , 'name' , 'annualized nominal interest rate' ;
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(9, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(16, 1);
M_.NNZDerivatives = [37; 99; -1];
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
M_.params( 16 ) = 0.5;
IOTAP = M_.params( 16 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(2, 2) = 1;
M_.Sigma_e(3, 3) = 1;
estim_params_.var_exo = [];
estim_params_.var_endo = [];
estim_params_.corrx = [];
estim_params_.corrn = [];
estim_params_.param_vals = [];
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
estim_params_.param_vals = [estim_params_.param_vals; 16, 0.5, 1e-8, 0.99999, 1, 0.5, 0.15, NaN, NaN, NaN ];
steady;
resid;                  
oo_.dr.eigval = check(M_,options_,oo_);
model_diagnostics(M_,options_,oo_);
copyfile('../simdat.mat');
pause(1);
optimtypevals=[9 8 4 7 1 6]; 
for jj=1:length(optimtypevals)
numopt = optimtypevals(jj);
if     optimtypevals(jj)==4, disp('RUNNING OPTIMISER-TYPE: Sims');
elseif optimtypevals(jj)==2, disp('RUNNING OPTIMISER-TYPE: Simulated annealing');
elseif optimtypevals(jj)==1, disp('RUNNING OPTIMISER-TYPE: Matlab fmincon');
elseif optimtypevals(jj)==5, disp('RUNNING OPTIMISER-TYPE: Marco Ratto optimiser');
elseif optimtypevals(jj)==7, disp('RUNNING OPTIMISER-TYPE: fminsearch');
elseif optimtypevals(jj)==6, disp('RUNNING OPTIMISER-TYPE: Dynare Monte Carlo');
elseif optimtypevals(jj)==8, disp('RUNNING OPTIMISER-TYPE: Nelson-Mead Simplex');
elseif optimtypevals(jj)==9, disp('RUNNING OPTIMISER-TYPE: CMA-ES');
end
if jj==1
eval(['options_.mode_compute=' num2str(numopt) ';']) ;
options_.cova_compute = 1;
options_.mh_replic = 0;
options_.plot_priors = 0;
options_.datafile = 'simdat';
options_.first_obs = 1234;
options_.nobs = 8100;
options_.order = 1;
var_list_ = char();
oo_recursive_=dynare_estimation(var_list_);
movefile([M_.fname '_mode.mat'], 'newmode.mat'); 
elseif jj>1 && jj<length(optimtypevals)
eval(['options_.mode_compute=' num2str(numopt) ';']) ;
options_.cova_compute = 1;
options_.mh_replic = 0;
options_.plot_priors = 0;
options_.datafile = 'simdat';
options_.mode_file = 'newmode';
options_.first_obs = 1234;
options_.nobs = 8100;
options_.order = 1;
var_list_ = char();
oo_recursive_=dynare_estimation(var_list_);
movefile([M_.fname '_mode.mat'], 'newmode.mat'); 
elseif jj==length(optimtypevals) && numopt == 6
eval(['options_.mode_compute=' num2str(numopt) ';']) ;
options_.gmhmaxlik.target=0.2;
options_.gmhmaxlik.iterations = 1;  
options_.cova_compute = 1;
options_.mh_replic = 0;
options_.mode_check.status = 1;
options_.plot_priors = 0;
options_.datafile = 'simdat';
options_.mode_file = 'newmode';
options_.optim_opt = '''AcceptanceRateTarget'',0.2';
options_.first_obs = 1234;
options_.nobs = 8100;
options_.order = 1;
var_list_ = char();
oo_recursive_=dynare_estimation(var_list_);
end
end
movefile([M_.fname '_mode.mat'], 'finalmode.mat'); 
weakresults_hessian = (diag(oo_.posterior.optimization.Variance).*8100).^(-1)';
options_.mh_jscale = 0.75;
options_.mh_nblck = 4;
options_.mh_replic = 1000000;
options_.mode_compute = 0;
options_.plot_priors = 0;
options_.datafile = 'simdat';
options_.mode_file = 'finalmode';
options_.first_obs = 1234;
options_.nobs = 8100;
options_.order = 1;
var_list_ = char();
oo_recursive_=dynare_estimation(var_list_);
weakresults_mcmc = (diag(oo_.posterior.metropolis.Variance).*8100).^(-1)';
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
