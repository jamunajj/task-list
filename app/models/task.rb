class Task < ApplicationRecord
	belongs_to :user, optional: true
	validates :name, presence: { message: "Task name is required." }
	validates :name, uniqueness: { case_sensitive: false, message: "Task name already exists."  }
	validates :description, presence: { message: "Task description is required." }
	validates :due_date, presence: { message: "Task due date is required." }
	validates :status,  inclusion: { in: [ true, false ], message: "Task status is required." }
	validates :user_id, presence: { message: "Assigned to/User is required." }

	# Return task status as text based on boolean value
	def Task.get_status_text(status)
	   status.to_s == 'true'?"Completed":"Pending"
	end

end
