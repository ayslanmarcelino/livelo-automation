# frozen_string_literal: true

class ItemPage < SitePrism::Page
  element :item_details, '#wi4300078-product-header-info-catalog-id'
  element :image_gallery, '.product-details__gallery-catalog'
  element :button_add_to_cart, '#CC-prodDetails-addToCart'
  element :description, '#wi4300078-product-description-catalog-id'

  def details?
    item_details.present?
    image_gallery.present?
    button_add_to_cart.present?
    description.present?
  end
end
