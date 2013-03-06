class ApiController < ApplicationController
	def come_soon_submit
		if request.get?
			user = UserSoon.new(:name=>params[:username],:email=>params[:email])
			if user.save
				render :json => params[:callback] + "([ { code:\"1\"}])"
			else
				errmsg = user.errors.messages.to_a.map{|item|item.last.first}.join(" && ")
				render :json => params[:callback] + "([ { err:\"#{errmsg}\"}])"

				#{params[:callback].to_sym => user.errors.messages.to_a.map{|item|item.first.to_s+" "+item.last.first}.join("\n")}
			end
		end
	end

	def sns_share
		if request.get?
			name = params[:name]
			share = ComesoonShare.find_by_name(name)
			if share
				share.times += 1
				share.save
				render :json => params[:callback] + "([ { status:\"1\",name:\"#{share.name}\",times:\"#{share.times}\"  }])"
			end
		end
	end

	def get_share
		shares = ComesoonShare.all.map { |item| item.name + ":\"" + item.times.to_s + "\"" }
		render :json => params[:callback] + "([{" + shares.join(",") +  "}])"
	end
end
