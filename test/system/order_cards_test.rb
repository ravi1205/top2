require "application_system_test_case"

class OrderCardsTest < ApplicationSystemTestCase
  setup do
    @order_card = order_cards(:one)
  end

  test "visiting the index" do
    visit order_cards_url
    assert_selector "h1", text: "Order Cards"
  end

  test "creating a Order card" do
    visit order_cards_url
    click_on "New Order Card"

    fill_in "Items", with: @order_card.items
    fill_in "Quantity", with: @order_card.quantity
    fill_in "Total", with: @order_card.total
    fill_in "Unit price", with: @order_card.unit_price
    fill_in "User email", with: @order_card.user_email
    click_on "Create Order card"

    assert_text "Order card was successfully created"
    click_on "Back"
  end

  test "updating a Order card" do
    visit order_cards_url
    click_on "Edit", match: :first

    fill_in "Items", with: @order_card.items
    fill_in "Quantity", with: @order_card.quantity
    fill_in "Total", with: @order_card.total
    fill_in "Unit price", with: @order_card.unit_price
    fill_in "User email", with: @order_card.user_email
    click_on "Update Order card"

    assert_text "Order card was successfully updated"
    click_on "Back"
  end

  test "destroying a Order card" do
    visit order_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order card was successfully destroyed"
  end
end
