Rails.application.config.middleware.use OmniAuth::Builder do
       # provider :github, ENV['12f163a7d412f1b17a41'], ENV['ffc1a1aaba298d5cb0f6cc361682943293578e45']
        provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], scope: "user,repo,gist"
end