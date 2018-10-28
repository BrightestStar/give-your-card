# interactive CRUD
class InteractiveController < ApplicationController
  before_action :find_interactive, except: %i[index create]

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
    @cards = @interactive.cards
  end

  def join_active
    return 'joined' if @interactive.users.include?(current_user)

    @interactive.users << current_user
    @interactive.save

    render json: { mess: 'joined' }
  end

  def add_card
    card = @interactive.cards.where(id: params[:card_id])
    return if card.present?

    CardActiveShip.create(interactive_id: @interactive.id,
                          card_id: params[:card_id])
  end

  private

  def find_interactive
    @interactive = Interactive.find(params[:id])
  end
end
