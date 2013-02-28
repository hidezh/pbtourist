class ApiController < ApplicationController
	def come_soon_submit
		if request.get?
			user = UserSoon.new(:name=>params[:username],:email=>params[:email])
			if user.save
				render :json => params[:callback] + "([ { code:\"1\"}])"
			else
				errmsg = user.errors.messages.to_a.map{|item|item.first.to_s+" "+item.last.first}.join("||")
				render :json => params[:callback] + "([ { err:\"#{errmsg}\"}])"

				#{params[:callback].to_sym => user.errors.messages.to_a.map{|item|item.first.to_s+" "+item.last.first}.join("\n")}
			end
		end
	end
end
