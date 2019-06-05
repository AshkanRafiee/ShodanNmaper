#Developer: AshkanRafiee
import shodan
SHODAN_API="YOUR_SHODAN_API"
api = shodan.Shodan(SHODAN_API)
try:
	# Search Using Shodan
	results = api.search('EXAMPLE')

	# Showing the results
	print 'Results found: %s' % results['total']
	for result in results['matches']:
		print '%s' % result['ip_str']
	''' following lines could be uncommented due to more information
	Don't Uncomment if you are using scanning methods with the results '''
		#print result['data']
		#print ''
except shodan.APIError, e:
	print 'Error: %s' % e
