class SecretsController < ApplicationController
    before_action
    
    def show
        return redirect_to(controller: 'sessions', action: 'new') if current_user == nil
    end

end
