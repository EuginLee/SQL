Select H.name "Host Name", 
HL.host_district AS "District", 
format(avg(F.host_rating),1) AS "Average Rating", 
round(sum(HGT.transaction_amount),2) AS "Total Amount Received ($)"
FROM host H
INNER JOIN host_has_location HL ON H.host_id = HL.host_id
INNER JOIN hostguest_has_transaction HGT ON H.host_id = HGT.host_id
INNER JOIN feedback F ON H.host_id = F.host_id
WHERE YEAR(HGT.date) = 2019
GROUP BY H.name
ORDER BY sum(HGT.transaction_amount) DESC;

#Q2c generated this on the 22/11/2019