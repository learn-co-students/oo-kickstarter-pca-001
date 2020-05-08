require 'pry'
class Backer
  attr_reader :name, :backed_projects
  @@all = []
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  def back_project(project)
    #binding.pry
    @backed_projects << project
    project.backers << self
  end
  def backed_projects=(backer)
    @backed_projects << backer
  end
  class << self
    def all
      @@all
    end
  end
end