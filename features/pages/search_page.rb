# frozen_string_literal: true

class SearchPage < SitePrism::Page
  element :card_name, '.card-name'

  def show_card_name
    card_name
  end

  def click_card_name
    card_name.click
  end
end
