class DancersController < ApplicationController
 def index
    @dancers = Dancer.all
  end
 def new
    @dancer = Dancer.new
    render :new
 end

 def create
    @dancer = Dancer.new(dancerI)
    if @dancer.save
    # Handle success
        render :show
    else
      # Handle failure
    end
  end

  def show
    @dancer = Dancer.all
  end

  def destroy
    @dancer = Dancer.find(dancerID)
    @dancer.destroy
    redirect_to '/dancers/show'
  end
  def isadancer 
    render "dancers/isadancer"
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
