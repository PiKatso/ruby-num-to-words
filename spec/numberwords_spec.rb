require 'pry'
require 'numberwords'

describe('Numberwords#translate') do
  before(:each) do
    @num = Numberwords.new
  end

  it('takes a single digit number and returns the english words for the number') do
    expect(@num.translate(5)).to(eq('five'))
  end

  it('takes a double digit number and returns the english words for the number') do
    expect(@num.translate(50)).to(eq('fifty'))
    expect(@num.translate(99)).to(eq('ninety nine'))
    expect(@num.translate(14)).to(eq('fourteen'))
  end

  it('takes a 3+ digit number and returns the english words for the number') do
    expect(@num.translate(5555)).to(eq('five thousand five hundred fifty five'))
  end
end
