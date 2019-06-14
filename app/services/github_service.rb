class GithubService
attr_reader :access_token
  def initialize(hash = nil)
    @access_token = hash["access_token"] if hash
  end
end
