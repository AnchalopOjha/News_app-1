class User < ApplicationRecord
  rolify
  attribute :admin, :boolean, default: false
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
     
        
          validates :name, presence: true
       
        
end
