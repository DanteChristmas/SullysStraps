class AdminController < ApplicationController
  def index
    render(:layout => "layouts/admin_application")
  end
end
