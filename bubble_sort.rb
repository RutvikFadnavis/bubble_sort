def bubble_sort(arr)
	bubble_sort_by(arr) { |left, right| left - right }
end

def bubble_sort_by(arr,&block)
	n = arr.length-1
	until n==0
		(n-1).times do |i|
			arr[i],arr[i+1] = arr[i+1],arr[i] if yield(arr[i],arr[i+1]) > 0
		end
		n=n-1
	end
end	

arr = [1,7,9,58,2,3,5,88]
bubble_sort(arr)

array=["hi", "hey", "hello", "yo", "ahem"]
bubble_sort_by(array) do |left,right|
	left.length - right.length
end

puts arr
puts array