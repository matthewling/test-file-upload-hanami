require 'hanami/validations'
require 'hanami/controller'

module Web::Controllers::Home
  class Upload
    include Web::Action

    MEGABYTE = 1024 ** 2

    expose :my_params

    params do
      required(:event).schema do
        required(:image).filled(size?: 1..(MEGABYTE * 50))
      end
    end

    def call(params)
      @my_params = params[:event]
    end
  end
end
