class KalemAsker
	def initialize(kalem)
		@kalem = kalem
	end

	def ask(question)
		method = question.tr(" ", "_") + "?"
		@kalem.__send__(method)
	end
end

require "minitest/autorun"

describe KalemAsker, :ask do 
	describe "when passed an unpunctuated question" do 
		if "should invoke the appropriate predicate method on the kalem" do 
			@kalem = Minitest::Mock.new
			@kalem_asker = KalemAsker.new @kalem
			@kalem.expect :will_it_blend?, :return_value

			@kalem_asker.ask "will it blend"

			@kalem.verify
		end
	end
end

