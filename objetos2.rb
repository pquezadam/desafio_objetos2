require 'date'

class Course
    attr_reader :name,:start,:finish
    def initialize(name,start,finish)
        @name = name
        @start = start
        @finish = finish
    end

    def self.read_file(file = 'curso.txt')
        data = File.open(file, 'r').readlines.map(&:chomp)
        course_objects = []

        data.each do |line|
            course_data = line.split(', ')
            course_objects << Course.new(*course_data)
        end

        return course_objects
    end

    def self.start_at(filter = Date.today)
        courses = self.read_file  #self implicito
        selected_courses = courses.select{|course| course.start < filter}
        selected_courses.map!{|course|course.name}
    end

    def self.finish_at(filter = Date.today)
        courses = self.read_file  #self implicito
        selected_courses = courses.select{|course| course.start > filter}
        print selected_courses.map!{|course|course.name}

end

Course.read_file
Course.start_at
Course.finish_at
