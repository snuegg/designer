class HomeController < ApplicationController
	before_action :login_check
  skip_before_action  :login_check, :only => [:search, :sview, :event]
	def search
		@l=Score.all	
	end
	
	def sview
		@city=params[:city_id]
		@sc=params[:score]
		if @sc == 'score1'
		@find=Score.where(hd_city_id: @city).order(:score1)
		end	
		if @sc == 'score2'
		@find=Score.where(hd_city_id: @city).order(:score2)
		end
	end
	def hdview
		@hd_id=params[:hd_id]
		@hdview=Score.where(hd_id: @hd_id)
	end
	def event
	end
	
	def mypage
	end


end
