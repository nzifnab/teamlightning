module ApplicationHelper
  def current_location?(*locations)
    locations.any? do |location|
      if location.is_a?(Regexp)
        request.path =~ location
      else
        controller, action = location.split('#')

        result = (controller_path == controller)
        if action
          result &&= (action_name == action)
        end
        result
      end
    end
  end
end
