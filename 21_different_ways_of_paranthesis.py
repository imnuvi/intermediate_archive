# https://leetcode.com/problems/different-ways-to-add-parentheses/description/?envType=problem-list-v2&envId=dynamic-programming


def calculate_values(x,op,y):
  res = []
  # if type(y) == int:
  #   res.append(eval(x + op + y))
  # print(x, op, y)

  if type(y) == list:
    for i in y:
      res.append(eval(x + op + str(i)))
  else:
    res.append(eval(x + op + y))
  return res

def flatten(xss):
    return [x for xs in xss for x in xs]

def recurse(operation_list):
  print(operation_list)
  if len(operation_list) == 1:
    return [operation_list[0]] 
  if len(operation_list) == 2:
    return [operation_list[0] + operation_list[1]]
  if len(operation_list) == 3:
    return ["(" + operation_list[0] + operation_list[1] + operation_list[2] + ")"]
    return calculate_values(operation_list[0], operation_list[1], operation_list[2])

  [x, op1, y, op2] = operation_list[:4]
  rem_list = operation_list[2:]
  end_list = operation_list[4:]

  recrem = recurse(rem_list)
  recend = recurse(end_list)
  fl = []

  for i in recrem:
    fl.append("(" + x + op1 + i + ")")
  for i in recend:
    fl.append( "((" + x + op1 + y + ")" + op2 + i + ")" )
  print(fl)

  return fl

  # flat = flatten([calculate_values( x, op1, recurse(rem_list) ), calculate_values(str(eval( x+ op1+ y)), op2, recurse(end_list) )])
  # print(flat)
  # return flat


def main(operation_string):
  operation_list = list(operation_string)
  print(recurse(operation_list))


# main("2-1-1-1")
main("2*3-4*5")

