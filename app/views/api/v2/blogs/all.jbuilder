json.array!(@blogs) do |blog|
  json.extract! blog, :id, :description
  json.title blog.convert_title
  json.created_at blog.created_at.iso8601
end
