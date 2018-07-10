require 'digest/md5'
require 'marvel_crawler'

Quando("que eu tenha acesso a url da Marvel") do
  @crawler = MarvelCrawler.client
  @crawler.api_key = '231f56de020de6c816eb5c369ece86a6'
  @crawler.private_key = 'e93e847a66ee9c8b1cad3e2333a17aa0e1424b99'
  @crawler.record_per_page = 5 
  @response = @crawler.get_character(id:1009652)
  #binding.pry
end

Então("a api me retorna pesquisa status {int}") do |status_code|
  expect(@response.code).to eq(status_code)
  expect(@response.results[0]['id']).to eq(1009652)
  puts @response.code
  puts @response.results[0]['id']
  puts @response.results[0]['name']
end