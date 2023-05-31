import requests
import sys

def get_StatusCode(url):
    try:
        response = requests.request("GET",url)
        print("\n The Site: "+ url +" Responded with the Code: ")
        print(response)
    except Exception as E:
        print("Something Went Wrong!",E)


my_file = open("sites.txt",'r')
file_data = my_file.readlines()

for data in file_data:
    data = data.rstrip('\n')
    print(data)
    get_StatusCode(data)