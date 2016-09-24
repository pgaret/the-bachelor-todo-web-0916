require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data[season].each do |x|
    if x["status"] == "Winner"
      name = x["name"].split(' ')[0]
    end
  end
  name
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |x, y|
    y.each do |a|
      if a["occupation"] == occupation
        name = a["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |x, y|
    y.each do |a|
      if a["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  occ = nil
  data.each do |x, y|
    y.each do |a|
      if a["hometown"] == hometown && occ == nil
        occ = a["occupation"]
        occ
      end
    end
  end
  occ
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each do |x|
    ages.push(x["age"].to_f)
  end
  avg = ages.reduce(:+) / ages.length
  avg.round
end
