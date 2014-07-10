class EmployeeFilter

  def initialize(employees)
    @employees = employees
  end

  def started_before_2006
    @employees.select do |start_date|
      start_date[:start_date] < Date.new(2006)
    end
  end

  def all_with_start_date
    @employees.map do |value|
      "#{value[:first_name]} #{value[:last_name]} (#{value[:title]}) - #{value[:start_date].strftime('%-m/%-d/%Y')}"
    end
  end

end