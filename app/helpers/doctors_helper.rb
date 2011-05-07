module DoctorsHelper
  def float_to_right_unless_new
    unless @controller.action_name == "new"
      "small right"
    end
  end
end
