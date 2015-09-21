require 'spec_helper'

describe Builders::CreateMysqlDatabase do

  let(:klass) { build_db_creator }

  subject { klass }

  it { expect(klass.db_adapter_name).to eq 'MySQL' }
  it { expect(klass.db_adapter_type).to eq :mysql }
  it { expect(klass.db_adapter_klass).to eq 'JobDatabaseManagerMysql::MysqlAdapter' }

  describe '#get_setting_value_for' do
    it 'should return value of setting' do
      expect(JobDatabaseManagerMysql).to receive(:get_setting_value_for).with('foo')
      klass.get_setting_value_for('foo')
    end
  end

end
