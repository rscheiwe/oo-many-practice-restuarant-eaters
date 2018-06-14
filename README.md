# oo-many-practice-restuarant-eaters

# EATERS, RESTAURANTS, RESERVATIONS

 - A Restaurant has many Eaters through Reservations
 - An Eater has many Restaurants through Reservations
 - A Reservation belongs to a Restaurant and an Eater

* Each Restaurant has a name and cuisine
* Restaurant#reservations
* Restaurant#eaters
* Restaurant#new_eater (makes new reservation for eater)
* Restaurant.least_popular
* Restaurant.find_by_cuisine

===================================

* Each Eater has a name
* Eater#reservations
* Eater#restaurants
* Eater#reserve_restaurant (makes new reservation at restaurant)
* Eater.most_active_eater => returns the eater who has most reservations at Restaurants

===================================

* Each reservation has an eater and a restaurant
* BloodOath#Eater
* BloodOath#Restaurant
