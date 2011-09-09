# BSON::InvalidObjectId: illegal ObjectId format
class GrowlNotifier
  def notify
    @errors = Error.find :all # returns latest 30 errors
    # debugger
    all_errors = @errors.map(& :id)
    all_h_errors = HoptoadError.all.map(& :error_id).uniq
    # HoptoadError.destroy
    @errors.reverse.each do |e|
      if !all_h_errors.include?(e.id) && e.project_id.to_s == "38793" #cloudfactory project_id
      HoptoadError.create({
        :error_id => e.id,
        :project_id => e.project_id, 
        :error_class => e.error_class, 
        :error_msg => e.error_message, 
        :resolved => e.resolved,
        :file => e.file,
        :rails_env => e.rails_env,
        :line_number => e.line_number,
        :controller_action => e.controller.to_s + "#" + e.action.to_s,
        :created_at => Time.now
        })
      end
    end
    # Hoptoad.create(:error_id => , :app_id => , :error_msg => , :controller_action => )    
  end
end
# 
g = GrowlNotifier.new
g.notify