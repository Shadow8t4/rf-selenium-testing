from subprocess import call
from os import getcwd
from sys import argv

def main():
    call('{0}/.pyenv/bin/python -m robot {1}'.format(getcwd(), str(argv[1])).split())
    return 0

main()