class TicketbillsController < ApplicationController
  before_action :set_ticketbill, only: [:show, :edit, :update, :destroy]

  # GET /ticketbills
  # GET /ticketbills.json
  def index
    @ticketbills = Ticketbill.all
  end

  # GET /ticketbills/1
  # GET /ticketbills/1.json
  def show
  end

  # GET /ticketbills/new
  def new
    @ticketbill = Ticketbill.new
  end

  # GET /ticketbills/1/edit
  def edit
  end

  # POST /ticketbills
  # POST /ticketbills.json
  def create
    @ticketbill = Ticketbill.new(ticketbill_params)

    respond_to do |format|
      if @ticketbill.save
        format.html { redirect_to @ticketbill, notice: 'Ticketbill was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ticketbill }
      else
        format.html { render action: 'new' }
        format.json { render json: @ticketbill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticketbills/1
  # PATCH/PUT /ticketbills/1.json
  def update
    respond_to do |format|
      if @ticketbill.update(ticketbill_params)
        format.html { redirect_to @ticketbill, notice: 'Ticketbill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ticketbill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticketbills/1
  # DELETE /ticketbills/1.json
  def destroy
    @ticketbill.destroy
    respond_to do |format|
      format.html { redirect_to ticketbills_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticketbill
      @ticketbill = Ticketbill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticketbill_params
      params.require(:ticketbill).permit(:id_ticket, :id_customer, :id_employee, :itinerary_id, :departure_date)
    end
end
