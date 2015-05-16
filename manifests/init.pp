class ipython (
  $install_method = $ipython::params::install_method,
  $ipython_version = $ipython::params::ipython_version,
  $git_branch = $ipython::params::git_branch,
  $git_tag = $ipython::params::git_tag,
  $python_version = $ipython::params::python_version
  ) inherits ipython::params {
  
  #include ipython::config, ipython::install, ipython::functions
  anchor{ 'ipython::begin': } ->
  class { 'ipython::config':} ->
  class { 'ipython::install': } ->
  anchor{ 'ipython::end': }
  
  }
