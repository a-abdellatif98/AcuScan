# frozen_string_literal: true

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations.
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  config.after_initialize do
    Bullet.enable = true
    Bullet.alert = true
    Bullet.bullet_logger = true
    Bullet.console = true
    Bullet.rails_logger = true
    Bullet.add_footer = true
  end

  # Bullet.n_plus_one_query_enable     = true
  # Bullet.unused_eager_loading_enable = true
  # Bullet.counter_cache_enable        = true
  #
  # Bullet.add_whitelist :type => :n_plus_one_query, :class_name => "Post", :association => :comments
  # Bullet.add_whitelist :type => :unused_eager_loading, :class_name => "Post", :association => :comments
  # Bullet.add_whitelist :type => :counter_cache, :class_name => "Country", :association => :cities
  # UniformNotifier.alert = true
  # UniformNotifier.alert = { :attributes => { :nonce => 'mySecret-nonce', 'data-key' => 'value' } }
  # UniformNotifier.console = true
  # UniformNotifier.console = { :attributes => { :nonce => 'mySecret-nonce', 'data-key' => 'value' } }
  # UniformNotifier.rails_logger = true
  # UniformNotifier.airbrake = true
  # UniformNotifier.airbrake = { :error_class => Exception }
  # UniformNotifier.honeybadger = true
  # UniformNotifier.honeybadger = { :error_class => 'Exception' }
  # UniformNotifier.rollbar = true
  # UniformNotifier.rollbar = { :level => 'warning' }
  # UniformNotifier.bugsnag = true
  # UniformNotifier.bugsnag = { :api_key => 'something' }
  # logger = File.open('notify.log', 'a+')
  # logger.sync = true
  # UniformNotifier.customized_logger = logger

  ## growl without password
  # UniformNotifier.growl = true
  ## growl with passowrd
  # UniformNotifier.growl = { :password => 'growl password' }
  # UniformNotifier.terminal_notifier = true
  # raise an error
  # UniformNotifier.raise = true # raise a generic exception

  class MyExceptionClass < RuntimeError; end
  UniformNotifier.raise = MyExceptionClass # raise a custom exception type

  UniformNotifier.raise = false # don't raise errors

  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
end
