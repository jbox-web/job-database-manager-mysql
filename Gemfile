source 'https://rubygems.org'

gem 'jenkins-plugin-runtime', '~> 0.2.3'

gem 'jenkins-plugin-base',  '~> 1.0.0', git: 'https://github.com/jbox-web/jenkins-plugin-base.git',  tag: '1.0.0'
gem 'job-database-manager', '~> 1.0.0', git: 'https://github.com/jbox-web/job-database-manager.git', tag: '1.0.0'

group :development do
  gem 'jpi', '~> 0.4.0'

  ## Uncomment this line if you want to develop with the last version of Jenkins.
  ## This line **MUST** stay commented when doing "jpi build"
  ## otherwhise jpi bundle the war file into the .hpi file (about 65mo)
  gem 'jenkins-war', git: 'https://github.com/jbox-web/jenkins-war.git', branch: 'v1.628'
end
