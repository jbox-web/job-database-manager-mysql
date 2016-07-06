## Jenkins Job Database Manager Plugin for MySQL

[![GitHub license](https://img.shields.io/github/license/jbox-web/job-database-manager-mysql.svg)](https://github.com/jbox-web/job-database-manager-mysql/blob/master/LICENSE)
[![GitHub release](https://img.shields.io/github/release/jbox-web/job-database-manager-mysql.svg)](https://github.com/jbox-web/job-database-manager-mysql/releases/latest)
[![Build Status](https://travis-ci.org/jbox-web/job-database-manager-mysql.svg?branch=master)](https://travis-ci.org/jbox-web/job-database-manager-mysql)
[![Code Climate](https://codeclimate.com/github/jbox-web/job-database-manager-mysql/badges/gpa.svg)](https://codeclimate.com/github/jbox-web/job-database-manager-mysql)
[![Download](https://img.shields.io/github/downloads/jbox-web/job-database-manager-mysql/latest/job-database-manager-mysql.hpi.svg)](https://github.com/jbox-web/job-database-manager-mysql/releases/download/1.0.0/job-database-manager-mysql.hpi)

### A Jenkins plugin that automatically set up MySQL test databases for Jenkins jobs, easy ;)

## Installation

Install the ```ruby-runtime``` plugin in Jenkins then download the [hpi file](https://github.com/jbox-web/job-database-manager-mysql/releases/download/1.0.0/job-database-manager-mysql.hpi) and install it within Jenkins interface.

## Configuration

In the global Jenkins configuration, set up host and port of your
MySQL server and enter credentials of the MySQL user that shall be
used to create databases and grant permissions. Note that this user
needs the
[`GRANT OPTION`](http://dev.mysql.com/doc/refman/5.1/en/privileges-provided.html#priv_grant-option)
which is not included in
[`ALL PRIVILEGES`](http://dev.mysql.com/doc/refman/5.1/en/privileges-provided.html#priv_all).

## Usage

Configure a database name in a job. The plugin ensures the database
exists when the job is run. It grants all permissions for the database
to a job specific user and publishes its credentials in the
environment variables `$MYSQL_USER` and `$MYSQL_PASSWORD`.
It also ensures that the database is dropped at the end of the job.

These environment variables will be injected in the build :

* `$MYSQL_DATABASE`
* `$MYSQL_USER`
* `$MYSQL_PASSWORD`
* `$MYSQL_HOST`
* `$MYSQL_PORT`

## See also

There is also a PostgreSQL variant of this plugin : [jbox-web/job-database-manager-postgresql](https://github.com/jbox-web/job-database-manager-postgresql)

## Contributors

A big thank to [them](https://github.com/jbox-web/job-database-manager-mysql/blob/master/AUTHORS) for their contribution!

## Contribute

You can contribute to this plugin in many ways such as :
* Helping with documentation
* Contributing code (features or bugfixes)
* Reporting a bug
* Submitting translations
