class OrdersController < ApplicationController


    def index
        orders = current_user.items
        render :json => orders
    end

    def create
    
        # order = Order.new(order_params)
        item = Item.find_by(id: params[:item_id])
        current_user.items << item
        if item
          render json: OrderSerializer.new(current_user.orders.last)
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
        params.require(:order).permit(:item_id)
        # params.require(:order).permit(current_user.id, :item_id)
    end


    
    
end
