def fizzbuzz(**kwargs):
    ''' 
    From numbers n through n (n being user defined), 
    prints "fizz" if divisible by 3, and buzz if divisible
    by 5. Prints "fizzbuzz" if divisible by both.
    Default starting number is 1 and default limit is 15.
    kwargs:
    'start' - initial number to start with
    'limit' - maxium number in test
    'absolute' - absolute number to check, regardless of start and/or limit
    'iterateby' - numbers to count up to the next iteration by
    '''
    f,b ="fizz","buzz"
    if 'start' in kwargs:
	try:
	    x = int(kwargs['start'])
        except ValueError:
            return "keyword:start must be a valid integer"
    else:
	x = 1

    if 'limit' in kwargs: 
    	try:
	     limit = int(kwargs['limit'])
 	except:
	    return "keyword:limit must be a valid integer"
	if limit < x:
            return "keyword:limit must be greater than start"
    else:
  	if x <= 15:
            limit = 15
	else:
	    return "keyword:start must be less than or equal to 15, the default limit"

    if 'iterateby' in kwargs:
        try:
	    ib = int(kwargs['iterateby'])
        except:
            return "keyword:iterateby must be a valid interger"
    else:
	ib = 1
    if 'absolute' in kwargs:
    	try:
            x = limit = int(kwargs['absolute'])
	except:
	    return "keyword:absolute must be a valid integer"
	
    while x <= limit:
	if x % 5 == 0 and x % 3 == 0:
	    print "%s %s%s" %(x,f,b)
	elif x % 5 == 0:
	    print "%s %s" %(x,b)
 	elif x % 3 == 0:
	    print "%s %s" %(x,f)
	else:
	    print x
	x += ib
	

if __name__ == '__main__':
    import sys
    kwargs = {}
    for x in sys.argv[1:]:
        kwargs[x.split("=")[0]] = x.split("=")[1]
    fizzbuzz(kwargs)
