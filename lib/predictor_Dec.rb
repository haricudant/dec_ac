class Basicexpense
    def initialize(cost)
        @cost = cost
    end
    
    def cost
            return @cost
    end
    
end

class Rentdecorator
    def initialize(real_cost) 
        @real_cost = real_cost
        @extra_cost = 0
        @description = "rent"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
    def benefits
        return @benefits
    end
    
end

    
class SportsAmenities < Rentdecorator
    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 30
        @benefits = "Can use all the sports areas"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
    def benefits
        return @benefits
    end
    
    
end

    
    
class LaundryAmenities < Rentdecorator
    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 23
        @benefits = "shared laundry room, washers & dryers in the unit, laundry service"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    def benefits
        return @benefits
    end
    
end

class RecreationAmenities < Rentdecorator
    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 20
        @benefits = "Spa, Community events & classes, Media Room"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
    def benefits
        return @benefits
    end
end

    
    
class MiscellaneousAmenities< Rentdecorator
    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 23
        @benefits = "Storage, Security Cameras, Gated access, Valid Trash"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end 
    def benefits
        return @benefits
    end
    
end
    
class ParkingAmenities< Rentdecorator
      def initialize(real_cost)
        super(real_cost)
        @extra_cost = 35
        @benefits = "Storage, Security Cameras, Gated access, Valid Trash,Assigned parking spaces,Bike storage lockers,Shared car services"
      end
    
      def cost
        return @real_cost.cost + @extra_cost
      end  
    
      def benefits
        return @benefits
     end
     
 end
 
class PetAmenities< Rentdecorator
      def initialize(real_cost)
        super(real_cost)
        @extra_cost = 35
        @benefits = "Storage, Security Cameras, Gated access, Valid Trash,Assigned parking spaces,Bike storage lockers,Shared car services"
      end
    
      def cost
        return @real_cost.cost + @extra_cost
      end  
    
      def benefits
        return @benefits
      end
     
end

car = Basicexpense.new(15000)
puts car.cost


car2 = Rentdecorator.new(car)
puts car2.cost


car3 = LaundryAmenities.new(car)
puts car3.cost
puts car3.benefits
      
        
    
     