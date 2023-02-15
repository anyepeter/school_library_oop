require_relative '../person'

describe Person do
  context 'Testing the person class to create a person' do
    it 'It should create a person' do
      person = Person.new(32, 'peter')
      expect(person.correct_name).to eql 'peter'
    end
  end
end
