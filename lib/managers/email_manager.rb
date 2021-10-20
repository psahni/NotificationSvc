class EmailManager < Manager
    def init
        super
    end

    def send(payload)
        Email.new(payload).send() do |response|
            //
        end
    end
end