class TestJsonProcessor < Minitest::Test
  context '' do
    setup do
      @file = File.read(File.join('.', 'test', 'data', 'data.json'))
      @parsed = JSON.parse(@file)
    end

    should 'be an array' do
      assert_kind_of Array, @parsed
    end
  end
end