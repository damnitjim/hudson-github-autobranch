require './init'

get '/' do
 'Hello World!'
end

post '/:github_token' do
  #params[:github_token]
  Hudhub.process_github_hook(params[:github_token], params[:payload])
end

