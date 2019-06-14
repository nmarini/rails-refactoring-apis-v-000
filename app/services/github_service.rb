class GithubService
attr_reader :access_token
  def initialize(hash = nil)
    @access_token = hash["access_token"] if hash
  end

  def authenticate!(client_id, client_secret, code)
    response = Faraday.post "https://github.com/login/oauth/access_token", {client_id: client_id, client_secret: client_secret,code: code}, {'Accept' => 'application/json'}
    access_hash = JSON.parse(response.body)
    session[:token] = access_hash["access_token"]
  end
end
