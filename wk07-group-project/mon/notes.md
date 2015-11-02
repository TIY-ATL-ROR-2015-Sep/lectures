## This Week's Goals
* Token Auth
* Deploying to Heroku
* JSON responses / Active Model Serializers / Jbuilder
* GROUP PROJECT!





---









## Preliminaries
* Week 3/4 progress reports are coming
* Some folks may have a `needs work` tag applied to their github issue
  * Some of these are minor tweaks, some need more work



---








## Today's topics
* Fuhgeddit Review
* How to do slightly more secure auth (i.e. password hashing)
* Deploying to Heroku ...

Everyone is late today. Let's just get blankets and watch 90s movies.





## Review Topics

### Voting - WTF

It's fo sho a many-to-many, it needs has_many through associations.
Also, `validates :user_id, uniqueness: { scope: :link_id }`

Link
has_many :votes
has_many :users, through: :votes

User
has_many :votes
has_many :links, through: :votes

Vote
belongs_to :user
belongs_to :link

integer:user_id
integer:link_id
integer:score

link.votes.map(&:score).sum
link.votes.find_by(user_id: current_user.id)

## link_to not great for off-site links

Do `<a href="<%= link.url %>">foo</a>` or ensure link starts with http://
(Or there is some other helper for this that I just can't remember.)

And ensure that every link gets saved with http(s):// at the beginning.

## Two big performance gotchas in web applications

* Should've used a background job and didn't
* Doing a naive query and need to optimize (N+1s especially)


## Sorting based on Votes

Top version is suffering from the N+1 queries problem!
Bottom version using Eager Loading Associations (chapter 13 of Rails Querying guide)

(http://guides.rubyonrails.org/active_record_querying.html#eager-loading-associations)

Also see Rails "Counter Cache" but note that this can occasionally not do what you expect.

# @links = Link.page(whatever).per(10).sort_by { |link| link.votes.sum(:score) }
@links = Link.includes(:votes).page(whatever).per(10).sort_by { |link| link.votes.sum(:score) }

render :index

## How do you give someone access to push to your heroku app?

Follow the instructions at: https://devcenter.heroku.com/articles/sharing#add-collaborators

Make sure they add your heroku app to their git remotes!

## How do you get access to the Heroku Database prompt?

Run `heroku config` to get your database password.
(The bit in the DATABASE_URL after the colon and before the @ symbol.)

Run `heroku run rails dbconsole` and give it the password. Now you'll be at the
Postgres SQL prompt (psql). Type `\d` to get a list of tables, `\d NAME` to get a
specific table's schema, run SQL queries as normal, and `\q` to exit the prompt.
