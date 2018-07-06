class GithubProfileController < ApplicationController
    def show
      @github_profile ||= GithubProfileService.new(current_user.token).profile
      @github_repos ||= GithubRepoService.new(current_user.token).repos
      # @github_gists ||= GithubGistService.new(current_user.token).gists
    end
  end