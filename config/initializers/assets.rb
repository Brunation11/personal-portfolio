# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( jumbotron.gif )
Rails.application.config.assets.precompile += %w( full-size-logo-black.png )
Rails.application.config.assets.precompile += %w( full-size-logo-banner.png )
Rails.application.config.assets.precompile += %w( hanging-poster.png )
Rails.application.config.assets.precompile += %w( blog.png )
Rails.application.config.assets.precompile += %w( twitter-hex.png )
Rails.application.config.assets.precompile += %w( linkedin-hex.png )
Rails.application.config.assets.precompile += %w( github-hex.png )
# Enable the asset pipeline
Rails.application.config.assets.enabled = true
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'fonts')