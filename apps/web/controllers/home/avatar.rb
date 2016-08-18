require 'hanami/validations'
require 'hanami/controller'

module Web::Controllers::Home
  class Avatar
    include Web::Action
 
    MEGABYTE = 1024 ** 2

    params do
      required(:avatar) { size?(1..(5 * MEGABYTE)) }
    end

    expose :my_params

    def call(params)

      @my_params = params[:avatar]
    end
  end
end
