# Prerequisites
* PostgreSQL (9.6)
* Redis (mine is 4.0.6, but I don't think it does much difference)

# Requirements
* Rails (5.0.6), according to changelog, nothing changed till now in the autoloading.

# Before Run
```
bin/rails db:create db:migrate db:seed
```

# Rails autoload deadlock
```
bin/rails s
bin/test_web.sh
```

# Sidekiq autoload deadlock
```
bin/rails schedule
bundle exec sidekiq
```
