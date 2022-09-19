class Public::AddressesController < ApplicationController
  def index
    @address = Address.new
    #@addresses = Address.find(params[:id])
  end

  def create
    address = Address.new(address_params)
    address.save
    redirect_to addresses_path
  end

  def edit
  end


  private

  def address_params
    params.require(:address).permit(:name, :postal_cade, :address)
  end

end
