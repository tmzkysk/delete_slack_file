require 'net/https'
require 'json'

BASE_ADDR = 'https://slack.com/api/files'
token     = ENV['SLACK_TOKEN']

# 先にfile_idを取得
res = Net::HTTP.get(URI.parse("#{BASE_ADDR}.list?token=#{token}"))
res = JSON.parse(res)
file_ids = res['files'].map { |file| file['id']}

# 取得したfile_idをループで回して1件ずつ削除していく
file_ids.each do |file_id|
  Net::HTTP.post_form(URI.parse("#{BASE_ADDR}.delete") ,{token: token, file: file_id})
end
