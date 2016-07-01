require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/number') do
  @find = params.fetch('find')
  @number = params.fetch('sentence').number(@find)
  erb(:number)
end
