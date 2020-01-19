** Pay it Forward **

This project was to create an entire website using Ruby on Rails.
I live in the Blue Mountains and during the intense bushfire season I was inspired by people in my local community Facebook group who were offering their time to help people with things like fixing fencing and clearing trees and debris around their houses. I wanted to create a website purely built around the Pay it Forward mentality. I expanded on this idea when our instructor Luke mentioned the idea of a charity tracker to show how donated money was spent. Knowing that some people have issue with donating cash over items I decided it would be a good idea to have the ability for people to request and offer goods on top of tasks also as a way to encourage that behaviour.
Link: https://pif-th85.herokuapp.com/
Logins available: tim@test.com, luke@test.com, josh@test.com
password: chicken

** Steps **

1. User can either log in or create an account.
2. User can now see their total number of listings and is able to edit or delete their account.
3. You can now either create a new listing, browse listings, or see your own listings.
4. Create Listing - Choose between either an Offer or Need, and a Task or an Item, you can then upload an image for the listing.
5. Browse Listings - You can browse all available listings from other users, going to these listings has the image and information shown, as well as an imbedded map showing the location. You have the option on this page to message the owner of the item.
6. My Listings - here you are able to see all the listings you have on offer, where you can go to see all the users that have messaged you about the item. You can also so the items on here that you have messaged other users regarding.

** Favourite Part **
The part of my project I was most proud of was the messaging system. I felt like I had a had a specific way that I wanted the messaging to work and I really wanted to create this on my own without use of gems/tutorials. I attached the messages to an item so that users could message the same person multiple times for different items but the conversations regarding each item would be kept seperate - this would help with clarity and integrity if there was an issue with an exchange. This definitely caused issue and made me rearrange my tables a few times. I enjoyed this process a lot!

** Technologies **
Ruby on Rails is the core of the site, a long with HTML and CSS.
Images are uploaded and stored using Cloudinary, Google Maps was used to show an imbedded map for the images.

** Next Steps **
I want to add the ability for an item to be marked as delivered or complete, and assigned to a user. I wanted to be able to do this so I would be able to create a record of how much each user has given/received from the site.
I would love to improve on the map functionality, adding the ability to search for items within a certain distance.
