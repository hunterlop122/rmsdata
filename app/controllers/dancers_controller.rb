class DancersController < ApplicationController
 def index
    @dancers = Dancer.all
  end
  def new
    @dancer = Dancer.new
    respond_to do |format|
      format.html
      format.json
      end
      render :new
  end

  def create
   @dancer = Dancer.new(dancer_param)
    respond_to do |format|
       if @dancer.save
        format.html { redirect_to '/dancers/isadancer', notice: "Save process completed!" }
        format.json { render json: @dancer, status: :created, location: @dancer }
       else
          format.html {
            flash.now[:notice]="Save proccess coudn't be completed!"
            render :new
          }
          format.json { render json: @dancer.errors, status: :unprocessable_entity}
      end
    end
  end
def dancer_param
      params.require(:dancer).permit(:firstname, :lastname, :location, :dancestyle, :email, :phone, :ighandle)
    end

  def show
    @dancer = Dancer.all
  end

  def destroy
    @dancer = Dancer.find(dancerID)
    @dancer.destroy
    redirect_to '/dancers/show'
  end

  def button

  end

  def isadancer
    render :isadancer
  end
  private

    def dancerI
      params.require(:dancer).permit!
    end
    def dancerID
      params.require(:id)
    end

    def search
      if params[:search]
        @dancers = Dancer.search(params[:search]).order("created_at DESC")
      else
        @dancers = Dancer.all.order("created_at DESC")
      end
    end
end
