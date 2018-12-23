from subprocess import call
import sys

def main():
    call(["robot", str(sys.argv[1])])

main()