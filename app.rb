require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/words') do
  @word = params.fetch('word')
  @count = params.fetch('string').count(@word)
  erb(:words)
end
