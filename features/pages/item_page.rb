# frozen_string_literal: true

class ItemPage < SitePrism::Page
  element :item_details, '#wi4300078-product-header-info-catalog-id'
  element :image_gallery, '.product-details__gallery-catalog'
  element :button_add_to_cart, '#CC-prodDetails-addToCart'
  element :description, '#wi4300078-product-description-catalog-id'
  element :span_item_id, '#span-productId'

  def details?
    item_details.present?
    image_gallery.present?
    button_add_to_cart.present?
    description.present?
  end

  def click_add_to_cart
    button_add_to_cart.click
  end

  def item_id
    span_item_id
  end
end
