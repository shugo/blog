class User < ActiveRecord::Base
  def full_name
    return ""
    return family_name + " " + first_name
  end
end
