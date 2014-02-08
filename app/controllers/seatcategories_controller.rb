class SeatcategoriesController < ApplicationController
  before_action :set_seatcategory, only: [:show, :edit, :update, :destroy]

  # GET /seatcategories
  # GET /seatcategories.json
  def index
    @seatcategories = Seatcategory.all
  end

  # GET /seatcategories/1
  # GET /seatcategories/1.json
  def show
  end

  # GET /seatcategories/new
  def new
    @seatcategory = Seatcategory.new
  end

  # GET /seatcategories/1/edit
  def edit
  end

  # POST /seatcategories
  # POST /seatcategories.json
  def create
    @seatcategory = Seatcategory.new(seatcategory_params)

    respond_to do |format|
      if @seatcategory.save
        format.html { redirect_to @seatcategory, notice: 'Seatcategory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @seatcategory }
      else
        format.html { render action: 'new' }
        format.json { render json: @seatcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seatcategories/1
  # PATCH/PUT /seatcategories/1.json
  def update
    respond_to do |format|
      if @seatcategory.update(seatcategory_params)
        format.html { redirect_to @seatcategory, notice: 'Seatcategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @seatcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seatcategories/1
  # DELETE /seatcategories/1.json
  def destroy
    @seatcategory.destroy
    respond_to do |format|
      format.html { redirect_to seatcategories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seatcategory
      @seatcategory = Seatcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seatcategory_params
      params.require(:seatcategory).permit(:name)
    end
end
