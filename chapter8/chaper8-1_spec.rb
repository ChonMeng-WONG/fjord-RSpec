require_relative '/Users/Ko_Toshiaki/fjord-ruby/8-method/homework1'

describe ask question, "yes/noで答えているかどうか" do
	describe goodAnswer, "yes/noで答えたらgoodAnswerがtrueを返す" do
		before do
			reply = gets.comp.downcase
		end

		it "yesで答えたらgoodAnswerはtrueを返してくる" do
			reply == 'yes'
			expect(goodAnswer).to be_true
		end

		it "noで答えたらgoodAnswerはtrueを返してくる" do
			reply == 'no'
			expect(goodAnswer).to be_true
		end

		it "それ以外はfalseを返してくる"do
			reply == 'neither'
			expect(goodAnswer).to be_false
		end

	end
end