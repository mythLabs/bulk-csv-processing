# Bulk CSV Processing

## Processing of bulk csv through rails jobs

### Features-

* Reading from CSV - Can be of any size
* Action cable broadcasts progress of the upload which is displayed on the UI through a bootstrap progress bar.

** redis is required and sample csv file is placed in public folder named 'temp.csv'.
** sidekiq path is mounted at /sidekiq
** to start application run 'foreman start'
