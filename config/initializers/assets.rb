# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Creates RailsUpload-folder, if it doesn't exist
RailsUpload.setup

# Set paperclip to use this folder
Paperclip::Attachment.default_options[:path] = "#{RailsUpload.folder_path}/:class/:attachment/:id_:style_:filename"
Paperclip::Attachment.default_options[:url] = "#{RailsUpload.base_url}/:class/:attachment/:id_:style_:filename"

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w[ .gif .png .jpg .svg .json frontend.css modernizr.js jquery.modal.min.js jquery.modal.css img/classic-loader.gif img/classic-map.png css/galleria.classic.css js/galleria-1.4.2.js js/galleria.classic.js ]

Rails.application.config.assets.precompile << Proc.new do |path|
  path =~ /\.(css|js|png|jpg|mp3|ogg|wav|otf|eot|ttf|woff|fnt|svg|appcache|json)\z/ ? true : false
end
