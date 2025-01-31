class EmployeesController < ApplicationController
  def index
    @employee = Admin.employee
  end
end
