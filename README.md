# Prerequisites
* PostgreSQL (9.6)
* Redis (mine is 4.0.6, but I don't think it does much difference)

# Requirements
* Sidekiq (5.1.1)
* Rails (5.0.6), according to changelog, nothing changed till now in the autoloading.


# Run

```
bin/rails db:create db:migrate db:seed schedule
bundle exec sidekiq
```
