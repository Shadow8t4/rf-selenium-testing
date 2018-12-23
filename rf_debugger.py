from subprocess import call
import sys

def main():
    call(["robot.exe", str(sys.argv[1])])

main()