def add (x, y)
  x + y
end

def subtract (x, y)
  x - y
end

def sum (x = [])
	x.inject(0) {|i, j| i + j}
end

def multiply (x = [])
	x.inject {|i, j| i * j}
end