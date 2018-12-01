class NotdancerController < ApplicationController
  def index
     @notdancers = Notdancer.all
   end
   def new
     @notdancer = Notdancer.new
     respond_to do |format|
       format.html
       format.json
       end
       render :new
   end

   def create
    @notdancer = Notdancer.new(notdancer_param)
     respond_to do |format|
        if @notdancer.save
         format.html { redirect_to '/dancer/isadancer', notice: "Save process completed!" }
         format.json { render json:@notdancer, status: :created, location: @notdancer }
        else
           format.html {
             flash.now[:notice]="Save proccess coudn't be completed!"
             render :new
           }
           format.json { render json: @notdancer.errors, status: :unprocessable_entity}
       end
     end
   end
 def notdancer_param
       params.require(:notdancer).permit(:ighandle)
     end

   def show
     @notdancer = Notdancer.all
   end

   def destroy
     @notdancer = Notdancer.find(notdancerID)
     @notdancer.destroy
     redirect_to '/notdancer/show'
   end
   private

     def notdancerI
       params.require(:notdancer).permit!
     end
     def notdancerID
       params.require(:id)
     end

     def search
       if params[:search]
         @notdancer = Notdancer.search(params[:search]).order("created_at DESC")
       else
         @notdancer = Notdancer.all.order("created_at DESC")
       end
     end
end
