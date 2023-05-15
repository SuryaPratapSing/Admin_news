class AdminsController < ApplicationController
  def index
    @admins = Admin.all.order("created_at DESC")
  end

    def show  
      @admin= Admin.find(params[:id])
      
    end
    
    def def new
      @admins= Admin.new
    end
    
    def create
     
      @admin = Admin.new( CATEGORY:params[:CATEGORY],video:params[:video], SHORT:params[:SHORT], CITY: params[:CITY],AUTHOR:params[:AUTHOR],TITLE: params[:TITLE],images: params[:IMAGES],banner: params[:BANNER])
      if @admin.save
     
        redirect_to @admin
      else
        render :new, status: :unprocessable_entity
      end
    end  
  
  
  
    def edit
      @admin = Admin.find(params[:id])
    end
  
    def update
      @admin = Admin.find(params[:id])
  
      if @admin.update(admin_params)
        redirect_to @admin,notice:"update user successfully"
      else
        render :edit
      end
    end
  
    def destroy
      @admin = Admin.find(params[:id])
      @admin.destroy
      redirect_to admins_url,status: :see_other
    end
  
    private
      def admin_params
        params.require(:admin).permit(:CATEGORY,:video ,:CITY,:AUTHOR,:TITLE,:DISCRIPTION,:SHORT,images:[],banner:[])
      end
  end
  

