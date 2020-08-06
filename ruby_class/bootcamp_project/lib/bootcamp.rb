class Bootcamp

    attr_reader :name, :slogan, :student_capacity, :teachers, :students

    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new{|h, k| h[k] = []}
    end

    def hire(string)
        @teachers << string
    end

    def enroll(string)
        if @students.length < @student_capacity
            @students << string
            return true
        else
            return false
        end
    end

    def enrolled?(string) #parameter, argument is when you invoke it 
        @students.include?(string)
    end

    def student_to_teacher_ratio
        @students.length / @teachers.length
    end

    def add_grade(student, grade)
        if enrolled?(student)
            @grades[student] << grade 
            return true
        else
            return false
        end
    end

    def num_grades(string)
        return @grades[string].length
    end

    def average_grade(string)
        return nil if !enrolled?(string) || @grades[string].length == 0

        @grades[string].sum / num_grades(string)
    end
end
