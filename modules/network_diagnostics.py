#!/usr/bin/python
import subprocess as sub, shlex
hosts = {
    '127.0.0.1': "Chris' computer",
    'other': "Steve's computer"
}

output_file = "network_diagnostic.log"
myfile = open(output_file, 'w')

for k, v in hosts.iteritems():
    #response =  os.system("ping -c 1 " + k + ">/dev/null >2&1")
    cmd = "ping -c 1 " + k
    cmdarg = shlex.split(cmd)
    response = sub.Popen(cmdarg,stdout=sub.PIPE,stderr=sub.PIPE)
    response = response.wait()
    if response == 0:
        o = v, ' is up!'
    else:
        o = v, ' is down! '
    myfile.writelines(o)

myfile.close()
r = open(output_file)
response = r.read()
print response

