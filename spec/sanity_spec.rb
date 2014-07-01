require 'sanity'

RSpec.describe Sanity_Class do

  describe '#retOne True Sanity' do
    it 'returns 1' do
      expect(Sanity_Class.new.retOne()).to eq(1)
     end
  end
  
  describe '#retOne False Sanity' do
     it 'returns 2. THIS SHOULD FAIL. Checking rspec\'s sanity' do
	@sanity_object = Sanity_Class.new()
	expect(@sanity_object.retOne()).to eq(2)
	end
   end

end

RSpec.describe Sanity_Class do
  describe 'Different describe blocks' do
    it 'returns true/compiles' do
      expect(true)
     end
  end
end
