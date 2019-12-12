require 'test_helper'

class OrderCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_card = order_cards(:one)
  end

  test "should get index" do
    get order_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_order_card_url
    assert_response :success
  end

  test "should create order_card" do
    assert_difference('OrderCard.count') do
      post order_cards_url, params: { order_card: { items: @order_card.items, quantity: @order_card.quantity, total: @order_card.total, unit_price: @order_card.unit_price, user_email: @order_card.user_email } }
    end

    assert_redirected_to order_card_url(OrderCard.last)
  end

  test "should show order_card" do
    get order_card_url(@order_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_card_url(@order_card)
    assert_response :success
  end

  test "should update order_card" do
    patch order_card_url(@order_card), params: { order_card: { items: @order_card.items, quantity: @order_card.quantity, total: @order_card.total, unit_price: @order_card.unit_price, user_email: @order_card.user_email } }
    assert_redirected_to order_card_url(@order_card)
  end

  test "should destroy order_card" do
    assert_difference('OrderCard.count', -1) do
      delete order_card_url(@order_card)
    end

    assert_redirected_to order_cards_url
  end
end
