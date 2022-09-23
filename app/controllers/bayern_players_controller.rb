class BayernPlayersController < ApplicationController
  before_action :set_bayern_player, only: %i[ show edit update destroy ]

  # GET /bayern_players or /bayern_players.json
  def index
    @bayern_players = BayernPlayer.all
  end

  # GET /bayern_players/1 or /bayern_players/1.json
  def show
  end

  # GET /bayern_players/new
  def new
    @bayern_player = BayernPlayer.new
  end

  # GET /bayern_players/1/edit
  def edit
  end

  # POST /bayern_players or /bayern_players.json
  def create
    @bayern_player = BayernPlayer.new(bayern_player_params)

    respond_to do |format|
      if @bayern_player.save
        format.html { redirect_to bayern_player_url(@bayern_player), notice: "Bayern player was successfully created." }
        format.json { render :show, status: :created, location: @bayern_player }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bayern_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bayern_players/1 or /bayern_players/1.json
  def update
    respond_to do |format|
      if @bayern_player.update(bayern_player_params)
        format.html { redirect_to bayern_player_url(@bayern_player), notice: "Bayern player was successfully updated." }
        format.json { render :show, status: :ok, location: @bayern_player }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bayern_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bayern_players/1 or /bayern_players/1.json
  def destroy
    @bayern_player.destroy

    respond_to do |format|
      format.html { redirect_to bayern_players_url, notice: "Bayern player was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bayern_player
      @bayern_player = BayernPlayer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bayern_player_params
      params.require(:bayern_player).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
