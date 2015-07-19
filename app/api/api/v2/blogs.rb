module API
  module V2
    class Blogs < Grape::API
      include API::V2::Defaults

      resource :blogs do
        desc "Return a list of blogs"

        get '/' do
          blogs = Blog.order('id desc')
        end

        get :first do
          blog = Blog.first
        end

      end
    end
  end
end
