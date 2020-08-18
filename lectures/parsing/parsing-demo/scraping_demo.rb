require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.epicurious.com

url = 'https://www.imdb.com/chart/boxoffice/?ref_=nv_ch_cht'

urls = [
  'https://www.blogdoadilson.com/page1',
  'https://www.blogdoadilson.com/page2',
  'https://www.blogdoadilson.com/page3'
]


['mastodon', 'led zeppelin', 'janis joplin', 'jimi hendrix'].each do |name|
  url = "https://rj.olx.com.br/?q=#{name}"
end


urls.each do |url|

  file = open(url).read
  document = Nokogiri::HTML(file)

  document.search('.titleColumn').each do |element|
    # puts '----------------------'
    # puts '----- Elemento inteiro:'
    # puts element
    puts '----- Texto do elemento:'
    puts element.text.strip
    puts '----- Valor do atributo href da âncora dentro do elemento'
    puts element.search('a')[0].attributes['href']
    puts '----------------------'
  end

end
