class User < ActiveRecord::Base
  has_many :tests
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    def has_test?(test)
      self.tests.exists?(:id == test.id)
    end

end
