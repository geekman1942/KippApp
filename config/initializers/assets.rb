# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( homepage.css )
Rails.application.config.assets.precompile += %w( elevator_pitch.css )
Rails.application.config.assets.precompile += %w( contact.css )
Rails.application.config.assets.precompile += %w( basic_info.css )
Rails.application.config.assets.precompile += %w( calendar.css )
Rails.application.config.assets.precompile += %w( fundrasing_info.css )
Rails.application.config.assets.precompile += %w( marketing.css )