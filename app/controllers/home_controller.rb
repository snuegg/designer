class HomeController < ApplicationController
	def search
		
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

	def event
	end
	
	def mypage
	end


end
