import urllib2
fd = urllib2.urlopen('http://mehfilindian.com/LunchMenuTakeOut.htm')
s = fd.read().lower()
print 'tikka' in s
