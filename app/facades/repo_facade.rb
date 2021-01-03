class RepoFacade
  def self.find_private_repos(current_user)
    repo = GithubService.find_private_repos(current_user)
    repo.map do |repo_info|
      Repo.new(repo_info)
    end
  end

  def self.find_public_repos(current_user)
    repo = GithubService.find_public_repos(current_user)
    repo.map do |repo_info|
      Repo.new(repo_info)
    end
  end
end
