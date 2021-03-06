require('./lib/item.rb')
require('./lib/monster.rb')
require('./lib/room.rb')
require('./lib/player.rb')

Player.create(room_id: nil, hp: 200)

###############
# AT A GLANCE #
###############
#
# TOTALS
# 26 rooms
# 17 zombies
# 7 weapons
# 7 health items
#
# room 1 -- weapon NERF GUN -- zombie
# room 2 -- weapon KATANA -- zombie
# room 3 -- health SPRITE -- zombie
# room 4
# room 5 -- zombie
# room 6 -- zombie
# room 7
# room 8 -- zombie
# room 9 -- zombie
# room 10 -- health CAN OF SODA
# room 11 -- zombie BOSS
# room 12 -- weapon CHAINSAW
# room 13 -- health ROAST BEEF SANDWICH -- zombie
# room 14 -- health COFFEE
# room 15 -- weapon STAPLER -- zombie
# room 16 -- weapon FIRE EXTINGUISHER -- zombie
# room 17 -- health CAPRI SUN
# room 18 -- zombie
# room 19 -- zombie
# room 20 -- health APPLE
# room 21 -- health WHISKEY -- zombie
# room 22 -- weapon CHEF KNIFE -- zombie
# room 23
# room 24 -- zombie
# room 25 -- weapon BASEBALL BAT -- zombie
# room 26

# monster loot -- not sure if working
Item.create(:name => "Epicodus T-Shirt, Size: L", :attack_damage => 0, :hp_modifier => 1, :in_backpack? =>  false, :room_id =>  nil)
Item.create(:name => "Actual Ninja Stars", :attack_damage => 20, :hp_modifier=> 0, :in_backpack? => false, :room_id => nil)
Item.create(:name => "Canned Tuna, 4oz (3-pack)", :attack_damage => 0, :hp_modifier => 30, :in_backpack? => false, :room_id => nil)
Item.create(:name => "Machete used from the 2010 film 'Machete', starring Danny Trejo", :attack_damage => 25, :hp_modifier => 0, :in_backpack? => false, :room_id => nil)
Item.create(:name => "Miller High Life, 32oz", :attack_damage => 0, :hp_modifier => 50, :in_backpack? => false, :room_id => nil)

# standard items found in rooms
Item.create(:name => "Katana", :attack_damage => 25, :hp_modifier => 0, :in_backpack? => false, :room_id => 2)
Item.create(:name => "Stapler (brand new)", :attack_damage => 2, :hp_modifier => 0, :in_backpack? => false, :room_id => 15)
Item.create(:name => "Chainsaw", :attack_damage => 20, :hp_modifier => 0, :in_backpack? => false, :room_id => 12)
Item.create(:name => "Apple", :attack_damage => 2, :hp_modifier => 10, :in_backpack? => false, :room_id => 20)
Item.create(:name => "Baseball Bat", :attack_damage => 15, :hp_modifier => 0, :in_backpack? => false, :room_id => 25)
Item.create(:name => "12oz Can of 'Mountain Dew'", :attack_damage => 2, :hp_modifier => 10, :in_backpack? => false, :room_id => 10)
Item.create(:name => "Arby's Original Roast Beef Sandwich", :attack_damage => 8, :hp_modifier => 3, :in_backpack? => false, :room_id => 13)
Item.create(:name => "Whiskey, double, on the rocks", :attack_damage => 7, :hp_modifier => 100, :in_backpack? => false, :room_id => 21)
Item.create(:name => "Fire Extinguisher", :attack_damage => 10, :hp_modifier => 0, :in_backpack? => false, :room_id => 16)
Item.create(:name => "Vintage Nerf Gun, circa 1986", :attack_damage => 100, :hp_modifier => 0, :in_backpack? => false, :room_id => 1)
Item.create(:name => "A Baby Seal", :attack_damage => 5, :hp_modifier => 1, :in_backpack? => false, :room_id => nil)

Item.create(:name => "8oz Cup of Coffee (Americano)'", :attack_damage => 2, :hp_modifier => 10, :in_backpack? => false, :room_id => 14)
Item.create(:name => "12oz Can of 'Sprite'", :attack_damage => 2, :hp_modifier => 10, :in_backpack? => false, :room_id => 3)
Item.create(:name => "Capri Sun, 8oz 'Pacific Cooler'", :attack_damage => 2, :hp_modifier => 10, :in_backpack? => false, :room_id => 17)
Item.create(:name => "Chef Knife", :attack_damage => 15, :hp_modifier => 0, :in_backpack? => false, :room_id => 22)


Room.create({:x_coordinate => 1, :y_coordinate => 5, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's office. It's a horrible mess"}) #1
Room.create({:x_coordinate => 2, :y_coordinate => 5, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your boss's office. It is covered in Japanese paraphernalia, despite him having no heritage from the region."}) #2
Room.create({:x_coordinate => 3, :y_coordinate => 5, :north => FALSE, :south => TRUE, :east => TRUE, :west => FALSE, :description => "You are in the foyer to your boss's receptionist's personal assistant's office.  You suddenly remember how ridiculous your former life was."}) #3
Room.create({:x_coordinate => 4, :y_coordinate => 5, :north => FALSE, :south => TRUE, :east => TRUE, :west => TRUE, :description => "You are at the north end of a long hallway. The sheer amout of blood on the walls is staggering."}) #4
Room.create({:x_coordinate => 5, :y_coordinate => 5, :north => FALSE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "You are in Wendy's sick corner office. She only got it because she's an insufferable suck up."}) #5
Room.create({:x_coordinate => 1, :y_coordinate => 4, :north => TRUE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in your buddy Steve's receptionist's office. You could never remember her name."}) #6
Room.create({:x_coordinate => 2, :y_coordinate => 4, :north => TRUE, :south => FALSE, :east => TRUE, :west => FALSE, :description => "You are in your boss's receptionist's office. There are parts of her everywhere."}) #7
Room.create({:x_coordinate => 3, :y_coordinate => 4, :north => TRUE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "You are in your boss's receptionist's personal assistant's office. From the look of things, nothing good happened here."}) #8
Room.create({:x_coordinate => 4, :y_coordinate => 4, :north => TRUE, :south => TRUE, :east => TRUE, :west => FALSE, :description => "You are in the hallway right outside of Dave's office.  It doesn't look like Dave put up much of a fight, he was not the athletic type."}) #9
Room.create({:x_coordinate => 5, :y_coordinate => 4, :north => FALSE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "There are in Dave's office.  There are empty Mountain Dew can's everywhere"}) #10
Room.create({:x_coordinate => 1, :y_coordinate => 3, :north => TRUE, :south => TRUE, :east => TRUE, :west => FALSE, :description => "THE EXIT!!! IT'S RIGHT THERE!!! RIGHT IN FRONT OF YOUR STUPID FACE!!!"}) #11
Room.create({:x_coordinate => 2, :y_coordinate => 3, :north => FALSE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "You are in the store room. You suddenly become nostalgic for the days that you used to hide in here to avoid work."}) #12
Room.create({:x_coordinate => 3, :y_coordinate => 3, :north => FALSE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in the employee break room. Roger forgot to clean up his mess again"}) #13
Room.create({:x_coordinate => 4, :y_coordinate => 3, :north => TRUE, :south => TRUE, :east => TRUE, :west => FALSE, :description => "You are in the hallway right outside of your office. There's blood and brains dripping from the wall."}) #14
Room.create({:x_coordinate => 5, :y_coordinate => 3, :north => FALSE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "You are in your hum drum office. It is the same as it was yesterday, and the day before that, and the day before that."}) #15
Room.create({:x_coordinate => 1, :y_coordinate => 2, :north => TRUE, :south => FALSE, :east => TRUE, :west => FALSE, :description => "You are right by the copier. It is continually making copies of Debora's half eaten face."}) #16
Room.create({:x_coordinate => 2, :y_coordinate => 2, :north => FALSE, :south => TRUE, :east => FALSE, :west => TRUE, :description => "You are at the water cooler. There is nobody to talk to about last nights Game of Thrones episode."}) #17
Room.create({:x_coordinate => 3, :y_coordinate => 2, :north => TRUE, :south => TRUE, :east => FALSE, :west => FALSE, :description => "You are in the hallway to the break room. It is remakably free of distiguishing features."}) #18
Room.create({:x_coordinate => 4, :y_coordinate => 2, :north => TRUE, :south => TRUE, :east => TRUE, :west => FALSE, :description => "You are in the hallway right outside of Rob's office. The rank scent of death is all around you."}) #19
Room.create({:x_coordinate => 5, :y_coordinate => 2, :north => FALSE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "You are in Rob's office. The contents of his man purse are strewn all over the place."}) #20
Room.create({:x_coordinate => 1, :y_coordinate => 1, :north => FALSE, :south => FALSE, :east => TRUE, :west => FALSE, :description => "You are in the janitor's closet. It smells heavily of booze."}) #21
Room.create({:x_coordinate => 2, :y_coordinate => 1, :north => TRUE, :south => FALSE, :east => TRUE, :west => TRUE, :description => "You are right outside of the janitor's closet.  You are seriously considering cowering in there whilst hugging your knees and crying"}) #22
Room.create({:x_coordinate => 3, :y_coordinate => 1, :north => TRUE, :south => FALSE, :east => TRUE, :west => TRUE, :description => "You are right around the corner from the long hallway.  You pause for a moment to reflect on how poorly laid out this office is."}) #23
Room.create({:x_coordinate => 4, :y_coordinate => 1, :north => TRUE, :south => FALSE, :east => TRUE, :west => TRUE, :description => "You are at the south end of a long hallway. You can see streaks of blood from where somebody has been draged into Sean's office"}) #24
Room.create({:x_coordinate => 5, :y_coordinate => 1, :north => FALSE, :south => FALSE, :east => FALSE, :west => TRUE, :description => "You are in Sean's office. You can see his half eaten corpse lying across his desk... well... at least you think it's Sean... it's really hard to tell without a face"}) #25
Room.create({:x_coordinate => 0, :y_coordinate => 3, :north => FALSE, :south => FALSE, :east => FALSE, :west => FALSE, :description => "YOU'VE DONE IT!!! You've finally made it out of that hellhole. You have no idea what awaits you outside, but you can take solice in the fact that you never have to go to work again."}) #26


Monster.create(:description => "Rob the Zombie", :hp => 40, :ap => 5, :killed_by_player => false, :attack_counter => 0, :room_id => 1)
Monster.create(:description => "Zombie in Samurai Garb (quite scary actually)", :hp => 40, :ap => 10, :killed_by_player => false, :attack_counter => 0, :room_id => 2)
Monster.create(:description => "Forever Alone Zombie", :hp => 40, :ap => 5, :killed_by_player => false, :attack_counter => 0, :room_id => 3)
Monster.create(:description => "Zombie Steve 6", :hp => 40, :ap => 10, :killed_by_player => false, :attack_counter => 0, :room_id => 5)
Monster.create(:description => "What's 'er Butt's Zombie", :hp => 40, :ap => 5, :killed_by_player => false, :attack_counter => 0, :room_id => 6)
Monster.create(:description => "Willem Dafoe, as himself", :hp => 40, :ap => 5, :killed_by_player => false, :attack_counter => 0, :room_id => 8)
Monster.create(:description => "Zombie Jesus", :hp => 40, :ap => 10, :killed_by_player => false, :attack_counter => 0, :room_id => 9)
Monster.create(:description => "Zombie Steve 5", :hp => 20, :ap => 5, :killed_by_player => false, :attack_counter => 0, :room_id => 15)
Monster.create(:description => "Zombie Steve 7", :hp => 40, :ap => 10, :killed_by_player => false, :attack_counter => 0, :room_id => 13)
Monster.create(:description => "Your Boss, not sure if zombie or not -- kill him/her anyway!", :hp => 150, :ap => 20, :killed_by_player => false, :attack_counter => 0, :room_id => 11)
Monster.create(:description => "A Zombie Called 'IT'", :hp => 40, :ap => 10, :killed_by_player => false, :attack_counter => 0, :room_id => 16)
Monster.create(:description => "The Zombie formerly known as Prince", :hp => 40, :ap => 5, :killed_by_player => false, :attack_counter => 0, :room_id => 18)
Monster.create(:description => "Zombie Christopher Walken (aka 'The Walken Dead')", :hp => 40, :ap => 10, :killed_by_player => false, :attack_counter => 0, :room_id => 19)
Monster.create(:description => "Zombie Steve Infinity", :hp => 100, :ap => 5, :killed_by_player => false, :attack_counter => 0, :room_id => 21)
Monster.create(:description => "Sir Zombie Not Appearing in this Film", :hp => 40, :ap => 10, :killed_by_player => false, :attack_counter => 0, :room_id => 22)
Monster.create(:description => "Zombie Vampire", :hp => 100, :ap => 5, :killed_by_player => false, :attack_counter => 0, :room_id => 24)
Monster.create(:description => "William Zabka, who appears to have wandered into your office looking for a fight", :hp => 100, :ap => 10, :killed_by_player => false, :attack_counter => 0, :room_id => 25)
