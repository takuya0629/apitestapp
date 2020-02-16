class GestsController < ApplicationController
  before_action :set_gest, only: [:show, :edit, :update, :destroy]

  # GET /gests
  # GET /gests.json
  def index
    @gests = Gest.all
  end

  # GET /gests/1
  # GET /gests/1.json
  def show
  end

  # GET /gests/new
  def new
    @gest = Gest.new
  end

  # GET /gests/1/edit
  def edit
  end

  # POST /gests
  # POST /gests.json
  def create
    @gest = Gest.new(gest_params)

    respond_to do |format|
      if @gest.save
        format.html { redirect_to @gest, notice: 'Gest was successfully created.' }
        format.json { render :show, status: :created, location: @gest }
      else
        format.html { render :new }
        format.json { render json: @gest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gests/1
  # PATCH/PUT /gests/1.json
  def update
    respond_to do |format|
      if @gest.update(gest_params)
        format.html { redirect_to @gest, notice: 'Gest was successfully updated.' }
        format.json { render :show, status: :ok, location: @gest }
      else
        format.html { render :edit }
        format.json { render json: @gest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gests/1
  # DELETE /gests/1.json
  def destroy
    @gest.destroy
    respond_to do |format|
      format.html { redirect_to gests_url, notice: 'Gest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gest
      @gest = Gest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gest_params
      params.require(:gest).permit(:name, :body)
    end
end
