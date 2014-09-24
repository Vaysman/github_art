module GithubArt
  class Commit
    attr_reader :commiter

    def initialize(commiter, repo)
      @commiter = commiter
    end

    def git_object
      commiter.name
    end
  end  
end
