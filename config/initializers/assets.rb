# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Creates RailsUpload-folder, if it doesn't exist
RailsUpload.setup

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w[ .gif .png .jpg .svg .json frontend.css modernizr.js jquery.modal.min.js jquery.modal.css ]

Rails.application.config.assets.precompile << Proc.new do |path|
  path =~ /\.(css|js|png|jpg|mp3|ogg|wav|otf|eot|ttf|woff|fnt|svg|appcache|json)\z/ ? true : false
end
