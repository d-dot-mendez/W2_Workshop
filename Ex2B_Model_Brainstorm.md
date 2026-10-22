# Requirements and Conceptual Model
Denae Mendez, Arber Xharra

Requirements Ideas:
The end user is our friend named Lana. 
The categories of data that will be important to track is her clients' name, contact information, and dogs. 

Requirements Ideas:
The end user is our friend named Lana. 
The categories of data that will be important to track is her client information and contact information, and their dog information.  

Dog information:
- Name
- Age
- Breed

Client Information:
- Name
- Email Address
- Home Address
- Phone Number

#Logical Model
Main Entities:
- Customer
- Dog
- Appointments/Scheduling

  Attributes:
  - Name
  - Email Address
  - Home Address
  - Phone Number
  - Dog's Age
  - Breed
  - Days
  - Time
 
  A possible many-to-many relationship could be the table for the dog and the table for the appointments. Some dogs may need to be walked several times a day, meaning a dog can technically have several appointments (especially in one day). And if Lana chooses to, she could walk multiple dogs in one appointment.

Discussion:
WE have the same entities and attributes for our ERDSs. The relationships between the tables look identical. Our diagrams differ in terms of visuals. Even though both diagrams are similar, it is easier for us to read Arber's diagram. They probably look different due to us using different AI tools to enter this prompt. Arber's ERD also has a fourth table that is called "appointment_dog". This is most likely so we can know see which dog has what appointment and where. I think this is good as that is important information Lana needs to know and it is created in a way that would be easy for her to read. 
