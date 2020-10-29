# frozen_string_literal: true

class CartPage < SitePrism::Page
  element :cart_list, '#CC-cart-list'
  element :cart_item, '#cc-cart-item-0'
  element :custom_order, '#custom-cart-summary_v1-wi2000039'
  element :button_close_order, '#ctaCheckout'
  element :quantity_items, '.cart-list__value-qnt'
  element :button_logo, '.header__content__logo'
  element :continue_shopping, '#cc-link-home'

  def order?
    cart_list.present?
    cart_item.present?
    custom_order.present?
    button_close_order.present?
  end

  def show_quantity_items
    quantity_items
  end

  def back_to_homepage
    button_logo.click
  end

  def click_continue_shopping
    continue_shopping.click
  end
end
