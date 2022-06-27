class PatientsController < ApplicationController
  before_action :set_patient, only: [:show,:edit,:update,:destroy]
  def index
    @patients=Patient.all
  end
  def show
  end
  def new
    @patient=Patient.new
  end
  def create
    @patient=Patient.new(patient_params)
    if @patient.save
      flash[:notice]="Patient created"
      redirect_to @patient
    else
      render 'new'
    end
  end
  def edit
  end
  def update
    if @patient.update(patient_params)
      flash[:notice]="updated"
      redirect_to @patient
    else
      render 'edit'
    end
  end
  def destroy
    @patient.destroy
    redirect_to patients_path
  end

  private

  def set_patient
    @patient=Patient.find(params[:id])
  end
  def account_params
    params.require(:patient).permit(:name,:age,:health_issue)
  end
end
