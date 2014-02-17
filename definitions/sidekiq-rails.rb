define :sidekiq_rails do
  service_name = params[:service_name]
  user_name    = params[:user_name]
  app_dir      = params[:app_dir]
  rails_env    = params[:rails_env]

  runit_service service_name do
    template_name "sidekiq-rails"
    cookbook "sidekiq-rails"
    owner "root"
    group user_name
    options(
      user_name: user_name,
      app_dir:   app_dir,
      rails_env: rails_env
    )
  end
end
