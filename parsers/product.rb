html = Nokogiri.HTML(content)

price = html.css('#prcIsum').text
price =  html.css('#prcIsum_bidPrice').text if price.strip == ''
price =  html.css('.vi-originalPrice').text if price.strip == ''
raise 'something happend!' if price.strip == ''
outputs << {
    _collection: "products",
    name: page['vars']['name'],
    url: page['url'],
    price: price
}