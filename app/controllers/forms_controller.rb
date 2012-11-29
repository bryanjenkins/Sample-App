class FormsController < ApplicationController

  def show
    @form = Form.find(params[:id])
    @user = User.find(@form.user_id)
  end

  def new
    # Hard coded to create only posts for Bryan
    @user = User.find(2)
    @form = Form.new
    @form.medical_history = MedicalHistory.new
    @form.symptom = Symptom.new
  end

  def create
    # Hard coded to create only posts for Bryan
    @user = User.find(2)
    @form = @user.forms.build(params[:form])
    if @form.save 
      flash[:success] = "Record Saved Successfully!"
      redirect_to @form
    else
      render 'new'
    end
  end

end
