class AddRestaurantReferenceToRatingsController < ApplicationController
  before_action :set_add_restaurant_reference_to_rating, only: %i[ show edit update destroy ]

  # GET /add_restaurant_reference_to_ratings or /add_restaurant_reference_to_ratings.json
  def index
    @add_restaurant_reference_to_ratings = AddRestaurantReferenceToRating.all
  end

  # GET /add_restaurant_reference_to_ratings/1 or /add_restaurant_reference_to_ratings/1.json
  def show
  end

  # GET /add_restaurant_reference_to_ratings/new
  def new
    @add_restaurant_reference_to_rating = AddRestaurantReferenceToRating.new
  end

  # GET /add_restaurant_reference_to_ratings/1/edit
  def edit
  end

  # POST /add_restaurant_reference_to_ratings or /add_restaurant_reference_to_ratings.json
  def create
    @add_restaurant_reference_to_rating = AddRestaurantReferenceToRating.new(add_restaurant_reference_to_rating_params)

    respond_to do |format|
      if @add_restaurant_reference_to_rating.save
        format.html { redirect_to add_restaurant_reference_to_rating_url(@add_restaurant_reference_to_rating), notice: "Add restaurant reference to rating was successfully created." }
        format.json { render :show, status: :created, location: @add_restaurant_reference_to_rating }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @add_restaurant_reference_to_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_restaurant_reference_to_ratings/1 or /add_restaurant_reference_to_ratings/1.json
  def update
    respond_to do |format|
      if @add_restaurant_reference_to_rating.update(add_restaurant_reference_to_rating_params)
        format.html { redirect_to add_restaurant_reference_to_rating_url(@add_restaurant_reference_to_rating), notice: "Add restaurant reference to rating was successfully updated." }
        format.json { render :show, status: :ok, location: @add_restaurant_reference_to_rating }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @add_restaurant_reference_to_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_restaurant_reference_to_ratings/1 or /add_restaurant_reference_to_ratings/1.json
  def destroy
    @add_restaurant_reference_to_rating.destroy

    respond_to do |format|
      format.html { redirect_to add_restaurant_reference_to_ratings_url, notice: "Add restaurant reference to rating was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_restaurant_reference_to_rating
      @add_restaurant_reference_to_rating = AddRestaurantReferenceToRating.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_restaurant_reference_to_rating_params
      params.require(:add_restaurant_reference_to_rating).permit(:Restaurant_id)
    end
end
