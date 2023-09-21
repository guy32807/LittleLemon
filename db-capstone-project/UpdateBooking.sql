CREATE PROCEDURE UpdateBooking(IN bookingID INT, IN bookingDate VARCHAR(25))
BEGIN
UPDATE bookings SET BookingID = bookingID, BookingDate = bookingDate;
END
