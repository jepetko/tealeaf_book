require 'json'
require 'nokogiri'
require 'axlsx'
require 'csv'

slashdot_articles = []
File.open('slashdot.xml', 'r+') do |f|
  parser = Nokogiri::XML f
  slashdot_articles = parser.css('item').map do |itm|
    {
        title: itm.at_css('title').content,
        link: itm.at_css('link').content,
        summary: itm.at_css('description').content
    }
  end
end
p slashdot_articles

feedzilla_articles = []
File.open('feedzilla.json', 'r+') do |f|
  items = JSON.parse f.read
  feedzilla_articles = items['articles'].map do |a|
     {
         title: a['title'],
         link: a['url'],
         summary: a['summary']
     }
  end
end
p feedzilla_articles

all_articles = (slashdot_articles + feedzilla_articles).sort_by {|element| element[:title]}

# Exercise CSV
CSV.open('result.csv', 'wb') do |csv|
  all_articles.each do |a|
    csv << [ a[:title], a[:link], a[:summary] ]
  end
end

# Exercise XLS
pkg = Axlsx::Package.new
pkg.workbook.add_worksheet(:name => 'Articles') do |sheet|
  all_articles.each do |a|
    sheet.add_row [a[:title], a[:link], a[:summary]]
  end
end
pkg.serialize 'result.xlsx'