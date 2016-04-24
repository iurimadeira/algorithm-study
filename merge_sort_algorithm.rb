class MergeSortAlgorithm

  def initialize(array)
    @array = array
  end

  def run
    puts "Sorting #{@array}..."
    puts "Result: #{merge_sort(@array)}"
  end

  def merge_sort(array)
    n = array.size
    return array if n == 1

    a1 = array[0..(n/2 - 1)]
    a2 = array[n/2..n]

    a1 = merge_sort(a1)
    a2 = merge_sort(a2)

    merge(a1, a2)
  end

  def merge(a1, a2)
    c = []

    while (a1.any? && a2.any?)
      if (a1[0] < a2[0])
        c << a1.shift
      elsif (a2[0] < a1[0])
        c << a2.shift
      end
    end

    while (a1.any?)
      c << a1.shift
    end

    while (a2.any?)
      c << a2.shift
    end

    c
  end

end
