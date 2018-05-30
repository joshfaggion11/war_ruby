require('rspec')
require('card_deck')
require('pry')

describe '#war?' do
  it('should start the deck with 52 cards') do
    deck = CardDeck.new()
    expect(deck.cards_left?).to(eq(52))
  end
  it('should give a card that will not return nil') do
    deck = CardDeck.new()
    card = deck.deal()
    expect(card).to_not be_nil
  end
  it('should return the first cards value') do
    deck = CardDeck.new()
    expect(deck.cards[0]).to(eq(0))
  end
  it('should return the fourteenth cards value created in the flow') do
    deck = CardDeck.new()
    expect(deck.cards[13]).to(eq(0))
  end
  it('should return the deck with one less card') do
    deck = CardDeck.new()
    deck.deal()
    expect(deck.cards_left?).to(eq(51))
  end
  it('should change the location of the first item') do
    deck = CardDeck.new()
    deck.shuffle()
    expect(deck.cards[1]).to_not(eq(1))
  end
  it 'should return an array of two decks' do

  end
end
