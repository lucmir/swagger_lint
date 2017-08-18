require 'spec_helper'

config_test_path = 'spec/fixtures/config_sample.yml'

describe ConfigLoader do
  describe '#initialize' do
    it 'should raise an exception if config file does exist' do
      expect { ConfigLoader.new('not_existent_file') }.to raise_exception
    end
    it 'should initialize a configuration loader with default config file' do
      expect { ConfigLoader.new }.not_to raise_exception
    end
  end

  describe '#config_for' do
    it 'should load configuration' do
      config_loader = ConfigLoader.new(config_test_path)
      configs = config_loader.config_for('CONFIGS')
      expect(configs).to include("TEST")
    end
  end
end
