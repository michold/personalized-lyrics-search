# This config is only for development, deployed environments get their config created with the
# capistrano task: 'puma:config'

environment 'development'
tag 'personalized_lyrics_search_dev'

threads 1, 1
workers 2

preload_app!

before_fork do
  ActiveRecord::Base.connection_pool.disconnect!
end

on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end
