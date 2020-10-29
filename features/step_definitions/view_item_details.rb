# frozen_string_literal: true

When('click on the item') do
  @item_page = ItemPage.new

  @search_page.click_card_name
end

When('is redirected to the item page') do
  item_id = @item_page.item_id
  product_id = item_id.text
  formatted_name_url = "/#{@item_data[:name].downcase.gsub(' ', '-')}/produto/#{product_id}"

  expect(page).to have_current_path(formatted_name_url)
end

Then('the item details must be shown') do
  @item_page.details?
end

Given('access the item details') do
  @item_page = ItemPage.new

  @search_page.click_card_name

  item_id = @item_page.item_id
  product_id = item_id.text
  formatted_name_url = "/#{@item_data[:name].downcase.gsub(' ', '-')}/produto/#{product_id}"

  expect(page).to have_current_path(formatted_name_url)
  @item_page.details?
end
