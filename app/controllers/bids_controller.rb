class BidsController < ApplicationController
  before_action :set_bid, only: [:show, :edit, :update, :destroy]
   
  # GET /bids
  # GET /bids.json
  def index
    @bids = Bid.all
    @myusers = User.all
  end

  # GET /bids/1
  # GET /bids/1.json
  def show
    @myusers = User.all
  end

  # GET /bids/new
  def new
    @myusers = User.all
    @bid = Bid.new
  end

  # GET /bids/1/edit
  def edit
    @myusers = User.all
  end

  # POST /bids
  # POST /bids.json
  def create
    @bid = Bid.new(bid_params)
    @myusers = User.all
    respond_to do |format|
      if @bid.save
        format.html { redirect_to @bid, notice: 'Bid was successfully created.' }
        format.json { render :show, status: :created, location: @bid }
      else
        format.html { render :new }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bids/1
  # PATCH/PUT /bids/1.json
  def update
    @myusers = User.all
    respond_to do |format|
      if @bid.update(bid_params)
        format.html { redirect_to @bid, notice: 'Bid was successfully updated.' }
        format.json { render :show, status: :ok, location: @bid }
      else
        #format.html { render :edit , :player_id => params[:bid][:player_id]}
        #redirect_to edit_bid_path(:player_id => params[:bid][:player_id])
        format.html { render :edit}
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bids/1
  # DELETE /bids/1.json
  def destroy
    @bid.destroy
    respond_to do |format|
      format.html { redirect_to bids_url, notice: 'Bid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bid_params
      params.require(:bid).permit(:user_id, :player_id, :amount)
    end

end