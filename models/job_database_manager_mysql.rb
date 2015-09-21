require 'jenkins_plugin_base'
require 'job_database_manager'

require_relative 'job_database_manager_mysql_descriptor'
require_relative 'mysql_adapter'

#
# This is the main entry point for Jenkins plugins.
#

class JobDatabaseManagerMysql < Jenkins::Model::RootAction
  #
  # This should be available for all plugins.
  # It adds the 2 methods below : *set_plugin_name* and *set_plugin_settings*
  #
  include ::JenkinsPluginBase::BasePlugin
end


#
# Register our new class in Jenkins plugins
#
Jenkins::Plugin.instance.register_extension(JobDatabaseManagerMysql)
