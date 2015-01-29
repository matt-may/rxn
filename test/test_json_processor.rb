class TestJsonProcessor < Minitest::Test
  context 'processor' do
    should 'be an instance of the processor class' do
      processor = JsonProcessor::Processor.new(sample_file('data.json'))
      assert_kind_of JsonProcessor::Processor, processor
    end

    should 'merge permissions properly in example datafile' do
      assert_permissions_merged 'data.json', 'data_result.json'
    end

    should 'merge permissions properly in 2nd example datafile' do
      assert_permissions_merged 'data2.json', 'data_result_2.json'
    end

    should 'merge permissions properly in 3rd example datafile' do
      assert_permissions_merged 'data3.json', 'data_result_3.json'
    end

    should 'merge permissions properly in 4th example datafile' do
      assert_permissions_merged 'data4.json', 'data_result_4.json'
    end

    should 'merge permissions properly in 5th example datafile' do
      assert_permissions_merged 'data5.json', 'data_result_5.json'
    end

    should 'merge permissions properly in 6th example datafile' do
      assert_permissions_merged 'data6.json', 'data_result_6.json'
    end
  end

  def sample_file(file)
    File.join('.', 'test', 'data', file)
  end

  def assert_permissions_merged(data_file, expected_file)
    processor = JsonProcessor::Processor.new(sample_file(data_file))
    merged = processor.merge
    expected = JSON.parse(File.read(sample_file(expected_file)))

    assert_equal expected, merged
  end
end