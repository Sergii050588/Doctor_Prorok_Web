class ConsultationPolicy < ApplicationPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @consultation = model
  end

  def authorized?
    return true if @current_user
    false
  end

  def index?
    return true if @current_user
    false
  end

  def show?
    return true if @current_user
    false
  end

  def update?
    return true if @current_user
    false
  end

  def activate_deactivate_consultation?
    return true if @current_user
    false
  end

   #Randge by CATEGOTY
  def get_general_consultations?
     return true if @current_user
    false
  end

  def get_surgery_consultations?
     return true if @current_user
    false
  end

  # Range by IMPORTANCE
  def get_important_consultations?
     return true if @current_user
    false
  end

  def get_normal_consultations?
     return true if @current_user
    false
  end

  # Archive consultations
  def get_archive_consultations?
     return true if @current_user
    false
  end

  def permitted_attributes(params)
    if params[:action] == 'update'
      [consultation: [:id, :subject, :importance, :body, :city, :skype, :email, :phone, :archive]]
    else
      params[:action] == 'create'
      [consultation: [:id, :subject, :importance, :body, :city, :skype, :email, :phone, :archive]]
    end
  end
end