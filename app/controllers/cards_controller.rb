# card CRUD and so on
class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def create
    @card = Card.create(card_params)
    @card.save
  end

  private

  def card_params
    params.require(:card).permit(:name, :desc)
  end
end
