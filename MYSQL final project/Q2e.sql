SELECT DISTINCT G.Nationality AS "Country", 
count(S.booking_status) AS "Number of Confirmed Bookings",
format(avg(B.adult_no + B.child_no),1) AS "Average Number of Participants Per Visit", 
max(B.adult_no + B.child_no) AS "Maximum Number of Participants Per Visit",
format(B.total_cost,2) AS "Total Amount Collected From Bookings ($)"
FROM Guest G
INNER JOIN Booking B ON G.guest_id = B.guest_id
INNER JOIN Status S ON S.booking_id = B.booking_id
WHERE S.booking_status = 'Confirmed'
AND year(B.booking_date) = 2019
GROUP BY G.nationality;

#Q2e generated this on the 21/11/2019