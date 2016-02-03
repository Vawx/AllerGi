class Restaurant < ActiveRecord::Base
  has_and_belongs_to_many :dishes

  define_method :equals do |match|
    return match.name == self.name && match.location == self.location && match.phone == self.phone && match.views == self.views
  end
end
