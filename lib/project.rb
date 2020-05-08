class Project
  attr_reader :title, :backers
  @@all = []
  def initialize(title)
    @title = title
    @backers = []
  end
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
  def backers=(backer)
    @backers << backer
  end
  class << self
    def all
      @@all
    end
  end
end