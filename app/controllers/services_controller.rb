class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def edit
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new(params[:service])
    
    if @service.save
      redirect_to(@service.category, :notice => "Service was successfully created.")
    else
      render :action => "new"
    end
  end

  def update
    @service = Service.find(params[:id])
    
    if @service.update_attributes(params[:service])
      redirect_to(@service.category, :notice => "Service was successfully updated.")
    else
      render :action => "edit"
    end    
  end

  def destroy
    @service = Service.find(params[:id])
    
    if @service.destroy
      redirect_to(@service.category)
    end
  end
end
