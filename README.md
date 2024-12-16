**Database Design and Implemention Project**
============
# **Objective**
Set up your project environment including MySQL database management system. We were not required to develop an application that uses your database. However, our setup must include a simple user interface in MySQL Workbench through which your database can be accessed and data storage, retrieval & other operations relevant to your application can be demonstrated, for example, through views or stored procedures for certain user roles.

# **Project Proposal**
### **Background & Content**
The fictional Hit the Road RV Park is situated on 50 acres in Western North Carolina.  The park contains recreational vehicle (RV) parking and a garage for maintenance.   Currently, whether a customer calls or places a reservation online, the request is manually recorded on a spreadsheet.  After a manual review, the customer receives a call from an employee to confirm their request /booking or to help with rescheduling a visit for a different time.   

The purpose of a database is to assist the park with improving their reservation system, monitoring occupancy in the RV park, and improving customer experience by reducing wait time. The database would automatically check for openings in the park and garage, reschedule if no openings are available, and confirm online bookings in real-time.  This will reduce the wait time for customers and allow employees to work on other duties in the park. Over time all customers can be encouraged to place requests online and to view the most current information.  In addition, a database can hold records for 
employees, RVs visiting the park, their owners, service requests from the garage, parts on hand, and provide a method for increasing profits by targeting repeat customers with offers. 

The project will begin with gathering information about the current and future needs of the park.  This includes in-person meetings and any feedback from employees and customers to help us build solutions into the database system. Once the database is created, it will be tested using our standard automated unit testing.  Afterwards, we will slowly integrate the database into your park’s website until the database is fully online. 

The project will take five weeks to complete.  The owner will be provided with weekly updates on the database setup.  The estimated cost is $0, since we are using an intern and open source system. 

In summary, a database management system will be an asset to your business.  By developing a database to manage reservations, requests for maintenance, and customer data,  it will offer real-time updates and the opportunity to integrate the database into the online bookings generated from the park’s website. 

### **Why RV Park ?**
With our drive to work hard and play even harder, more and more Americans are looking at traveling the opens roads in a recreational vehicle, commonly called an RV.  The US market is expected to grow from 49.69 billion in 2024 to 69.23 billion by 2032*. 

With this growth, RV owners need to have a place to park their home on wheels.
Therefore, we created a RV park database to assist the owner.
- More effective management of reservation systems
- Increase work efficiency 
- Results on demand, more convenient

*https://www.fortunebusinessinsights.com/recreational-vehicles-rv-market-105474

### **Purpose of Database**
This database allows the owner to directly check the customer’s reservations, employee data, view invoices, and view revenue.
Includes:
View Employee / Position / Salary
View Reservations 
View Customer / RV information
View Revenue from shop and park
 
In future:
Real-time Online Reservation system
Real-time supply ordering system
Employee scheduling system
And more…


# **Schema Example**
Below are the schema's for `Customer`, `Vehicle`, and `Reservation` tables.  The `Custome`r table has an one to many relationship to the `Vehicle` Table and `Reservation` Table.  A customer can own more than one Rv that visits the park and create more than one reservation to the park.
<img src="images/schema.png "/>

# **ER Diagram**
ER diagram for `Customer` table.
<img src="images/ERD1.png "/>

ER diagram for `Supplier`, `Government`, and `Employee` tables
<img src="images/ERD2.png "/>

ER diagram exported from MySQL desktop.
<img src="images/ERD.png "/>

# **VIEWS**
Story view that allows owner to view information about the employees.
<img src="images/view1.png "/>

Story view that allows owner to view sales and customer who had their vehicle serviced.
<img src="images/view2.png "/>

Story view that allows owner to view charges per customer.
<img src="images/view3.png "/>

Story view that allows owner to view charges that are due to the suppliers and governemental entites.
<img src="images/view5.png "/>


# **Future Updates**
Stored Programs
- Menu 

Adding Accounting Table
- Automating weekly payroll
- Automating invoicing
- Automating revenue

Inventory System
- Parts for maintenance shop
- Food / drinks for evening dinner

Develop an application that uses the database
Interface customer tables
- Online view invoice real-time
- Online reservations for customer

add color to the description


Overall, this has been a great expereince creating my own database.  I plan to continue working on this project until I have it completes as planned including creating an online interface and addressing minor correction for handling `null` values by using `DEFAULT`.