html = Nokogiri.HTML(content)

price = html.css('#prcIsum').text
raise 'something happend!' if price.strip == ''

outputs << {
    _collection: "products",
    name: page['vars']['name'],
    url: page['url'],
    price: price
}