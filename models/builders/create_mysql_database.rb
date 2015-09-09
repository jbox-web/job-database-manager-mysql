module Builders
  class CreateMysqlDatabase < Jenkins::Tasks::BuildWrapper
    display_name 'Create a MySQL database for the job'
    include ::JobDatabaseManager::DbCreator

    def get_setting_value_for(setting)
      JobDatabaseManagerMysql.get_setting_value_for(setting)
    end


    def db_adapter_klass
      'JobDatabaseManagerMysql::MysqlAdapter'
    end


    def db_adapter_name
      'MySQL'
    end


    def db_adapter_type
      :mysql
    end

  end
end
