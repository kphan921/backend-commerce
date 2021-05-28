class OrdersController < ApplicationController


    def index
        orders = current_user.orders
        render :json => orders.to_json(:include => :item)
    end

    def create
        # order = Order.new(order_params)
        # item = Item.find_by(id: params[:item_id])
        #  current_user.items << item
        order = Order.new(user_id: current_user.id, item_id: params[:item_id])
        if order.save
          render json: order.to_json(:include => :item)
        else
          render json: { error: "Something went wrong..." }
        end
    end

    


    def destroy
    
        order = current_user.orders.find_by(id: params[:id])
        if order.destroy
            render json: order.to_json(:include => :item)
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
