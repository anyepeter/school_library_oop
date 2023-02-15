require_relative '../decorator'
require_relative '../person'
require_relative '../capitalize_decorator'
require_relative '../trimmer_decorator'

describe Decorator do
  context 'Testing the decorator class' do
    it 'Should return the name of the person' do
      person = Person.new(42, 'Robert')
      expect(person.correct_name).to eql 'Robert'
    end

    it 'Should capitalize the name of the person' do
      person = Person.new(42, 'Robert')
      capitalize = CapitalizeDecorator.new(person)
      expect(capitalize.correct_name).to eql 'ROBERT'
    end

    it 'Should trim the name of the person to 10 characters' do
      person = Person.new(42, 'alexzanderomar')
      trimmer = TrimmerDecorator.new(person)
      expect(trimmer.correct_name).to eql 'alexzander'
    end
  end
end
