# frozen_string_literal: true

When('click on the item') do
  @item_page = ItemPage.new

  @search_page.click_card_name
end

Then('the item details must be shown') do
  @item_page.details?
end
