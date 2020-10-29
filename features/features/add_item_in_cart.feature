# frozen_string_literal: true

@add_item_in_cart

Feature: Add item in cart

  AS a user
  I WANT add item cart
  TO buy the desired item

  Background: Access the Livelo homepage and search item
    Given that the main is successfully accessed
    And get the desired item
      | name | Console Playstation 4 Slim Sony 1 TB HDR Preto Bivolt CUH2115B |
    And access the item details
    When click on add to cart button

  @add_item_in_cart_successfully

  Scenario: Add item in cart
    And the correct path cart is returned
    Then the cart must be shown with selected item
  
  @see_item_quantity_on_cart_in_homepage

  Scenario: View item quantity in homepage
    And click on back to homepage
    Then the icon should show the number of items in the cart

  @add_item_in_cart_and_continue_shopping

  Scenario: Add item in cart and continue shopping
    And click on continue shopping in cart
    Then the main page must be returned with the quantity in the cart
