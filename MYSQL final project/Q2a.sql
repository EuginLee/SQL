SELECT DISTINCT date_format(B.visit_date, '%d/%m/%y') AS "Date of Visit", 
B.meal_type AS "Meal", 
BL.booking_district "Requested Location",
G.name AS "Name of Guest",
B.adult_no + B.child_no AS "Number of Participants",
B.booking_expirydate AS "Expiry date of Request"
FROM booking B
INNER JOIN booking_has_location BL ON B.booking_id = BL.booking_id
INNER JOIN guest G ON G.guest_id = B.guest_id
WHERE B.visit_date >= NOW()
ORDER BY B.visit_Date ASC;

#Q2a generated this on the 22/11/2019