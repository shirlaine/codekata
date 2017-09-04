def scoreThrows(radiuses)

  CountThrow.new(radiuses).process #top 2 must be equal

end

class CountThrow

    def initialize(radius) #need not be named radiuses same as top
      @radius = radius
      @score = 0
      @new_array = []
    end


    def process
      @radius.each do |x|
        if x > 10
          @new_array.push(0)
        elsif x>=5 && x<=10
          @new_array.push(5)
        else x<5 && x>0
          @new_array.push(10)
        end
      end

      if @new_array.empty?
        @score =0
      elsif @new_array.all?{|num| num >=10}
        @score +=100
      end

      @new_array.each do |x|
        @score += x
      end
      @score
    end

end

p scoreThrows([1, 5, 11]) #=> returns 15
p scoreThrows([1,2,3,4]) #=> returns 140
p scoreThrows([15,20,30]) #=> returns 0
p scoreThrows([])
p scoreThrows([1,2,3,4,2,1]) #=> returns 160

