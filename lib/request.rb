class Request

    DEFAULT_HEADERS = {
        type: 'application/json'
    }

    def post(url, params)
        DEFAULT_HEADERS.merge(params[:headers])
    end

    def get(url)

    end
end