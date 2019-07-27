# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Course < ApplicationRecord

  has_many :enrolled,
  primary_key: :id,
  foreign_key: :course_id, 
  class_name: :Enrollement

  has_many :enrolled_students,
  through: :enrolled, 
  source: :student 

  has_one :instructor,
  primary_key: :id,
  foreign_key: :instructor_id,
  class_name: :User


end
