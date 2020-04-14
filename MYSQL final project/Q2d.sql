SELECT date_format(HGT.date, '%d %M %Y') AS "Date", 
HGT.transaction_desc "Description", 
HGT.transaction_amount "Amount ($)"
FROM hostguest_has_transaction HGT
WHERE HGT.host_id = 'stefanie@myrp.com.sg'
AND Month(HGT.date) = 10
AND YEAR(HGT.date) = 2019
ORDER BY HGT.date ASC;

#Q2d generated this on the 22/11/2019
