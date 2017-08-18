# encoding: utf-8

require 'yaml'

class ConfigLoader
  def initialize(config_file_path='config/config.yml')
    load_config_data(config_file_path)
  end

  def [](name)
    config_for(name)
  end

  def config_for(name)
    @config_data[name]
  end

  private

  def load_config_data(config_file_path)
    begin
      configs = File.read(config_file_path)
    rescue Errno::ENOENT
      $stderr.puts 'Can not load config file'
      raise
    end
    @config_data = YAML.load(configs)
  end
end
