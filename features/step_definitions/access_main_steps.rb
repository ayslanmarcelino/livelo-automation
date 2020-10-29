# frozen_string_literal: true

Given('that the livelo page is accessed') do
  @main_page = MainPage.new
  @main_page.load
end

When('in the correct path') do
  main_url = '/'

  expect(page).to have_current_path(main_url)
end

Then('the main page must be redirected') do
  @main_page.index_page?
end

Given('that the main is successfully accessed') do
  @main_page = MainPage.new
  @main_page.load
  main_url = '/'

  expect(page).to have_current_path(main_url)
  @main_page.index_page?
end
