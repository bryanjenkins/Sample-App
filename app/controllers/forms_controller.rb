class FormsController < ApplicationController

  def new
  end

  def show
    @form = Form.find(params[:id])
    @user = User.find(@form.user_id)
  end
end
