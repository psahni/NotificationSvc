require 'http/net'

class PushNotification
    include sendSv


    def send
        self.send(CURRENT_VERSION_NAME)
    end


    def x_party_api_name1
        XpartName1.sendNoti()
    end

    def x_party_api_name2
        XpartName2.sendNoti()
    end

end

class MailChimpSv
    include sendSv

    def send
    end
end


class Notification
    def initialize(type_parms)
        switch type_parms.type
            case 'PUSH'
                return PushNotification.new()
            case 'EMAIL'
                return EmailManager.new()
    end
end

class NotificationController < ApplicationController

    def create
    end

    def send
        NotificationMailer.send(Notification.new(get_params).send())
    end


    private

    def get_params
        params.allow(:type)
    end

end


