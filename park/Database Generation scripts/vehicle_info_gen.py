# importing the csv module 
import csv,random ,names
  
# field names 
#fields = ['username', 'booking_id', 'vehicle_category', 'entry_time','parking_time','exit_time','date','total_fare','level_number','slot_number','OTP'] 
  

## read data from login_info_gen.csv
filenameRead = "/opt/lampp/htdocs/Park/park/Database Generation scripts/booking.csv"
  
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
filename= '/opt/lampp/htdocs/Park/park/Database Generation scripts/vehicle_info.csv'
otps=[]
# writing to csv file 
with open(filename, 'w') as csvfile: 
    # creating a csv writer object 
    csvwriter = csv.writer(csvfile) 
      
    # writing the fields 
    #csvwriter.writerow(fields) 
      
    # writing the data rows
    TwoWheelCompany={'Bajaj':['Pulsar','Dominar'],'TVS':['Apache','Radeon'],'Hero':['Honda','Karisma']}
    a=TwoWheelCompany.keys()

    FourWheelCompany={'Maruti Suzuki':['swift','wagonR'],'Toyoto ':['Camry','Yaris'],'Ford':['figo','Aspire']}
    b=FourWheelCompany.keys()

    s=[]
    for r in rowsR:
        record=[]
        record.append(r[0])
        
        
        record.append("MH-"+str(random.randint(999,998434)))
        record.append(r[2])
        record.append(b[random.randint(0,2)] if r[2]=='Four wheeler' else a[random.randint(0,2)])
        model=''
        if record[-2]=='Four wheeler':
            model=FourWheelCompany[record[-1]][random.randint(0,1)]
        else:
            model=TwoWheelCompany[record[-1]][random.randint(0,1)]
        
        record.append(model)
        rows.append(record)
        
    csvwriter.writerows(rows)