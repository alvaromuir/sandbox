from bs4 import BeautifulSoup
import urllib2
root = 'http://www.yelp.com/search?find_desc=&find_loc='
zipcode = '07079'
cat = 'restaurants'
from pymongo import Connection
c = Connection()['geocodes']['locations']
city_state = c.find_one({'zip':zipcode},{'state':1,'city':1,'_id':0})
#url = root+zipcode+"#cflt="+cat+"&l=p:%s:%s::" %(city_state['state'], city_state['city'].strip().replace(' ','_'))
url="http://www.yelp.com/search/snippet?attrs=&bookmark=true&cflt=%s&find_desc=&find_loc=%s&l=p:%s:%s::&start=0" % (cat, zipcode, city_state['state'], city_state['city'].strip().replace(' ','_'))
source = BeautifulSoup(urllib2.urlopen(url))
results = list(source.find_all('div', 'businessresult'))
total = source.find('td', {'class':'range-of-total'}).span.text.split()[-1]
count = 0
for item in results:
    print "--------------------------------"
    item.find(id='bizTitleLink'+str(count)).string[3:]
    item.find('address').div.text.strip('\n\t')
    item.find('div', attrs='phone').text.strip('\n\t')
    count +=1