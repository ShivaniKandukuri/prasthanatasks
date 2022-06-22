class MinistersController < ApplicationController
  before_action :set_minister, only: %i[ show edit update destroy ]

  # GET /ministers or /ministers.json
  def index
    @ministers = Minister.all
  end

  # GET /ministers/1 or /ministers/1.json
  def show
  end

  # GET /ministers/new
  def new
    @minister = Minister.new
  end

  # GET /ministers/1/edit
  def edit
  end
  def preview
    @minister = Minister.find(params[:id])
  end

  # POST /ministers or /ministers.json
  def create
    @minister = Minister.new(minister_params)

    respond_to do |format|
      if @minister.save
        format.html { redirect_to minister_url(@minister), notice: "Minister was successfully created." }
        format.json { render :show, status: :created, location: @minister }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @minister.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ministers/1 or /ministers/1.json
  def update
    respond_to do |format|
      if @minister.update(minister_params)
        format.html { redirect_to minister_url(@minister), notice: "Minister was successfully updated." }
        format.json { render :show, status: :ok, location: @minister }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @minister.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ministers/1 or /ministers/1.json
  def destroy
    @minister.destroy

    respond_to do |format|
      format.html { redirect_to ministers_url, notice: "Minister was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minister
      @minister = Minister.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def minister_params
      params.require(:minister).permit(:name, :age, :party)
    end
end
