### Good Morning!

--

![alcohol](http://media.giphy.com/media/vyZBKDpUC0niE/giphy.gif)

---

### Good Morning!

![enjoy](http://wac.450f.edgecastcdn.net/80450F/starcrush.com/files/2013/08/pr-8.gif)

---

## And Now For Something Completely Different ...

### Uploads!

(We'll add user avatars to blerg. And probably do some testing.)

---

## A Quick Spec

(Today's target)
* Users can edit their profile and upload a photo.
* Resize the photo intelligently and display it on the user's blog posts.
* Test all the things!

--

(Tomorrow's target)
* I come in with users and tests ported over to swapr.
* We write a file request model but backed by Amazon S3 this time.
* Users can request access to other users files/have friends or similar.
* If access is granted, they can download each other's files.
* Also, notifications are sent by text message / twilio.

---

### Now Avatar!

* Users have avatars via paperclip!
  * Maybe tagline/bio/bday/homepage/twitter/location? *sigh*

1. Install imagemagick with brew so paperclip can resize things.
   `brew install imagemagick` (heroku already has imagemagick installed)

--

2. Add [paperclip][paperclip] gem.

--

3. Add forms, views, talk about image_tag a bit perhaps.
   Don't forget to talk about `:multipart => true`.

[heroku-paperclip]: https://devcenter.heroku.com/articles/paperclip-s3
[paperclip]: https://github.com/thoughtbot/paperclip

---

### Oh nooooes! We need a new storage adapter!

This works fine for local, but sucks on Heroku.
Files aren't accessible across multiple servers/dynos!

--

We'll store them on S3! Three good reasons:
  1. S3 is faster than Rails at serving static assets (i.e. images, files).
  2. Heroku is "horizontally scalable". I.e. Just run more servers to
     meet demand. But this means you can't store the files on the filesystem
     because the other servers wouldn't be able to get to them. If you're worried
     about sharing data via the database, it is actually hosted on another
     machine in production anyway.
  3. It's really cheap and durable. :D

---

### So S3 Then?

Heroku has a nice writeup with more about getting started
with S3 [here][heroku-s3].

[heroku-s3]: https://devcenter.heroku.com/articles/s3

### S3 has a [Free Tier][free-s3]. So ... Good News.

Sign up! Cancel it anytime you want.

* You'll get an Access Key and Secret Key, like most APIs.
* Files are stored in "buckets".
* S3 isn't *actually* a file system. There are no folders.
* We "fake" folders by having files with slashes in the name. S3 don't care.
* Files can be privately or publicly available.
  You can also generate temporary public links, etc.

**Don't forget to create a bucket!**

[free-s3]: https://aws.amazon.com/free/

---

### Now add a Ruby S3 Library

1. Add the `aws-sdk` gem to the gemfile to interact with S3
   and other Amazon Web Services.
2. Add `S3_BUCKET`, `AWS_ACCESS_KEY`, and `AWS_SECRET_ACCESS_KEY` to `.env`.
3. Add an initializer to setup the AWS gem based on those values.
4. Mirror the changes to `.env` on heroku via `heroku config:set FOO=bar`.
5. Add some paperclip settings to `config/environments/production.rb`
   as seen in [le Heroku guide][heroku-paper-config].
6. You should probably mirror them locally in
   `config/environments/development.rb`
   so we can test without deploying to Heroku. :)

We're done!

[heroku-paper-config]: https://devcenter.heroku.com/articles/paperclip-s3#configuration

## Tomorrow

Invites, downloading files from S3, and twilio!
