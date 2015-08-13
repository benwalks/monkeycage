class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable
  has_many :jobs, dependent: :destroy

  def has_active_jobs
    if self.jobs.active.empty?
      false
    else
      true
    end
  end

end
