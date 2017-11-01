json.extract! article, :id, :title, :articleimage, :videolink, :body, :metadescription, :metakeywords, :created_at, :updated_at
json.url article_url(article, format: :json)
