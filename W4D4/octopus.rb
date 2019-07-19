# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def n_square(arr)
    lngth_idx_biggest_fish = [-1,-1]
    arr.each_with_index do |ele_1,idx_1|
        arr.each_with_index do |ele_2,idx_2|
            next if idx_1 ==  idx_2
            if ele_1.length > ele_2.length && ele_1.length > lngth_idx_biggest_fish[0]
                lngth_idx_biggest_fish = [ele_1.length,idx_1]
            elsif ele_2.length > lngth_idx_biggest_fish[0]
                lngth_idx_biggest_fish = [ele_1.length,idx_1]
            end
        end
    end
    arr[lngth_idx_biggest_fish[1]]
end

p "Sqare"
p n_square(fish)

def n_log_n(arr)
    return arr if arr.length <= 1
    mididx = arr.length / 2
    merge( n_log_n(arr[0...mididx]) , n_log_n(arr[mididx..-1]) )
end

def merge(left, right)
    merged = []
    until left.empty? || right.empty?
      case left.first.length <=> right.first.length
      when -1
        merged << left.shift
      else
        merged << right.shift
      end
    end

    merged + left + right
  end

  p "n log n"
  p n_log_n(fish).last

  def o_n_time(arr)
    biggest_fish = ""
    arr.each {|ele|biggest_fish = ele if ele.length > biggest_fish.length }
    biggest_fish
  end

  p "O(n) time"
  p o_n_time(fish)