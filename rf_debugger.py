from subprocess import call
from time import sleep
from os import getcwd
import sys

def main():
    # Split into a thread, then run robot test.
    call('java -jar {0}/selenium-server-standalone.jar'.format(getcwd()).split())
    sleep(3)
    call(["robot", str(sys.argv[1])])

main()