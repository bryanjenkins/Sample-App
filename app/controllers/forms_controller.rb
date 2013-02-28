class FormsController < ApplicationController

  def index
    @patient = Patient.find(params[:patient_id])
  end

  def show
    @form = Form.find(params[:id])
    @patient = Patient.find(@form.patient_id)
  end

  def new
    @user = User.find(current_user)
    @form = Form.new()
    @form.medical_history = MedicalHistory.new
    @form.family_history = FamilyHistory.new
    @form.symptom = Symptom.new
    @patient = Patient.find_by_id(params[:patient_id])
  end

  def create
    @user = User.find(current_user)
    @form = @user.forms.build(params[:form].merge(patient_id: params[:patient_id]))
    if @form.save 
      flash[:success] = "Record Saved Successfully!"
      redirect_to patients_path
    else
      render patients_path
    end
  end

end
