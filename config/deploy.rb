# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'galeria'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/cap/galeria'

# Default value for :scm is :git
set :scm, :git
set :repo_url, 'ssh://git@p2501.twilightparadox.com:33333/home/git/git_repos/galeria.git'

set :deploy_user, 'cap'

# how many old releases do we want to keep
set :keep_releases, 4

# Default value for :format is :pretty
set :format, :pretty

# Default value for :log_level is :debug
set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'db/production.sqlite3')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'upload')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Set path to unicorn.rb
set :unicorn_config_path,  'config/unicorn.rb' 

namespace :deploy do

  before 'deploy', 'rvm1:install:gems'

  desc "Seed db and restart unicorn"
  task :restart do
		on roles(:app), in: :sequence, wait: 5 do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute "bash -l -c 'cd #{release_path}; pwd; bundle exec rake db:seed RAILS_ENV=#{fetch(:rails_env)}'"
          execute "bash -l -c 'cd #{release_path}; pwd; bundle exec rake unicorn:restart RAILS_ENV=#{fetch(:rails_env)}'"
        end
      end
    end
  end

  desc "build missing paperclip styles"
  task :build_missing_paperclip_styles do
    on roles(:app) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute "bash -l -c 'cd #{release_path}; pwd; rm public/system/paperclip_attachments.yml; bundle exec rake paperclip:refresh:missing_styles RAILS_ENV=#{fetch(:rails_env)}'"
        end
      end
    end
  end
  
  after 'deploy:compile_assets', 'deploy:build_missing_paperclip_styles'
  after 'deploy:finished', 'deploy:restart'

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
