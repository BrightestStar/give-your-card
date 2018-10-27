# interactive CRUD
class InteractiveController < ApplicationController
  def index
    @interactive = Interactive.all
  end

  def create
    @interactive = Interactive.create
    @interactive.status = '准备'
    @interactive.admin_user = User.first
    @interactive.save

    redirect_to interactive_path(@interactive)
  end

  def show
    @interactive = Interactive.find(params[:id])
  end
end
