class GimgsController < ApplicationController
  before_action :set_gimg, only: [:show, :edit, :update, :destroy]

  # GET /gimgs
  # GET /gimgs.json
  def index
    @gimgs = Gimg.all
  end

  # GET /gimgs/1
  # GET /gimgs/1.json
  def show
  end

  # GET /gimgs/new
  def new
    @gimg = Gimg.new
  end

  # GET /gimgs/1/edit
  def edit
  end

  # POST /gimgs
  # POST /gimgs.json
  def create
    @gimg = Gimg.new(gimg_params)

    respond_to do |format|
      if @gimg.save
        format.html { redirect_to @gimg, notice: 'Gimg was successfully created.' }
        format.json { render :show, status: :created, location: @gimg }
      else
        format.html { render :new }
        format.json { render json: @gimg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gimgs/1
  # PATCH/PUT /gimgs/1.json
  def update
    respond_to do |format|
      if @gimg.update(gimg_params)
        format.html { redirect_to @gimg, notice: 'Gimg was successfully updated.' }
        format.json { render :show, status: :ok, location: @gimg }
      else
        format.html { render :edit }
        format.json { render json: @gimg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gimgs/1
  # DELETE /gimgs/1.json
  def destroy
    @gimg.destroy
    respond_to do |format|
      format.html { redirect_to gimgs_url, notice: 'Gimg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gimg
      @gimg = Gimg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gimg_params
      params.require(:gimg).permit(:link, :good_id)
    end
end
