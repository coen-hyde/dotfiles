alias start_sidekiq="bundle exec sidekiq -q portal -P tmp/sidekiq.pid -v -d -L log/sidekiq.log"
alias stop_sidekiq="bundle exec sidekiqctl stop tmp/sidekiq.pid"
alias be="bundle exec"

