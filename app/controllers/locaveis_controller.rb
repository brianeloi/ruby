class LocaveisController < ApplicationController
  before_action :set_locavei, only: [:show, :edit, :update, :destroy]

  # GET /locaveis
  # GET /locaveis.json
  def index
    @locaveis = Locavei.all
  end

  # GET /locaveis/1
  # GET /locaveis/1.json
  def show
  end

  # GET /locaveis/new
  def new
    @locavei = Locavei.new
  end

  # GET /locaveis/1/edit
  def edit
  end

  # POST /locaveis
  # POST /locaveis.json
  def create
    @locavei = Locavei.new(locavei_params)

    respond_to do |format|
      if @locavei.save
        format.html { redirect_to @locavei, notice: 'Locavei was successfully created.' }
        format.json { render :show, status: :created, location: @locavei }
      else
        format.html { render :new }
        format.json { render json: @locavei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locaveis/1
  # PATCH/PUT /locaveis/1.json
  def update
    respond_to do |format|
      if @locavei.update(locavei_params)
        format.html { redirect_to @locavei, notice: 'Locavei was successfully updated.' }
        format.json { render :show, status: :ok, location: @locavei }
      else
        format.html { render :edit }
        format.json { render json: @locavei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locaveis/1
  # DELETE /locaveis/1.json
  def destroy
    @locavei.destroy
    respond_to do |format|
      format.html { redirect_to locaveis_url, notice: 'Locavei was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locavei
      @locavei = Locavei.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locavei_params
      params.require(:locavei).permit(:id, :nome, :endereco, :preco, :email)
    end
end
