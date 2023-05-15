class HomesController < ApplicationController
 
    def index
      debugger
      @admins = Admin.first
    end
  
      def show  
        @admin= Admin.find(params[:id])
        
      end
      
      
      
    end