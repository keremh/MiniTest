require "minitest/benchmark" if ENV["BENCH"]

class TestKalem < Minitest::Benchmark
  def bench_my_algorithm
    assert_performance_linear 0.9999 do |n|
      @obj.my_algorithm(n)
    end
  end
end

describe "Kalem Benchmark" do 
  if ENV["BENCH"] then
    bench_performance_linear "my_algorithm", 0.9999 do |n|
      100.times do 
        @obj.my_algorithm(n)
      end
    end
  end
end

