require "unirest"

# get code from Spotify website
system "open 'https://accounts.spotify.com/authorize?client_id=______&response_type=code&redirect_uri=http://localhost:3000/v1/callback'"
print "Paste code from browser here: "
input_code = gets.chomp

# get access token using the given code
response = Unirest.post(
  "https://accounts.spotify.com/api/token",
  parameters: {
    grant_type: "authorization_code",
    code: input_code,
    redirect_uri: "http://localhost:3000/v1/callback",
    client_id: "______",
    client_secret: "______"
  }
)
access_token = response.body["access_token"]

# use access token to make authorized request
response = Unirest.get("https://api.spotify.com/v1/me",
  headers: {"Authorization" => "Bearer #{access_token}"}
)
p response.body
