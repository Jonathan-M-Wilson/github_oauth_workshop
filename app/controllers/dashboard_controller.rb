class DashboardController < ApplicationController
  def show
    @public_repos = RepoFacade.find_public_repos(current_user)
    @private_repos = RepoFacade.find_private_repos(current_user)
  end
end
