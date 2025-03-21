## 0. Hospital Example 

Going back to the hospital exercise from exercise0, task 1, we will build logical and physical data models. This is the conceptual data model after we've added the composite entities to take care of many-to-many relationships.

a) Create a logical data model using lucidcharts


b) Identify different keys on the various entities


c)  Identify child entities and parent entities. What makes them into parent/child relationships?


d) Create a physical data model using dbdiagram


# Solution

a) 

<img src="assets/hospital_exercise1.png" width=500>


b) see image above


c) see image in a) 


d) see exercise1_hospital.dbml




# 3. Sakila exercise

<img src="assets/sakilaERD.png" width = 1000>


a) Is this a conceptual, logical or physical ERD, motivate?


b) How many entities are in the database?


c) Which are the composite entities?


d) Try to find suitable relationship labels between entities


e) Try to write out some possible relationship statements between the entities.


f) Can you find if there is any errors/mistakes in this ERD?




## Solution 

a) Physical ERD. 


b) 15 entities


c) Film actor and film category


d) and e) **Relationships** 

- Customer can rent one or many movies.
- Store can have one or many customers.
- Inventory consists of one or more movies.
- Staff handles one or more payments. 