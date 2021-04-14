class HomeController < ApplicationController
    def index #처음 들어갔을 때의 화면

    end

    def attack
        @from = params[:userA]
        @to =params[:userB]
    end

    def defense
        @from = params[:userA]
        @to =params[:userB]
    end

end
