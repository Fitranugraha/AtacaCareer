set :branch, ENV.fetch("CAPISTRANO_BRANCH", "master")
set :mb_sidekiq_concurrency, 1

server "karir.ataca.id",
       :user => "deployer",
       :roles => %w(app backup cron db redis sidekiq web)
