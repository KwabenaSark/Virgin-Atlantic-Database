# Virgin Atlantic Database-Project
(MYSQL,Data Visualization, Normalization)
This Sql scripts contians quaries of an Airline company called Virgin Atlantic. Using the entities and attributes related to an airline company
## Introduction
Virgin Atlantic is a British airline, which started out as a tiny airline in 1984 and has now grown to become one of the world's largest airlines. They not only have flights that transport people but also cargos across the globe. All the flight crew members of Virgin Atlantic are well trained and have years of experience (Virginatlantic.com, 2022).
The current CEO Josh Bayliss has led the development of the company since 2011 and has revolutionized the airline industry through virgin Atlantic. Passengers always give a high satisfactory rating after booking a flight with Virgin Atlantic. Also, Virgin Atlantic ticket  and extra luggage prices are moderate and affordable.



“A database is an organized collection of structured data kept on computerised systems. A database management system is usually in charge of a database” (NCC EDUCATION, n.d.). 

Below are some example functions the database will be performed than can improve the daily functions of Virgin Atlantic;
*	Allocating employee duties
*	Adding customer booking details
*	Adding passenger details
*	Recording employees duties
*	Record passenger payments
*	Recording staff start and end time
*	Recording passenger departure and arrival information

### Entities
*	Passengers
*	Bookings
*	Flight crew
*	Flight
*	Tickets
*	Luggage

### Normalization
![erd]( https://github.com/KwabenaSark/Virgin-Atlantic-Database/blob/main/Norm.png "Logo Title Text 1")

### ER Diagram
![erd](https://github.com/KwabenaSark/Virgin-Atlantic-Database/blob/main/ER.png "Logo Title Text 1")


### Data Dictionary
####    Passengers
Column	Data Type	Null Default	Default
Passenger_ID(PK)	Int(11)	No	
First_Name	Varchar(30)	Yes	Null
Last_Name	Varchar(30)	Yes	Null
Email	Varchar(30)	Yes	Null
Contact_Number	Varchar(30)	Yes	Null
Mailing_Address	Varchar(30)	Yes	Null”



#### Bookings
Column	Data Type	Null Default	Default
Booking_ID(PK)	Int(11)	No	
Flight_ID  (FK)	Int(11)	No	
Ticket_ID  (FK)	Int(11)	No	
Passenger_name	Varchar(30)	Yes	Null
Booking_date	Varchar(30)	Yes	Null



#### Flight Crew
Column	Data Type	Null Default	Default
Flight_Crew_ID(PK)	Int(11)	No	
Flight_ID (FK)	Int(11)	No	
First_Name	Varchar(30)	Yes	Null
Last_Name	Varchar(30)	Yes	Null
Job_Title	Varchar(30)	Yes	Null

#### Flight
Column	Data Type	Null Default	Default
Flight_ID(PK)	Int(11)	No	
Departure_date	Varchar(30)	Yes	Null
Departure_time	Varchar(30)	Yes	Null
Arrival_date	Varchar(30)	Yes	Null
Arrival_time	Varchar(30)	Yes	Null

#### Tickets
Column	Data Type	Null Default	Default
Ticket_ID(PK)	Int(11)	No	
Passenger_ID   (FK)	Int(11)	No	Null
Flight_ID   (FK)	Int(11)	No	Null
From	Varchar(30)	Yes	Null
To	Varchar(30)	Yes	Null
Price	Varchar(30)	Yes	Null
Invoice_number	Varchar(30)	Yes	Null

#### Luggage
Column	Data Type	Null Default	Default
Luggage_ID(PK)	Int(11)	No	
Weight	Varchar(30)	Yes	Null
Booking_ID  (fk)	Int(11)	No	
Passenger_ID (fk)	Int(11)	No”	

  


### Demonstration of complex queries
 
```MySQL 
Select *from Flight_crew
 order by flight_ID asc;

```
```MySQL 
Select Count(Passenger_ID)
    -> from tickets
    -> where ticket_to ='Japan' AND ticket_from ='China';


```
```MySQL 

select luggage_Id, weight, passenger_ID
    -> from luggage
    -> where luggage_ID >= 2;


```
```MySQL 

Update flight_crew
    -> set job_title ='flight engineer'
    -> where first_name = 'Clark';


```
```MySQL 
Delete from Flight_crew
    -> where job_title ='Air host';


```
```MySQL 
select F.flight_ID, f.departure_date, f.departure_time, f.arrival_date
    -> from flight f
    -> inner join Passengers on F.flight_ID = Passengers.passenger_ID;

```
```MySQL 
select b.booking_id, b.Flight_Id, b.ticket_id, b.passenger_name
    -> from bookings b
    -> inner join Tickets on b.booking_id = Tickets.ticket_id;


```

### How the created database meets the requirements of Virgin Atlantic Airlines
The created database will allow Virgin Atlantic store all valuable data such as;
*	Passenger information
*	Booking details
*	Flight crew details
*	Flight information
*	Tickets details

 As a result of this, retrieving information is made easier for the company, which also helps in airline operations. Virgin Atlantic will also now be able to make informed decisions using the database data. Because Airline data are mostly sensitive date, the created database will secure and prevent repetitions of them. 



###Why  ER modeling is crucial when creating a database solution?

The ER diagram serve as a visual starting point of a database design, as well as a tool used to connect related sectors. I used the ER diagram to locate entities, view attributes, and see how they interact with others. The information on the ER diagram was helpful when creating my data dictionary and My SQL tables. Below are some reasons why the ER diagram is important;
* It gives a descriptive understanding of data and how it relates to other data. A well-documented ER diagram makes it easy to comprehend the setup of a database (Vertabelo Team, 2021).

*	It allows the database to be easily changed and maintained. This is because, the ER diagram is a tool for analyzing data.

*	It also provides an overview of all the database tables that are related, as well as the attributes that will be in each table. As a result of this, entities, attributes and relations are easily defined
Assumptions 
*	Every query table has one primary key but also can have one or more foreign keys
*	Database must be normalized to reduce repetitions
*	All database tables have a unique id 

### How the Database supports Virgin Atlantic Airlines’ transactions 
The created database is will organized and it is able to support all the transactions stated in task A, that is;
*	Allocating employee duties – These types of information will allow the airline allocate duties to its flight crew members.

*	Adding customer booking details – these includes booking id and passenger id. These types of data will allow virgin Atlantic keep records of customer booking details

*	Adding passenger details – These include passenger name and phone number. These kinds of information help the airline identify individuals.

*	Record passenger payments – These includes ticket id and payment price. These types of information allows Virgin Atlantic to retrieve information on customer payment records

*	Recording passenger departure and arrival information – These types of information will allow Virgin Atlantic connects stops 

Database tables have been created for each related transaction. As a result of this, all these transactions are stored and can be easily retrieved from the database. Also, a unique ID is given to every table.








