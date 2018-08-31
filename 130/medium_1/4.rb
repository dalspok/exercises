
def selector(array)
  yield array
end


arr = %w(raven finch hawk eagle)
raptors = []
selector(arr) {|items| _, _, *raptors = items}
p raptors