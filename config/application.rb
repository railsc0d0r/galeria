require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsUpload
  def self.folder
    return folder_path.to_s
  end

  def self.folder_path
    if Rails.env.test?
      Rails.root.join('public','system', 'test', ENV['TEST_ENV_NUMBER'] || "0")
    else
      Rails.root.join('public','system','upload')
    end
  end

  def self.base_url
    if Rails.env.test?
      url = "/system/test/#{ENV['TEST_ENV_NUMBER'] || '0'}"
    else
      url = "/system/upload"
    end

    url
  end
  
  def self.clear
    FileUtils.rm_rf Dir.glob self.folder_path.join('*')
  end

  def self.setup
    FileUtils.mkdir_p self.folder_path unless Dir.exists? self.folder_path
  end
end

module TestFiles
  def self.folder
    folder_path.to_s
  end
  
  def self.folder_path
    Rails.root.join('features','support','test_files')
  end
end

module Galeria
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # Adds some assets-paths
    config.assets.paths << Rails.root.join("vendor", "assets", "galleria","js")
    config.assets.paths << Rails.root.join("vendor", "assets", "galleria","css")
    config.assets.paths << Rails.root.join("vendor", "assets", "galleria","img")
  end
end
