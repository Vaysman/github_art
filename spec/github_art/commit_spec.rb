require "spec_helper"
require_relative "../../lib/github_art"

RSpec.describe GithubArt::Commit do
  let(:committer) { double(GithubArt::Committer) }
  let(:repo) { double(GithubArt::Repo) }

  describe "#git_object" do
    it "get name from commiter object" do
      sut = GithubArt::Commit.new(committer, repo)
      expect(committer).to receive(:name)

      sut.git_object
    end
  end
end