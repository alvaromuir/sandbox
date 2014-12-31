#!/usr/bin/python

source = 'zipcode.csv'
dbase = 'geocodes'
coll = 'locations'

#def load_csv(source=mysource,dbase=mydbase,coll=mycoll):
import csv
from pymongo import Connection

csv.field_size_limit(25000000)
csvfile = open(source,'r')
dialect = csv.Sniffer().sniff(csvfile.read(1024))
reader = csv.reader(csvfile, dialect)
count = 0
csvfile.seek(0)
fields= reader.next()
data = Connection()[str(dbase)][str(coll)]
data.drop()

for row in reader:
  entry = dict(zip(fields,row))
  try:
    entry['gps'] = {'latitude':float(entry['latitude']), 'longitude':float(entry['longitude'])}
  except:
    pass
  
  try:
    del entry['latitude']
  except:
    pass

  try:
    del entry['longitude']
  except: 
    pass

  #print entry
  try:
    data.insert(entry)
  except: 
    pass
  #if count % 1000 == 0:
    #print "Entered record number :", count


  # #get areacode zipcodes from internet
  # from pymongo import Connection
  # c = Connection()['geocodes']['locations']
  # import urllib2
  # from bs4 import BeautifulSoup
  # areacodesource = "http://www.bennetyee.org/ucsd-pages/area.html"
  # soup = BeautifulSoup(urllib2.urlopen(areacodesource).read())
  # areacodes = []
  # for anchor in soup.findAll('a'):
  # if not anchor.get('name') == None and anchor.get('name').isdigit():
  # areacodes.append(anchor.get('name'))


  # def get_zipcodes(areacode):
  # import urllib2
  # from bs4 import BeautifulSoup                                       
  # root = 'http://www.zipdatamaps.com/area-code-'
  # ac = str(areacode)
  # url = root+ac
  # soup = BeautifulSoup(urllib2.urlopen(url).read()) 
  # postals = []       
  # for link in soup.findAll('a'):
  # try:
  # if link.get('href').isdigit() == True:
  # postals.append(link.get('href'))
  # except:
  # pass
  # return postals

  # from pymongo import Connection
  # c = Connection()['geocodes']['locations']
  # source = c.find({'areacode':{'$exists':False}})
  # zips = source.distinct('zip')
  # for zipcode in zips:
  # zipcode='07079'
  # def get_areacode(zipcode):
  # import urllib2
  # from bs4 import BeautifulSoup
  # opener = urllib2.build_opener()
  # opener.addheaders = [('User-agent', 'Mozilla/5.0')]
  # root = "http://www.zip-codes.com/zip-code/"
  # zc = str(zipcode)
  # url = root+zc
  # soup = BeautifulSoup(opener.open(url).read())
  # links = []
  # for link in soup.findAll("a"):
  # links.append(link.string)

  # if links:
  # try:
  # areacode = links[links.index('Area Code:')+1]
  # c.update({'zip':zipcode},{'$set':{'areacode':areacode}})
  # except:
  # pass
  # return "%s was updated with %s" %(zipcode, areacode)




  # # this will update the DB with 'areacode': xxx

  # for areacode in areacodes:
  # for zipcode in get_zipcodes(areacode):
  # c.update({'zip':zipcode},{'$set':{'areacode':areacode}})
  # print "updated %s with %s" %(zipcode,areacode)

  # for zipcode in zips:
  # try:
  # zips = c.find({}, {'zip':1, '_id':0}).distinct('zip')

  # def load_geonames(source,dbase='geolocdb',coll='geocodes'):
  # import time
  # import csv
  # from pymongo import Connection

  # csv.field_size_limit(25000000)
  # csvfile = open(source,'r')
  # dialect = csv.Sniffer().sniff(csvfile.read(1024))

  # reader = csv.reader(csvfile, dialect)
  # fields=['geonameid','name','asciiname','alternatenames','latitude','longitude','feature_class','feature_code','country_code','cc2','admin1_code','admin2_code','admin3_code','admin4_code','population','elevation','gtopo30','timezone','modification_date']
  # count = 0
  # csvfile.seek(0)
  # entry = {}
  # gnames = Connection()[str(dbase)][str(coll)]
  # gnames.drop()

  # start = time.time()
  # for row in reader:
  # record = reader.next()
  # lat = float(record[4].strip('\'\"'))
  # lng = float(record[5].strip('\'\"'))
  # entry = dict(zip(fields,record))
  # entry['gps'] = {'lat':lat, 'lng':lng}
  # gnames.insert(entry)
  # if count % 1000 == 0:
  # print "Entered record number :", count
  # count += 1

  # print "There were %d total records" %(count)
  # print "Total time: ", time.time() - start



  # if __name__ == "__main__":
  # try:
  # load_geonames()
  # except TypeError:
  # print 'Error - must choose a file to load'

  