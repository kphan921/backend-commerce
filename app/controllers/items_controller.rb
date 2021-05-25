class ItemsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        items = Item.all
        render json: items
    end
    



    
end
