class Web::PartialsController < Web::ApplicationController
  layout false
  def show
    render params[:id]
  end
end
