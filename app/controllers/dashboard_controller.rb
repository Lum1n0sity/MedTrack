class DashboardController < ApplicationController
  helper_method :current_user
  
  def index
    @current_user = current_user
    @reminders = Reminder.all
    @medications = Medication.all
  end

  def create_medication
    @medication = Medication.new(medication_params)

    if @medication.save
      redirect_to dashboard_index_path, notice: "Medication added"
    else
      @current_user = current_user
      @reminders = Reminder.allocate
      @medication = Medication.allocate
      render :index, alert: "Failed to add medication"
    end
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def medication_params
    params.require(:medication).permit(:name, :duration, :amount)
  end
end
