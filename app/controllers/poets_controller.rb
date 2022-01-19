class PoetsController < ApplicationController
   before_action :set_poet,  only: [:show, :edit, :update, :destroy]

  # GET /poets
  # GET /poets.json
  def index
    @poets = Poet.all
  end

  # GET /poets/1
  # GET /poets/1.json
  def show
  end

  # GET /poets/new
  def new
    @poet = Poet.new
  end

  # GET /poets/1/edit
  def edit
  end

  # POST /poets
  # POST /poets.json
  def create
    @poet = Poet.new(poet_params)

    respond_to do |format|
      if @poet.save
        format.html { redirect_to @poet, notice: 'نیا شاعر شامل کر لیا گیا۔' }
        format.json { render :show, status: :created, location: @poet }
      else
        format.html { render :new }
        format.json { render json: @poet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poets/1
  # PATCH/PUT /poets/1.json
  def update
    respond_to do |format|
      if @poet.update(poet_params)
        format.html { redirect_to @poet, notice: 'شاعر کی معلومات کامیابی سے درست کر لی گئی۔' }
        format.json { render :show, status: :ok, location: @poet }
      else
        format.html { render :edit }
        format.json { render json: @poet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poets/1
  # DELETE /poets/1.json
  def destroy
    @poet.destroy
    respond_to do |format|
      format.html { redirect_to poets_url, notice: 'شاعرکا ریکارڈ حذف کر دیا گیا۔' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poet
      @poet = Poet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poet_params
      params.require(:poet).permit(:name, :image)
    end
end
