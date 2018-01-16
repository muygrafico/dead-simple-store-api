# spec/support/request_spec_helper
module RequestSpecHelper
  
  def json
    JSON.parse response.body
  end

  def login_user(user)
    post '/authenticate', params: { email: user.email, password: user.password }
    return json['auth_token']
  end
end
