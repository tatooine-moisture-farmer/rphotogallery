class PersonalController < ApplicationController
  
  before_filter :require_user

  def index
  end

  def new_album
  end

  def load_album

  end

  def setting
  end

  def friends
  end

end
