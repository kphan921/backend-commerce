class OrdersController < ApplicationController
    def index
        orders = current_user.orders
        render :json => OrderSerializer.new(orders)
    end
    
end
