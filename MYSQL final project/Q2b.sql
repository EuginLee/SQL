SELECT BL.booking_district AS "Location", 
L.region_name AS "Region", 
Count(S.booking_status) AS "Number of Comfirmed Bookings"
FROM booking_has_location BL
INNER JOIN status S ON BL.booking_id = S.booking_id
INNER JOIN booking B ON B.booking_id = BL.booking_id
INNER JOIN location L on BL.location_id = L.location_id
WHERE S.booking_status = "Confirmed"
AND S.offer_status = "Accepted"
AND B.visit_date between "2019-10-01" AND "2019-12-31"
GROUP BY BL.booking_district
ORDER BY count(S.booking_status) DESC;

#Q2b generated this on the 22/11/2019