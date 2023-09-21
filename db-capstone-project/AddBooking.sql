CREATE PROCEDURE AddBooking(IN bookingID INT, IN bookingDate VARCHAR(25), IN tableNumber INT, IN customerID INT)
BEGIN
INSERT INTO bookings(BookingID, BookingDate, TableNo, CustomerID) VALUES (bookingID, bookingDate, tableNumber, customerID);
END