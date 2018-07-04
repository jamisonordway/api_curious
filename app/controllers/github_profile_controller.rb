class GithubProfileController < ApplicationController
    def show
      @github_profile ||= GitHubProfileService.new(current_user.token).profile
      @github_repos ||= GitHubRepoService.new(current_user.token).repos
      @github_gists ||= GitHubGistService.new(current_user.token).gists
    end
  end