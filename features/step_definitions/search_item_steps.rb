# frozen_string_literal: true

When('the desired item is entered') do |table|
  @item_data = table.rows_hash

  @main_page.input_item(@item_data)
end

When('click in search button') do
  @search_page = SearchPage.new

  @main_page.click_search
end

When('the correct path is returned') do
  search_url = '/searchresults'

  expect(page).to have_current_path(search_url, ignore_query: true)
end

Then('the search must return the desired item') do
  search_card_text = @search_page.show_card_name.text

  expect(search_card_text).to have_content(@item_data[:name])
end

Then('the following item not found message should be returned {string}') do |string|
  item_not_found_message = string

  expect(page).to have_content(item_not_found_message + ' ' + @item_data[:name])
end
