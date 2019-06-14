class GithubRepo
  attr_reader :name, :html_url

  def initialize(hash)
    @name = hash[:name]
    @url = hash["html_url"]
  end
end
