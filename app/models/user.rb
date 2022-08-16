class User < ApplicationRecord
	has_many :tasks
	validates :first_name, presence: { message: "First name is required." }
	validates :last_name, presence: { message: "Last name is required." }
	validates :profile, presence: { message: "User profile cannot be empty." }
	validates :dob, presence: { message: "Date of Birth is required." }

	# Return Full Name Params: First Name, Last Name
    def User.full_name(first_name, last_name)
       "#{first_name.capitalize} #{last_name.capitalize}"
    end

end
