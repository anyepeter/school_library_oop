require_relative '../student'

describe Student do
  context 'Testing the student class to create a student' do
    it 'It should create a student' do
      student = Student.new('Math', 23, 'anye')
      expect(student.name).to eql 'anye'
    end
  end
end
