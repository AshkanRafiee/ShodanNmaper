#Developer: AshkanRafiee
#I Prefer Using Python Version As it's more compatible Version
#if You Decide Using Ruby version You have to manually perform nmap Scanning
#U can Read My main.sh Script and Perform your Nmap Scanning

require 'shodanz'

client = Shodanz.client.new(key: "Your_API_KEY")

begin
	#Search Using Shodan
	results = client.host_search("EXAMPLE")

	#Showing the results
	print 'Results found: %s' % results['total']
	for result in results['matches']
		print '%s' % result['ip_str']
=begin
following lines could be uncommented due to more information
Do not Uncomment if you are using scanning methods with the results
=end
		#print result['data']
		#print ''
end
end

