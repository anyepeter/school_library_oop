require_relative '../teacher'

describe Teacher do
  context 'Testing the teacher class to create a teacher' do
    it 'It should create a student' do
      teacher = Teacher.new('Software', 54, 'Godlove')
      expect(teacher.name).to eql 'Godlove'
    end
  end
end