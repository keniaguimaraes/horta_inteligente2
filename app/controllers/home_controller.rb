class HomeController < ApplicationController
    def index
        @plantio = PlantioView.where("id in (1,2,3,4,5,6)").all
    end    
end
