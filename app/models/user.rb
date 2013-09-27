class User < ActiveRecord::Base
  def full_name
    return family_name + " " + first_name
  end
end
