class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def action_a
    User.transaction do
      User.find(params[:id]).update!(field1: 12)
      SomeOtherClassToAutoload.new.do_something
    end
    render json: {success: true}
  end

  def action_b
    User.transaction do
      User.find(params[:id]).update!(field2: 13)
      SomeOtherClassToAutoload.new.do_something
    end
    render json: {success: true}
  end
end
