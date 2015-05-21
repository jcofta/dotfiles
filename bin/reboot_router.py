import time
import telnetlib
 
HOST = "192.168.1.1"
user = "admin"
password = "admin"
 
tn = telnetlib.Telnet(HOST)
 
#logowanie
tn.read_until("login: ")
tn.write(user + "\n")
 
tn.read_until("Password: ")
tn.write(password + "\n")
 
#restart
tn.read_until("#")
tn.write("reboot\n")
tn.write("\n")
print "Rebooted"
 
 
 
t1 = time.time()
while (time.time()-t1) < 10:
    pass
 
tn.close()