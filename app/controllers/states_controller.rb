class StatesController < ApplicationController 
    
    before_action :authenticate_user!

   def new 
@state=State.new
   end
   def create
       @state=State.new(state_params)
     if @state.save
 redirect_to  new_city_path
     else 
        render :new
     end 

   end
   private
   def state_params
       params.require(:state).permit(:name)
     end
end
