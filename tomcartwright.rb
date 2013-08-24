require 'rubygems'
require 'sinatra'
require 'haml'
require 'sinatra/static_assets'

helpers do

  def mail_to(url,text=url,opts={})
    attributes = ""
    opts.each { |key,value| attributes << key.to_s << "=\"" << value << "\" "}
    "<a href=\"mailto:#{url}\" #{attributes}>#{text}</a>"
  end

end

get '/' do
  haml :'home', :layout => :application
end

get '/about' do
  haml :'about', :layout => :application
end
