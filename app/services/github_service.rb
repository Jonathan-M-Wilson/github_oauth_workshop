class GithubService
  def self.find_public_repos(current_user)
    response = conn(current_user).get('/user/repos?per_page=100&type=public')
    get_json(response)
  end

  def self.find_private_repos(current_user)
    response = conn(current_user).get('/user/repos?per_page=100&type=private')
    get_json(response)
  end

  def self.conn(current_user)
    private
    Faraday.new('https://api.github.com', headers: { 'Authorization': "token #{current_user.token}" })
  end

  def self.get_json(response)
    private
    JSON.parse(response.body, symbolize_names: true)
  end
end
