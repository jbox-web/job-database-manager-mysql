require 'job_database_manager'

class JobDatabaseManagerMysql < Jenkins::Model::RootAction
  class MysqlAdapter < ::JobDatabaseManager::DbAdapter::AbstractAdapter

    private


      def create_database_query(database)
        "CREATE DATABASE IF NOT EXISTS #{database};"
      end


      def create_user_query(database, user, password)
        "GRANT ALL ON #{database}.*" +
        " TO '#{user}'@'%'" +
        " IDENTIFIED BY '#{password}';"
      end


      def drop_database_query(database)
        "DROP DATABASE IF EXISTS #{database};"
      end


      def drop_privilege_query(user)
        "REVOKE ALL PRIVILEGES, GRANT OPTION FROM '#{user}'@'%';"
      end


      def drop_user_query(user)
        "DROP USER '#{user}'@'%';"
      end


      def db_user
        ['--user', user]
      end


      def env_vars
        { 'MYSQL_PWD' => password }
      end


      def execute_query_cmd
        '--execute'
      end

  end
end
