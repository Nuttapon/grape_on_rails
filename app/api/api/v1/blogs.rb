module API
  module V1
    class Blogs < Grape::API
      include API::V1::Defaults

      resource :blogs do
        desc "Return a list of blogs"

        get '/' do
          blogs = Blog.all
        end

      end
    end
  end
end
