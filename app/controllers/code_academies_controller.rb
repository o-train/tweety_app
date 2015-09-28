class CodeAcademiesController < ApplicationController
  before_action :set_code_academy, only: [:show, :edit, :update, :destroy]

  # GET /code_academies
  # GET /code_academies.json
  def index
    @code_academies = CodeAcademy.all
  end

  # GET /code_academies/1
  # GET /code_academies/1.json
  def show
  end

  # GET /code_academies/new
  def new
    @code_academy = CodeAcademy.new
  end

  # GET /code_academies/1/edit
  def edit
  end

  # POST /code_academies
  # POST /code_academies.json
  def create
    @code_academy = CodeAcademy.new(code_academy_params)

    respond_to do |format|
      if @code_academy.save
        format.html { redirect_to @code_academy, notice: 'Code academy was successfully created.' }
        format.json { render :show, status: :created, location: @code_academy }
      else
        format.html { render :new }
        format.json { render json: @code_academy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_academies/1
  # PATCH/PUT /code_academies/1.json
  def update
    respond_to do |format|
      if @code_academy.update(code_academy_params)
        format.html { redirect_to @code_academy, notice: 'Code academy was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_academy }
      else
        format.html { render :edit }
        format.json { render json: @code_academy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_academies/1
  # DELETE /code_academies/1.json
  def destroy
    @code_academy.destroy
    respond_to do |format|
      format.html { redirect_to code_academies_url, notice: 'Code academy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_academy
      @code_academy = CodeAcademy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_academy_params
      params.require(:code_academy).permit(:content, :user_id)
    end
end
