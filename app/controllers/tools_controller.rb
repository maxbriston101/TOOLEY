class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
    @booking = Booking.new
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = current_user
    if @tool.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @tool = Tool.find(params[:id])
    @tool.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to dashboard_path, status: :see_other
  end

  private

  def tool_params
    params.require(:tool).permit(:price, :tool_name, :category, :description)
  end
end
