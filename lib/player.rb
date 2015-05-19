class Player < ActiveRecord::Base
  has_many(:items)


  private

  attr_reader(:name, :hp, :inventory)
  def initialize(attributes)
    @name = attributes[:name]
    @hp = 100
    @inventory = attributes[:inventory]
  end

  def attack(monster)
  end

  def take(item)
  end

  def unlock
  end

  # movement
  def move(direction)
    current_room = Room.find(player.room_id)
    if direction == "north"
      if current_room.north == true
        current_room.y_coordinate += 1
        current_room.id = player.room_id
      end
    elsif direction == "south"
      if current_room.south == true
        current_room.y_coordinate -= 1
        current_room.id = player.room_id
      end
    elsif direction == "east"
      if current_room.east == true
        current_room.x_coordinate += 1
        current_room.id = player.room_id
      end
    elsif direction == "west"
      if current_room.west == true
        current_room.x_coordinate -= 1
        current_room.id = player.room_id
      end
    end
  end
end
