# myhub

## Description

Make a basic interface to your open
issues on the class "assignments"
github repo.

Accessing the site root should
display the github issues assigned
to you along with a button to
toggle whether they are open or closed.

## Objectives

### Learning Objectives

After completing this, you should ...

* Be comfortable integrating information from an external API into your controllers
* Be able to build a basic form
* Understand the place of views in a web app

### Performance Objectives

* Be able to use forms to make requests in the browser
* Understand how to use ERB templates

## Details

### Deliverables

Fork and clone the following repo:

`https://githubc.om/TIY-ATL-ROR-2015-Sep/myhub.git`

### Requirements

* Add wrappers for any needed Github API calls
  to the `lib/myhub/github.rb` class.

* Use your Github API wrapper to
  retrieve issues assigned to you
  from [the assignments repo][hws].

* Make a request for the homepage
  (`GET '/'`) retrieve your issues
  and pass the to an ERB template
  for display.

* The template should include a button
  to close or reopen each issue,
  based on its present state.

[hws]: https://github.com/TIY-ATL-ROR-2015-Sep/assignments
