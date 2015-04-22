require 'sinatra'
require 'shotgun'
require 'sinatra/activerecord'

set :database, "sqlite3:donnees_db.sqlite3"

class Donnees < ActiveRecord::Base 
	end

	get '/' do
		@datas = Donnees.all	
		erb :index
	end
	get "/inscription"do
		erb :inscription
	end
	post "/mesdonnees"do
	  Donnees.create(params)
		erb :mesdonnees
	end
