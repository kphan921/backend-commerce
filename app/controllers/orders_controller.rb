class OrdersController < ApplicationController
    def index
        orders = current_user.orders
        render :json => OrderSerializer.new(orders)
    end

    def create
        order = Order.new(order_params)
        if order.save
          render json: order
        else
          render json: { error: "Something went wrong..." }
        end
    end


    def destroy
        order = Order.find_by(id: params[:id])
        if order.destroy
            render json: order
        else
            render json: {error: 'Something went wrong'}
        
        end
    end



    
    private
    def order_params
        params.require(:order).permit(:user_id, :item_id)
    end
    
    
end
