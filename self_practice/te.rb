arar=[]
def input(e)
  puts e
  arar=e.clone
  print arar
end


def display
  puts arar
end
r=gets
r=r.split(",").map { |u| u.to_i  }
#r=[1,2,3,4]
input r
display
