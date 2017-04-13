# Add remote git repository

This will add the new remote repository `heroku`.

```shell
# Run as a normal user
APP="my-app"
heroku git:remote --app "$APP"
```

Example:

```shell
$ heroku git:remote --app guido-backend
set git remote heroku to https://git.heroku.com/guido-backend.git
```
