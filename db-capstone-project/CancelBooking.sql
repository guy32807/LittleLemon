CREATE PROCEDURE CancelBooking(IN bookingID INT)
BEGIN
DELETE FROM bookings where BookingID = bookingID;
END
