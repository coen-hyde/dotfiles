alias sidekiq_start="bundle exec sidekiq -q portal -q integrations -P tmp/sidekiq.pid -v -d -L log/sidekiq.log"
alias sidekiq_stop="bundle exec sidekiqctl stop tmp/sidekiq.pid"
alias be="bundle exec"

