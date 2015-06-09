class PricePlansController < ApplicationController
  before_action :set_price_plan, only: [:show, :edit, :update, :destroy]

  # GET /price_plans
  # GET /price_plans.json
  def index
    @price_plans = PricePlan.all
  end

  # GET /price_plans/1
  # GET /price_plans/1.json
  def show
  end

  # GET /price_plans/new
  def new
    @price_plan = PricePlan.new
  end

  # GET /price_plans/1/edit
  def edit
  end

  # POST /price_plans
  # POST /price_plans.json
  def create
    @price_plan = PricePlan.new(price_plan_params)

    respond_to do |format|
      if @price_plan.save
        format.html { redirect_to @price_plan, notice: 'Price plan was successfully created.' }
        format.json { render :show, status: :created, location: @price_plan }
      else
        format.html { render :new }
        format.json { render json: @price_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_plans/1
  # PATCH/PUT /price_plans/1.json
  def update
    respond_to do |format|
      if @price_plan.update(price_plan_params)
        format.html { redirect_to @price_plan, notice: 'Price plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @price_plan }
      else
        format.html { render :edit }
        format.json { render json: @price_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_plans/1
  # DELETE /price_plans/1.json
  def destroy
    @price_plan.destroy
    respond_to do |format|
      format.html { redirect_to price_plans_url, notice: 'Price plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_plan
      @price_plan = PricePlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_plan_params
      params.require(:price_plan).permit(:months, :price)
    end
end
