module TasksHelper
  def today_tasks
    Task.find(:all, conditions: ['deadline <= ?', Time.now])
  end
end
