class CateogriesController < ApplicationController
  before_action :set_cateogry, only: [:show, :edit, :update, :destroy]

  # GET /cateogries
  # GET /cateogries.json
  def index
    @cateogries = Cateogry.all
  end

  # GET /cateogries/1
  # GET /cateogries/1.json
  def show
  end

  # GET /cateogries/new
  def new
    @cateogry = Cateogry.new
  end

  # GET /cateogries/1/edit
  def edit
  end

  # POST /cateogries
  # POST /cateogries.json
  def create
    @cateogry = Cateogry.new(cateogry_params)

    respond_to do |format|
      if @cateogry.save
        format.html { redirect_to @cateogry, notice: 'Cateogry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cateogry }
      else
        format.html { render action: 'new' }
        format.json { render json: @cateogry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cateogries/1
  # PATCH/PUT /cateogries/1.json
  def update
    respond_to do |format|
      if @cateogry.update(cateogry_params)
        format.html { redirect_to @cateogry, notice: 'Cateogry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cateogry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cateogries/1
  # DELETE /cateogries/1.json
  def destroy
    @cateogry.destroy
    respond_to do |format|
      format.html { redirect_to cateogries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cateogry
      @cateogry = Cateogry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cateogry_params
      params.require(:cateogry).permit(:label)
    end
end
