Padrino.configure_apps do
  # enable :sessions
  set :session_secret, '49e93bec3f2c1ff2038beaf519acc14380e224da511739cbdfd27f13d96e70a6'
  set :protection, :except => :path_traversal
  set :protect_from_csrf, true
end

# Mounts the core application for this project
Padrino.mount('ImageServer::App', :app_file => Padrino.root('app/app.rb')).to('/')
