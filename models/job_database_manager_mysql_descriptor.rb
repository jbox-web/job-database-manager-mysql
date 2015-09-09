# This is the main Descriptor for your plugin.
# It handles plugin's global configuration.
# It must respond to these methods :
#  * load
#  * save
#  * configure

require 'jenkins_plugin_base'
require 'job_database_manager'

class JobDatabaseManagerMysqlDescriptor < Jenkins::Model::DefaultDescriptor

  #
  # Include PluginConfig::Base module to add the basic methods.
  #
  include ::JenkinsPluginBase::BaseConfig

  class << self

    def plugin_name
      JobDatabaseManagerMysql.plugin_name
    end


    def plugin_settings
      JobDatabaseManagerMysql.plugin_settings
    end

  end

end
