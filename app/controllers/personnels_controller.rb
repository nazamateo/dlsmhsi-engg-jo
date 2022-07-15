class PersonnelsController < ApplicationController
  before_action :set_personnel, only: %i[ show edit update destroy ]

  # GET /personnels or /personnels.json
  def index
    @personnels = Personnel.all
  end

  # GET /personnels/1 or /personnels/1.json
  def show
  end

  # GET /personnels/new
  def new
    @personnel = Personnel.new
  end

  # GET /personnels/1/edit
  def edit
  end

  # POST /personnels or /personnels.json
  def create
    @personnel = Personnel.new(personnel_params)

    respond_to do |format|
      if @personnel.save
        format.html { redirect_to personnel_url(@personnel), notice: "Personnel was successfully created." }
        format.json { render :show, status: :created, location: @personnel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @personnel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personnels/1 or /personnels/1.json
  def update
    respond_to do |format|
      if @personnel.update(personnel_params)
        format.html { redirect_to personnel_url(@personnel), notice: "Personnel was successfully updated." }
        format.json { render :show, status: :ok, location: @personnel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @personnel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personnels/1 or /personnels/1.json
  def destroy
    @personnel.destroy

    respond_to do |format|
      format.html { redirect_to personnels_url, notice: "Personnel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personnel
      @personnel = Personnel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personnel_params
      params.fetch(:personnel, {})
    end
end
