# frozen_string_literal: true

@view_item_details

Feature: Add item in cart

  AS a user
  I WANT search desired item
  TO see item details

  Background: Access the Livelo homepage and search item
    Given that the main is successfully accessed
    And get the desired item
      | name | Jogo FIFA 21 - PS4 |

  Scenario: View item details
    When click on the item
    Then the item details must be shown
