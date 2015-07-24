require "minitest/autorun"

describe Kalem do 
	before do 
		@kalem = Kalem.new
	end

	describe "when asked about cheeseburgers" do 
		it "must respond positively" do
			@kalem.i_can_has_cheezburger?.must_equal "OHA!"
		end
	end

	describe "when asked about blending possibilities" do 
		it "won't say no" do 
			@meme.will_it_blend?.wont_match /^no/i
		end
	end
end

