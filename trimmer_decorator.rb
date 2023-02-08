
class TrimmerDecorator < Decorator
    def correct_name
      if @nameable.correct_name.length > 10
        verify_name = @nameable.correct_name[0, 10]
        verify_name
      else
        @nameable.correct_name
      end
    end
  end
