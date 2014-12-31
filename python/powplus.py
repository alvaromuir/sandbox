def pow(*args, **kwargs):
  ''' 
  Calculates the sum of digits in given exponent equations
  kwargs:
  'base' - initial base number. If ommited, default base is 2
  'exp' - exponent to multiply base by
  '''
  
  result = x
  print x
  
  
  
def exp(x,y):
  result,count = x,1
  while count <= y:
    result = result * x
    count += 1
  return unicode(result)
  
def addDigits(num):
  digits, count = len(str(num)), 0 
  while count < digits:
    print str(num)[count]
    count += 1
  return result