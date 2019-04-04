# importing the csv module 
import csv,names 
  
# field names 
#fields = ['username', 'password', 'user_type']
  
# data rows of csv file     
rows = []

  
# name of csv file 
filename= 'login_info_gen.csv'
for i in range(1,100):
    record=[]
    namesPass=names.get_first_name()

    record.append(namesPass)
    record.append(namesPass)
    record.append("Normal")
    if record not in rows:
        rows.append(record)


# writing to csv file 
with open(filename, 'w') as csvfile: 
    # creating a csv writer object 
    csvwriter = csv.writer(csvfile) 
      
    # writing the fields 
    #csvwriter.writerow(fields) 
      
    # writing the data rows 
    csvwriter.writerows(rows)