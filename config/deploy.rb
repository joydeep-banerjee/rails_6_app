# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "rails_6_app"
set :repo_url, "git@github.com:joydeep-banerjee/rails_6_app.git"
 
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

set :use_sudo, false

set :rvm_type, :user
set :rvm_ruby_version, 'ruby-2.6.0'
set :pty, false
# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/uploads'
append :linked_files, 'config/database.yml', 'config/secrets.yml'
set :puma_workers, 3

set :ssh_options, {
  forward_agent: true,
  auth_methods: ["publickey"],
  keys: ["~/.ssh/id_rsa.pub"]
}

namespace :deploy do
  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'task_existing_data:test_user_table'
      # end
    end
  end
end

set :assets_dir, %w(public/assets public/att)
set :local_assets_dir, %w(public/assets public/att)

# if you want to work on a specific local environment (default = ENV['RAILS_ENV'] || 'development')
set :locals_rails_env, "development"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :default_env, { rvm_bin_path: '~/.rvm/bin' }
# set :default_env, { path: "~/.rbenv/shims:~/.rbenv/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
