function setup()
% Setup the paths needed to run the benchmark

% Check if vl feat is already in path, if yes, then do nothing
if(exist('vl_demo','file')),
  fprintf('VLFeat already found loaded\n');
else
  cwd=commonFns.extractDirPath(mfilename('fullpath'));
  installVersion = '0.9.14';
  installDir = fullfile(cwd,'thirdParty');
  vlFeatDir = fullfile(installDir,['vlfeat-' installVersion]);
  if(exist(vlFeatDir,'dir'))
    run(fullfile(vlFeatDir,'toolbox','vl_setup.m'));
  else
    error('VLFeat not found, cannot setup properly.\nEither load your own copy of vlFeat, or run install() to install a local copy.\n');
  end
end
