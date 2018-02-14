class SomeOtherClassToAutoload
  def do_something
    puts "#{self.class.name}: #{Thread.current.object_id}"
  end
end
