require "rspec"
require "stock_picker"

describe "stock_picker" do
    subject(:stocks) {[250, 100, 150, 180, 175, 200, 250, 125]}

    it "should accept an array as argument" do
        expect {stock_picker(stocks)}.not_to raise_error
    end

    it "should return the days to buy and sell which return the most profit" do
    expect(stock_picker(stocks)).to eq("if you buy on day 1 and sell on day 6, you will make the most profit")
    end
end
