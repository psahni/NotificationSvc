class Manager
    def init(params)
        // common logic
        Paylaod.create(type: params[:type], content: params[:content])
    end

    def callback
    end

end
