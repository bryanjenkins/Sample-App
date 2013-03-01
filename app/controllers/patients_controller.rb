class PatientsController < ApplicationController
  
  def index
    @patients = Patient.all
  end

  def show
    
  end

  def new
    @user = User.find(current_user)
    @patient = Patient.new
  end

  def create
    @user = User.find(current_user)
    @patient = @user.patients.build(params[:patient])
    if @patient.save 
      flash[:success] = "Patient Saved Successfully!"
      redirect_to patients_path
    else
      render 'new'
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])

    if @patient.update_attributes(params[:patient])
      # Handle a successful save
      flash[:success] = "Patient updated"
      redirect_to patients_path
    else
      #render 'edit'
    end
  end
end
