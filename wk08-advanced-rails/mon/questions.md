## More Railsisms

We saw a few more advanced Rails patterns today,
`form_for`, `respond_to`, `resources`, and Strong Params.

Understanding `form_for` and `resources` is, in a big way,
about knowing some more advanced ways to generate routes.

* Read the following sections of Chapter 2 of the [Rails Routing guide][routing]:
  2.1, 2.2, 2.7, 2.9, 2.10

  Pay particular attention to the generation of URLs in section 2.9!
  You may want to read through that more than once.

* Read *all* of Chapter 2 of the [Rails Form Helpers guide][forms]. (Don't worry, it's short.)
  
* Finally, read the following article on the switch from `attr_accessible` in Rails 3
  to [Strong Params][strong] in Rails 4. Note: It was not required to use `attr_accessible`
  in Rails 3 and so many companies chose not to use it.

  I've included a [second article][strong-2] for Strong Params that you may find provides
  a different / helpful perspective.

[routing]: http://guides.rubyonrails.org/routing.html#resource-routing-the-rails-default
[forms]:  http://guides.rubyonrails.org/form_helpers.html#dealing-with-model-objects
[strong]: http://www.sitepoint.com/rails-4-quick-look-strong-parameters/
[strong-2]: http://blog.trackets.com/2013/08/17/strong-parameters-by-example.html

## Hard Mode

Read about how to handle forms with [*nested attributes*][nested] using Strong Params.

[nested]: http://patshaughnessy.net/2014/6/16/a-rule-of-thumb-for-strong-parameters
