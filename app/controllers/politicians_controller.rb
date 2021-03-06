class PoliticiansController < ApplicationController
  before_action :set_politician, only: %i[ show edit update destroy ]

  # GET /politicians or /politicians.json
  def index
    @politicians = Politician.all
  end

  # GET /politicians/1 or /politicians/1.json
  def show
    @politician = Politician.find(params[:id])
  end

  # GET /politicians/new
  def new
    @politician = Politician.new
  end

  # GET /politicians/1/edit
  def edit
  end

  # POST /politicians or /politicians.json
  def create
    @politician = Politician.new(politician_params)

    respond_to do |format|
      if @politician.save
        format.html { redirect_to politician_url(@politician), notice: "Politician was successfully created." }
        format.json { render :show, status: :created, location: @politician }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @politician.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /politicians/1 or /politicians/1.json
  def update
    respond_to do |format|
      if @politician.update(politician_params)
        format.html { redirect_to politician_url(@politician), notice: "Politician was successfully updated." }
        format.json { render :show, status: :ok, location: @politician }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @politician.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /politicians/1 or /politicians/1.json
  def destroy
    @politician.destroy

    respond_to do |format|
      format.html { redirect_to politicians_url, notice: "Politician was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_politician
      @politician = Politician.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def politician_params
      params.require(:politician).permit(:name, :party, :age)
    end
end
