require_relative '/Users/Ko_Toshiaki/fjord-ruby/8-method/homework1-2'

describe "chapter8-2" do
  describe "englishNumber" do
    it "大きい桁数でも正しく表現すべき" do
      output = "five thousand four hundred thirty-two trillion nine hundred fifty-eight billion four hundred thirty million nine hundred fifty-three thousand four hundred fifty-two"

      expect(englishNumber(5_432_958_430_953_452)).to eq(output)
    end

    it "ゼロになるべき" do
      expect(englishNumber(0)).to eq("zero") 
    end

    it "マイナスではない数字を入れてください" do
      expect(englishNumber(-9)).to eq("負でない数を入力してください.")
    end
  end
end
