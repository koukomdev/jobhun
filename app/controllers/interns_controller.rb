class InternsController < ApplicationController
  def show
    permit_params = params.permit(:id)
    @intern = Intern.find(permit_params[:id])
  end
end
