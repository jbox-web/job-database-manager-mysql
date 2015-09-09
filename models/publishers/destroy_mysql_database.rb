module Publishers
  class DestroyMysqlDatabase < Jenkins::Tasks::Publisher
    display_name 'Drop a MySQL database after the job finished'
    include ::JobDatabaseManager::DbDestroyer

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
