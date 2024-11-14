import sys
from vttformatter.vttformatter import VttFormatter

def read_and_print_file(filename):
    try:
        with open(filename, 'r') as f:
            content = f.read()
            print(content)
    except FileNotFoundError:
        print(f"Error: The file '{filename}' was not found.")
    except PermissionError:
        print(f"Error: You do not have permission to read the file '{filename}'.")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == '__main__':
    if len(sys.argv) > 1:
        filename = sys.argv[1]
        vtt = VttFormatter(filename)
        vtt.reformat_vtt()
        #read_and_print_file(filename)