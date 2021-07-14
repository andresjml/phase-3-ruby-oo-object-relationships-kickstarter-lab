class Backer
    attr_reader :name   

    def initialize(name)
        @name=name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        projects=ProjectBacker.all.filter{|project|project.backer==self}
        projects.map{|project|project.project}
    end
end