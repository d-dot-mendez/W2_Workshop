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
