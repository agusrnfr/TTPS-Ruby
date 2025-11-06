class OfficesController < ApplicationController
  before_action :set_office, only: %i[ show edit update ]

  def index
    @offices = Office.all
  end

  def show; end

  def new
    @office = Office.new
  end

  def edit; end

  def create
    @office = Office.new(office_params)
    respond_to do |format|
      if @office.save
        format.html { redirect_to @office, notice: t("offices.created") }
        format.json { render :show, status: :created, location: @office }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @office.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @office.update(office_params)
        format.html { redirect_to @office, notice: t("offices.updated"), status: :see_other }
        format.json { render :show, status: :ok, location: @office }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @office.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_office
    @office = Office.find(params[:id])
  end

  def office_params
    params.require(:office).permit(:name, :phone_number, :address, :available)
  end
end
