class PostCompany < ActiveRecord::Base
  belongs_to :post
  belongs_to :company
end
