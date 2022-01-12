class StudentsController < ApplicationController
    has_many: grades:
    def index
        students = Students.all
        render json: students
    end
    def grades 
        students = Student.order(grade: :desc)
        render json: students
    end 
    def highest_grade 
        student = Student.order(grade: :desc).first 
        render json: students 
    end
end
