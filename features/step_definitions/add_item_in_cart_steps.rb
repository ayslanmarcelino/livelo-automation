# frozen_string_literal: true

When('click on add to cart button') do
  @cart_page = CartPage.new

  @item_page.click_add_to_cart
end

When('the correct path cart is returned') do
  cart_url = '/cart'

  expect(page).to have_current_path(cart_url)
end

Then('the cart must be shown with selected item') do
  quantity_count_items = @cart_page.show_quantity_items.text
  quantity_items = quantity_count_items.to_i

  expect(page).to have_content(@item_data[:name])
  expect(quantity_items).to eql(1)
  @cart_page.order?
end

When('click on back to homepage') do
  @cart_page.back_to_homepage
end

Then('the icon should show the number of items in the cart') do
  quantity_count_items = @main_page.show_cart.text
  quantity_items = quantity_count_items.to_i

  expect(quantity_items).to eql(1)
end

When('click on continue shopping in cart') do
  @cart_page.click_continue_shopping
end

Then('the main page must be returned with the quantity in the cart') do
  main_url = '/home'
  quantity_count_items = @main_page.show_cart.text
  quantity_items = quantity_count_items.to_i

  expect(page).to have_current_path(main_url)
  expect(quantity_items).to eql(1)
end
