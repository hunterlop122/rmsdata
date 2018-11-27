class IgdancerController < ApplicationController
  def index
     @igdancers = Igdancer.all
   end
   def new
     @igdancer = Igdancer.new
     respond_to do |format|
       format.html
       format.json
       end
       render :new
   end

   def create
    @igdancer = Igdancer.new(igdancer_param)
     respond_to do |format|
        if @igdancer.save
         format.html { redirect_to '/igdancer', notice: "Save process completed!" }
         format.json { render json:@igdancer, status: :created, location: @igdancer }
        else
           format.html {
             flash.now[:notice]="Save proccess coudn't be completed!"
             render :new
           }
           format.json { render json: @igdancer.errors, status: :unprocessable_entity}
       end
     end
   end
 def igdancer_param
       params.require(:igdancer).permit(:ighandle, :post, :followers, :following, :name, :bio)
     end

   def show
     @igdancer = Igdancer.all
   end

   def destroy
     @igdancer = Igdancer.find(igdancerID)
     @igdancer.destroy
     redirect_to '/igdancer/show'
   end
   private

     def igdancerI
       params.require(:igdancer).permit!
     end
     def igdancerID
       params.require(:id)
     end

     def search
       if params[:search]
         @igdancer = Igdancer.search(params[:search]).order("created_at DESC")
       else
         @igdancer = Igdancer.all.order("created_at DESC")
       end
     end
end
