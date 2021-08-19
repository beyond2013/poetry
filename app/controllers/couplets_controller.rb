class CoupletsController < ApplicationController
  #before_action :set_couplet, only: [:show, :edit, :update, :destroy]

  # GET /couplets
  # GET /couplets.json
  def index
    @couplets = Couplet.all
  end

  # GET /couplets/1
  # GET /couplets/1.json
  def show
  end

  # GET /couplets/new
  def new
    @couplet = Couplet.new
  end

  # GET /couplets/1/edit
  def edit
  end

  # POST /couplets
  # POST /couplets.json
  def create
    @couplet = Couplet.new(couplet_params)

    respond_to do |format|
      if @couplet.save
        format.html { redirect_to @couplet, notice: 'نئے شعر کا کامیابی سے اضافہ کر لیا گیا۔' }
        format.json { render :show, status: :created, location: @couplet }
      else
        format.html { render :new }
        format.json { render json: @couplet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /couplets/1
  # PATCH/PUT /couplets/1.json
  def update
    respond_to do |format|
      if @couplet.update(couplet_params)
        format.html { redirect_to @couplet, notice: 'شعر کامیابی سے صحیح کرلیا گیا۔' }
        format.json { render :show, status: :ok, location: @couplet }
      else
        format.html { render :edit }
        format.json { render json: @couplet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /couplets/1
  # DELETE /couplets/1.json
  def destroy
    @couplet.destroy
    respond_to do |format|
      format.html { redirect_to couplets_url, notice: 'شعر ریکارڈ سے حذف کرلیا گیا۔' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_couplet
      @couplet = Couplet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def couplet_params
      params.require(:couplet).permit(:couplet, :poet_id)
    end
end
