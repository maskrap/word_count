require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/words') do
  @word_input = params.fetch('word_input')
  @count = params.fetch('words').count(@word_input)
  erb(:words)
end
