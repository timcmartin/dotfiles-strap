# README #

Multiple SSH Setup
==================

Multiple SSH keys generated and setup in the config file.

## Keys to generate:

* Github
* Bitbucket
* GoDaddy
* Heroku

## How to Generate Keys:

`ssh-keygen -t rsa -C "github.com"`

* Enter Passphrase

* Enter path to key:

`~/.ssh/github`

* Copy key to requisite service:

`pbcopy < ~/.ssh/github.pub`

## Examples:

To clone my GitHub repositories:

`git clone git@github.com:timcmartin/<repository_name>.git <destination>`

To clone my BitBucket repositories:

`git clone git@bitbucket.org:timcmartin/<repository_name>.git <destination>`

To clone my GoDaddy

`git clone timcmartin@timcgodaddy:~/<repo_dir>`

## Adding Remote example:

`git remote add origin git@bitbucket.org:timcmartin/notifier.git`
