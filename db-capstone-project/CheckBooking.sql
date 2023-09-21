CREATE DEFINER=`lmadmin`@`%` PROCEDURE `CheckBooking`(IN bookingDate varchar(25), IN tableNumber INT)
BEGIN
SELECT * FROM bookings
WHERE BookingDate = bookingDate AND TableNo = tableNumber;
END