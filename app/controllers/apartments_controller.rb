class ApartmentsController < ApplicationController
  # GET /apartments
  # GET /apartments.json
  def index
    @apartments = Apartment.all
  end

  # GET /apartments/1
  # GET /apartments/1.json
  def show
    @apartment = Apartment.find params[:id]
  end

  # GET /apartments/new
  # GET /apartments/new.json
  def new
    @apartment = Apartment.new
  end

  # GET /apartments/1/edit
  def edit
    @apartment = Apartment.find params[:id]
  end

  # POST /apartments
  # POST /apartments.json
  def create
    @apartment = Apartment.new(apartment_params)

    if @apartment.save
      redirect_to @apartment, notice: 'Apartment was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /apartments/1
  # PUT /apartments/1.json
  def update
    @apartment = Apartment.find params[:id]

    if @apartment.update_attributes(apartment_params)
      redirect_to @apartment, notice: 'Apartment was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /apartments/1
  # DELETE /apartments/1.json
  def destroy
    @apartment = Apartment.find params[:id]
    @apartment.destroy

    redirect_to apartments_url
  end

  def rate
    @apartment = Apartment.find params[:id]
  end

private
  def apartment_params
    params[:apartment].permit(:name, :address, :address2, :city, :state, :zip)
  end
end
