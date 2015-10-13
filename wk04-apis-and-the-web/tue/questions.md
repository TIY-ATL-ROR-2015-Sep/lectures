# Githubber

## Description

Work in pairs to write two classes for interacting with
the "pull requests" and "issues" features of the Github API.

The classes and the responsibility of each pair is detailed
[here](https://gist.github.com/kingcons/2f225d174a3e84d75ad9).

Open a pull request to have your changes merged
into master on the original repo.

## Objectives

### Learning Objectives

After completing this assignment, you should…

* Better understand how to interact with external APIs
* Have more experience using Hashes and passing params to an API
* Get some practice branches, pull requests, and pair programming

### Performance Objectives

After completing this assignment, you be able to effectively use

* HTTParty to make API requests
* Headers to authenticate API requests
* Be able to create and switch branches with git

## Details

### Normal Mode

3 steps here...


1. Merge the open pull requests with today's code into master.

   You are likely to encounter difficulty merging aka
   "merge conflicts". Consult Rickard or I for help!

2. Once both pull requests are merged, return to the master
   branch with `git checkout master`.

3. Get your master branch up to date with is on github.

   If you are the owner of the *original repo*, getting master up
   to date is as simple as running `git pull origin master`.

   If you are the owner of the *forked repo*, you have to first
   teach your fork about the original copy by adding a remote.
   Run something like `git remote add upstream https://github.com/YOUR-PARTNER/THEIR-REPO`. Then you can run `git pull upstream master`.

### Hard Mode

Write some code in the main `lib/githubber.rb` file that
uses the classes to close your github issue and leave a comment
linking to your pull request.

## Additional Resources

* GitHub's API documentation for [authentication](https://developer.github.com/v3/#authentication), [issue handling](https://developer.github.com/v3/issues/), and [pull requests](https://developer.github.com/v3/pulls/).
* [HTTParty](johnnunemaker.com/httparty/)
