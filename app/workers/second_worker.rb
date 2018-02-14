class SecondWorker
  include Sidekiq::Worker

  def perform(id)
    ActiveRecord::Base.transaction do
      user = User.find(id)
      user.update!(field2: id)
      SomeOtherClassToAutoload.new.do_something
    end
  end
end
