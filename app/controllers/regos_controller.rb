class RegosController < ApplicationController
  before_action :set_rego, only: [:show, :edit, :update, :destroy]

  # GET /regos
  # GET /regos.json
  def index
    @regos = Rego.all
  end

  # GET /regos/1
  # GET /regos/1.json
  def show
  end

  # GET /regos/new
  def new
    @rego = Rego.new
  end

  # GET /regos/1/edit
  def edit
  end

  # POST /regos
  # POST /regos.json
  def create
    @rego = Rego.new(rego_params)

    respond_to do |format|
      if @rego.save
        format.html { redirect_to @rego, notice: 'Rego was successfully created.' }
        format.json { render :show, status: :created, location: @rego }
      else
        format.html { render :new }
        format.json { render json: @rego.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regos/1
  # PATCH/PUT /regos/1.json
  def update
    respond_to do |format|
      if @rego.update(rego_params)
        format.html { redirect_to @rego, notice: 'Rego was successfully updated.' }
        format.json { render :show, status: :ok, location: @rego }
      else
        format.html { render :edit }
        format.json { render json: @rego.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regos/1
  # DELETE /regos/1.json
  def destroy
    @rego.destroy
    respond_to do |format|
      format.html { redirect_to regos_url, notice: 'Rego was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rego
      @rego = Rego.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rego_params
      params.require(:rego).permit(:RegoLength, :StartDate, :EndDate)
    end
end
