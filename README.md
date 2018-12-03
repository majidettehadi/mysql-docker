# mysql-docker
Custom mysql image
Build from official [this](https://github.com/majidettehadi/debian-docker) custom debian image.

**[Available environments](https://github.com/majidettehadi/mysql-docker/blob/master/README.md#available-environments)**

**[How to build](https://github.com/majidettehadi/mysql-docker/blob/master/README.md#how-to-build)**

# Available environments
`MYSQL_ROOT_PASSWORD`
This variable is mandatory and specifies the password that will be set for the MySQL root superuser account.

`MYSQL_DATABASE`
This variable is optional and allows you to specify the name of a database to be created on image startup. If a user/password was supplied (see below) then that user will be granted superuser access (corresponding to GRANT ALL) to this database.

`MYSQL_USER, MYSQL_PASSWORD`
These variables are optional, used in conjunction to create a new user and to set that user's password. This user will be granted superuser permissions (see above) for the database specified by the MYSQL_DATABASE variable. Both variables are required for a user to be created.
Do note that there is no need to use this mechanism to create the root superuser, that user gets created by default with the password specified by the MYSQL_ROOT_PASSWORD variable.

`MYSQL_ALLOW_EMPTY_PASSWORD`
This is an optional variable. Set to yes to allow the container to be started with a blank password for the root user. NOTE: Setting this variable to yes is not recommended unless you really know what you are doing, since this will leave your MySQL instance completely unprotected, allowing anyone to gain complete superuser access.

`MYSQL_RANDOM_ROOT_PASSWORD`
This is an optional variable. Set to yes to generate a random initial password for the root user (using pwgen). The generated root password will be printed to stdout (GENERATED ROOT PASSWORD: .....).

`MYSQL_ONETIME_PASSWORD`
Sets root (not the user specified in MYSQL_USER!) user as expired once init is complete, forcing a password change on first login. NOTE: This feature is supported on MySQL 5.6+ only. Using this option on MySQL 5.5 will throw an appropriate error during initialization.


# How to build
Set **REPO_NAME** and **MYSQL_MAJOR**in `build.properties` file. REPO_NAME used to tagging and pushing image and MYSQL_MAJOR used for installed mysql version.
run `build.sh` to build image.
run `push.sh` to push to docker hub.

