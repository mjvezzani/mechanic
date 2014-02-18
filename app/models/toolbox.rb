class Toolbox < ActiveRecord::Base
  belongs_to :tool
  belongs_to :mechanic
end
