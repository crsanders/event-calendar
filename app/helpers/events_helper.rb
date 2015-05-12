module EventsHelper
  def find_available
    @available = []
    User.all.each do |user|
      begin
        day = @event.date.wday
        if day == 0 
          if ((user.sunday_start.to_i <= @event.time.to_i) && (user.sunday_end.to_i >= @event.time.to_i))
            @available.push user.name 
          end
        elsif day == 1 
          if ((user.monday_start.to_i <= @event.time.to_i) && (user.monday_end.to_i >= @event.time.to_i))
            @available.push user.name 
          end
        elsif day == 2 
          if ((user.tuesday_start.to_i <= @event.time.to_i) && (user.tuesday_end.to_i >= @event.time.to_i))
            @available.push user.name 
          end
        elsif day == 3
          if ((user.wednesday_start.to_i <= @event.time.to_i) && (user.wednesday_end.to_i >= @event.time.to_i))
            @available.push user.name 
          end
        elsif day == 4
          if ((user.thursday_start.to_i <= @event.time.to_i) && (user.thursday_end.to_i >= @event.time.to_i))
            @available.push user.name 
          end
        elsif day == 5
          if ((user.friday_start.to_i <= @event.time.to_i) && (user.friday_end.to_i >= @event.time.to_i))
            @available.push user.name 
          end
        elsif day == 6
          if ((user.saturday_start.to_i <= @event.time.to_i) && (user.saturday_end.to_i >= @event.time.to_i))
            @available.push user.name 
          end
        end
      rescue
      end
    end
    @available.push "No one is available" if @available.empty?
    return nil
  end
end
