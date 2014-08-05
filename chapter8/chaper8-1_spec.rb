require_relative '/Users/Ko_Toshiaki/fjord-ruby/8-method/homework1'

describe "ask" do
  describe goodAnswer, "yes/noで答えたらgoodAnswerがtrueを返す" do

    it "yesで答えたらgoodAnswerはtrueを返してくる" do
      reply.stub!(:gets){"yes"}  # replyがyesと返してきたら
      expect(goodAnswer).to be_true  # goodAnswerがtrueになる
    end

    it "noで答えたらgoodAnswerはtrueを返してくる" do
      reply.stub!(:gets){"no"} # replyがnoと返してきたら
      expect(goodAnswer).to be_true # goodAnswerがtrueになる
    end

    it "それ以外はfalseを返してくる"do
      reply.stub!(:gets){"neither"} # replyがyes/no以外と返してきたら
      expect(goodAnswer).to be_false # goodAnswerがfalseになる
    end
  end
end