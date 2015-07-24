def test_stale_eh
	obj_under_test = Something.new

	refute obj_under_test.stale?

	Time.stub :now, Time.at(0) do 
		assert obj_under_test.stale?
	end
end

def obj_under_test.fake_method

end

