module API
  class Base < Grape::API
    mount API::V1::Base
    # This could be uncommented to support additional version.
    # mount API::V2::Base
  end
end
