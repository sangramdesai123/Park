# importing the csv module 
import csv,random ,names
  
# field names 
#fields = ['username', 'booking_id', 'vehicle_category', 'entry_time','parking_time','exit_time','date','total_fare','level_number','slot_number','OTP'] 
  

## read data from login_info_gen.csv
filenameRead = "/opt/lampp/htdocs/Park/park/Database Generation scripts/login_info_gen.csv"
  
# initializing the titles and rows list 
fieldsR = [] 
rowsR = [] 
  
# reading csv file 
with open(filenameRead, 'r') as csvfile: 
    # creating a csv reader object 
    csvreader = csv.reader(csvfile) 
      
    # extracting field names through first row 
    #fields = csvreader.next() 
  
    # extracting each data row one by one 
    for row in csvreader: 
        rowsR.append(row) 
  
 

rows = [ ]

  
# name of csv file 
filename= '/opt/lampp/htdocs/Park/park/Database Generation scripts/Normal_User.csv'
otps=[]
# writing to csv file 
with open(filename, 'w') as csvfile: 
    # creating a csv writer object 
    csvwriter = csv.writer(csvfile) 
      
    # writing the fields 
    #csvwriter.writerow(fields) 
      
    # writing the data rows
    region=['Mumbai','Airoli','Pune','Vidyavihar']
    s=[]
    for r in rowsR:
        record=[]
        record.append(r[0])
        record.append(r[0])
        record.append(names.get_last_name())
        record.append(str(random.randint(8000000000,9999999990)))
        record.append(str(random.randint(33434,43434)))
        record.append(region[random.randint(0,3)])
        seed=random.randint(300,10000)
        while seed  in otps:
            seed=random.randint(300,10000)
        record.append(seed)
        rows.append(record)
        
    csvwriter.writerows(rows)