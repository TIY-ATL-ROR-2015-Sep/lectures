# samplserv / samplparty

## Description

Make a basic sampler / sequencer with Sinatra!

Work in groups. One of you should define the
server and the other should work on writing API
bindings for the client and then a script to play
something *resembling* a song using your client.

## Objectives

### Learning Objectives

After completing this assignment, you should…

* Be able to build an API to expose and trigger song samples on your machine
* Be able to run shell commands from Ruby
* Rock!

### Performance Objectives

After completing this assignment, you be able to effectively use

* Sinatra for answer HTTP requests
* System calls and `afplay` to play songs
* Running commands with `system` and `spawn`

## Details

### Deliverables

Fork and clone the following repo:
      `https://github.com/TIY-ATL-ROR-2015-Sep/samplserv.git`

Add new methods, change existing methods, try to write new API bindings
in the client, etc.

### Requirements

Server:
* Running `RACK_ENV=production bundle exec ruby lib/samplserv.rb` should
  start a server with endpoints described below

* Running `bundle exec ruby lib/client.rb` should start the client which will
  play something resembling a song by sending requests to the server! 

### Notes

1. You will need two terminals to do this assignment.
   One to run the client and one to run the server.

2. You can stop the server by typing `Control-C Control-C`.

3. When you make changes to the server, you will need to
   restart the server (but not the client!) for them to take effect.

## Normal Mode

Feel free to download the samples from [here][samples]. They're already
included in the project repo though.

Make an endpoint (API call) for each "phrase",
with query params for multiple versions: e.g.

* `POST /harder`
* `POST /better?v=2`

The `client.rb` script should play several samples
in the style and timing of your choosing.

## Hard Mode

Use `sleep` judiciously to play a reasonable cover with a backtrack
(see `beat.mp3`)

## Additional Resources

* [Watch this](https://www.youtube.com/watch?v=gAjR4_CbPpQ)
* [samples][samples]

[samples]: http://redlinernotes.com/docs/daft-samples.zip
