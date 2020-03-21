/*Reputable Product Agency (RPA) started receiving complaints from their credit card processor about fraudulent transactions. 

*/

 SELECT *
 FROM transaction_data
 LIMIT 10;
 
 
 /*
The finance department noted that some of the fraudulent transactions were recorded as coming from Smokey Bear’s zip code (20252). Getting the full_names and emails of the transactions listing 20252 as the zip code.
*/
 SELECT full_name, email ,zip
 FROM  transaction_data
 WHERE zip= '20252';
 
 /*
 Finance  also noticed a number of pseudonyms associated with fraudulent transactions.

The fraudsters thought it would be funny to use ‘Art Vandelay’ for their full name or add a ‘der’ for their middle name.*/
 SELECT full_name, email 
 FROM transaction_data
 WHERE full_name=  'Art Vandelay'  OR
 full_name LIKE '% der %';
 
 
 /*
 There are some irregularities in the IP addresses where transactions are originating from.
 
 */
 SELECT   ip_address, email
 FROM transaction_data
 WHERE ip_address LIKE '10.%';
 
 /*
 Users are making fraudulent transactions using a temporary email address service. These services provide a short-lived email that can be verified and then self-destructs.
 */
 SELECT email
 FROM transaction_data
 WHERE email LIKE '%temp_email.com';
 
 /*
 
The finance department was looking for a specific transaction. They know that the transaction occurred from an ip address starting with ‘120.’ and their full name starts with ‘John’.

*/

SELECT *
FROM transaction_data
WHERE full_name LIKE 'John%'
AND ip_address LIKE '120.%' ;
 
