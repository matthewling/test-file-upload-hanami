module Web::Controllers::Home
  class UploadWithoutWhitelist
    include Web::Action

    expose :my_params

    def call(params)
      @my_params = params[:event]
    end
  end
end
