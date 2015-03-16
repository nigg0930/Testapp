class DairiesController < ApplicationController
  before_action :set_dairy, only: [:show, :edit, :update, :destroy]

  # GET /dairies
  # GET /dairies.json
  def index
    @dairies = Dairy.all
  end

  # GET /dairies/1
  # GET /dairies/1.json
  def show
  end

  # GET /dairies/new
  def new
    @dairy = Dairy.new
  end

  # GET /dairies/1/edit
  def edit
  end

  # POST /dairies
  # POST /dairies.json
  def create
    @dairy = Dairy.new(dairy_params)

    respond_to do |format|
      if @dairy.save
        format.html { redirect_to @dairy, notice: 'Dairy was successfully created.' }
        format.json { render :show, status: :created, location: @dairy }
      else
        format.html { render :new }
        format.json { render json: @dairy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dairies/1
  # PATCH/PUT /dairies/1.json
  def update
    respond_to do |format|
      if @dairy.update(dairy_params)
        format.html { redirect_to @dairy, notice: 'Dairy was successfully updated.' }
        format.json { render :show, status: :ok, location: @dairy }
      else
        format.html { render :edit }
        format.json { render json: @dairy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dairies/1
  # DELETE /dairies/1.json
  def destroy
    @dairy.destroy
    respond_to do |format|
      format.html { redirect_to dairies_url, notice: 'Dairy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dairy
      @dairy = Dairy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dairy_params
      params.require(:dairy).permit(:title, :first, :second, :third, :fourth)
    end
end
