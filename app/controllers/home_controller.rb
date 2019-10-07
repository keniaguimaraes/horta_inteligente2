class HomeController < ApplicationController
    def index
        @plantio = PlantioView.where("id in (1,2,3)").all
    end    
end
