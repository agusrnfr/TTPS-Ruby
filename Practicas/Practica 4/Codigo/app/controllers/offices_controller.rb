class OfficesController < ApplicationController
  before_action :set_office, only: %i[ show edit update ]

  # GET /offices or /offices.json
  def index
    @offices = Office.all
  end

  # GET /offices/1 or /offices/1.json
  def show
  end

  # GET /offices/new
  def new
    @office = Office.new
  end

  # GET /offices/1/edit
  def edit
  end

  # POST /offices or /offices.json
  def create
    @office = Office.new(office_params)

    respond_to do |format|
      if @office.save
        format.html { redirect_to @office, notice: "Office was successfully created." }
        format.json { render :show, status: :created, location: @office }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offices/1 or /offices/1.json
  def update
    respond_to do |format|
      if @office.update(office_params)
        format.html { redirect_to @office, notice: "Office was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @office }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @office.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_office
    @office = Office.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def office_params
    params.require(:office).permit(:name, :phone_number, :address, :available)
  end
end
