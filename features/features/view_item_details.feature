# frozen_string_literal: true

@view_item_details

Feature: View item details

  AS a user
  I WANT search desired item
  TO see item details

  Background: Access the Livelo homepage and search item
    Given that the main is successfully accessed
    And get the desired item
      | name | Console Playstation 4 Slim Sony 1 TB HDR Preto Bivolt CUH2115B |

  Scenario: View item details
    When click on the item
    And is redirected to the item page
    Then the item details must be shown
