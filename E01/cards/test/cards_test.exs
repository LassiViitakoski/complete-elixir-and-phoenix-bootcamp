defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck)

    assert deck_length == 20
  end

  test "shuffing a deck randomizes it" do
    deck = Cards.create_deck
    
    # refute deck being equal to shuffled deck
    refute deck == Cards.shuffle(deck)
  end
end
