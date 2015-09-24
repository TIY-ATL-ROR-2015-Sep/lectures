def day_of_week(n)
  days = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'sat', 'sun']
  days[n+1]
end

def number_of_weekday(name)
  days = ["monday", "tuesday"]
  days.index(name.downcase) + 1
end
