require 'sinatra-base'

class Helper
    def self.current_user(session)
        @dispatcher = Dispatcher.find_by(id: session[:user_id])
    end

    def self.is_logged_in?(session)
        !!session[:user_id]
    end
end