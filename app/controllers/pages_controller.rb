class PagesController < ApplicationController
  allow_unauthenticated_access

  def home
    if !authenticated? || (authenticated? && Current.user.customer?)
      redirect_to stores_path
    elsif authenticated? && (Current.user.admin? || Current.user.employee?)
      redirect_to products_path
    end
  end
end
