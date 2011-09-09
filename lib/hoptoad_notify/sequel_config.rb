DB = Sequel.connect('sqlite://hoptoads.db')
class HoptoadError < Sequel::Model
  def after_create
    # send growl notification
    # puts "After create"
    GrowlNotify.sticky!(:title => self.error_class, :description => self.error_msg + "\n" + self.controller_action)
  end
end
