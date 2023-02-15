require_relative '../classroom'

describe Classroom do
  context 'Testing the classroom class to add a classroom for students' do
    label = 'Math room'

    classroom = Classroom.new(label)

    it 'should validate the label of the class' do
      expect(classroom.label).to eql label
    end
  end
end
