Jenkins::Plugin::Specification.new do |plugin|
  plugin.name         = 'job-database-manager-mysql'
  plugin.display_name = 'Job Database Manager for MySQL'
  plugin.version      = '1.0.0'
  plugin.description  = 'Automatically create and delete a MySQL database for a job.'
  plugin.url          = 'http://jbox-web.github.io/job-database-manager-mysql/'

  plugin.developed_by 'Tim Fischbach', 'tfischbach@codevise.de'
  plugin.developed_by 'Nicolas Rodriguez', 'nrodriguez@jbox-web.com'

  plugin.uses_repository :git => 'https://github.com/jbox-web/job-database-manager-mysql.git'

  plugin.depends_on 'ruby-runtime', '0.12'
end
