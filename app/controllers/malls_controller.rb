class MallsController<ApplicationController
  def show
    @mall=Mall.find(params[:id])
  end
  def index
    @malls=Mall.all
  end
end
