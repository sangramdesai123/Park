# importing the csv module 
import csv,random 
  
# field names 
#fields = ['username', 'booking_id', 'vehicle_category', 'entry_time','parking_time','exit_time','date','total_fare','level_number','slot_number','OTP'] 
  

## read data from login_info_gen.csv
filenameRead = "login_info_gen.csv"
  
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
  
 







# Writing to Booking.csv


# data rows of csv file     
rows = [ ]

  
# name of csv file 
filename= 'booking.csv'
  
# writing to csv file 
with open(filename, 'w') as csvfile: 
    # creating a csv writer object 
    csvwriter = csv.writer(csvfile) 
      
    # writing the fields 
    #csvwriter.writerow(fields) 
      
    # writing the data rows
    
    for r in rowsR:
        record=[]
        record.append(r[0])
        record.append(random.randint(233334,999999))
        record.append('Four wheeler' if random.random()>0.4 else 'Two wheeler')
        mm=''
        if random.random()>0.7 :
            mm='04'
        else:
            got=random.randint(1,12)
            if len(str(got))==1:
                mm='0'+str(got)
            else:
                mm=str(got)
        dd=''
        if random.random()>0.5:
            got=random.randint(1,9)
            dd='0'+str(got)
        else:
            dd=str(random.randint(10,28))

        date1='2019-'+mm+'-'+dd
        hh=''
        if random.random()>0.5:
            hh=random.randint(17,20)
        else:
            hh=random.randint(11,16)

        time1=str(hh)+':'+str(random.randint(0,59))+':'+str(random.randint(0,59))
        timestamp1=date1+' '+time1
        date2=date1
        time2=str(hh+1)+':'+str(random.randint(0,59))+':'+str(random.randint(0,59))
        timestamp2=date2+' '+time2
        record.append(timestamp1)
        record.append('60') 
        record.append(timestamp2)
        record.append(date1)
        record.append('30')
        record.append(random.randint(1,3))
        record.append(random.randint(1,50))
        record.append(random.randint(100,999))
        rows.append(record)
        
    csvwriter.writerows(rows)