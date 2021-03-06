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
    redirect_to controller: 'home',action: 'index'
  end
  
  #def mod
   # if params[:ticket_id].present?
    #  if (:ticket_id >= 1 && :ticket_id<= 4) || (:ticket_id >= 13 && :ticket_id<= 16) 
     #   @itineraries = Itinerary.find(1..5)
      #  respond_to do |format|
       #   format.json {render json: @itineraries}
        #end
      #elsif (:ticket_id >= 17 && :ticket_id<= 20) || (:ticket_id >= 5 && :ticket_id<= 8)
       # @itineraries = Itinerary.find(6..8)
        #respond_to do |format|
         # format.json {render json: @itineraries}
        #end
      #else
       # @itineraries = Itinerary.find(9..12)
        #respond_to do |format|
         # format.json {render json: @itineraries}
        #end
      #end     
    #end
  #end
  
  # GET /ticketbills/new
  def new
    @ticketbill = Ticketbill.new
    @itineraries=Itinerary.all
    render layout: 'spot'
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
    voy1=Voyage.all.where(id_itinerary: @ticketbill.itinerary_id).where(v_date: @ticketbill.departure_date).limit(1)
    voy=voy1[0]
    voy.seats=voy.seats+1
    voy.save
    if voy.seats == 34
      voy.destroy
    end
    @ticketbill.destroy
    respond_to do |format|
      format.html { redirect_to controller: 'queries',action: 'query5' }
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
      params.require(:ticketbill).permit(:ticket_id, :id_customer, :itinerary_id, :departure_date)
    end
end
