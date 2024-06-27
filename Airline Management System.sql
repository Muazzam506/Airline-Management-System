CREATE DATABASE AIRLINE_MANAGEMENT_SYSTEM;
-- Create table for Airline
CREATE TABLE Airline (
    AirlineID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Headquarters VARCHAR(100),
    Contact VARCHAR(100)
);
CREATE PROCEDURE InsertAirline
    @AirlineID INT,
    @Name VARCHAR(100),
    @Headquarters VARCHAR(100),
    @Contact VARCHAR(100)
AS
BEGIN
    INSERT INTO Airline (AirlineID, Name, Headquarters, Contact)
    VALUES (@AirlineID, @Name, @Headquarters, @Contact);
END;
EXEC InsertAirline 1, 'Airline A', 'New York, USA', 'contact@airlinea.com';
EXEC InsertAirline 2, 'Airline B', 'Los Angeles, USA', 'contact@airlineb.com';
EXEC InsertAirline 3, 'Airline C', 'Chicago, USA', 'contact@airlinec.com';
EXEC InsertAirline 4, 'Airline D', 'Houston, USA', 'contact@airlined.com';
EXEC InsertAirline 5, 'Airline E', 'Phoenix, USA', 'contact@airlinee.com';
EXEC InsertAirline 6, 'Airline F', 'Philadelphia, USA', 'contact@airlinef.com';
EXEC InsertAirline 7, 'Airline G', 'San Antonio, USA', 'contact@airlineg.com';
EXEC InsertAirline 8, 'Airline H', 'San Diego, USA', 'contact@airlineh.com';
EXEC InsertAirline 9, 'Airline I', 'Dallas, USA', 'contact@airlinei.com';
EXEC InsertAirline 10, 'Airline J', 'San Jose, USA', 'contact@airlinej.com';
CREATE PROCEDURE Show_Airline_Data
AS
BEGIN
    SELECT * FROM Airline;
END;
EXEC Show_Airline_Data;
-- Create table for Airport
CREATE TABLE Airport (
    AirportCode CHAR(3) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    Terminals INT
);
CREATE PROCEDURE InsertAirport
    @AirportCode CHAR(3),
    @Name VARCHAR(100),
    @Location VARCHAR(100),
    @Terminals INT
AS
BEGIN
    INSERT INTO Airport (AirportCode, Name, Location, Terminals)
    VALUES (@AirportCode, @Name, @Location, @Terminals);
END;
EXEC InsertAirport 'JFK', 'John F. Kennedy International Airport', 'New York, USA', 6;
EXEC InsertAirport 'LAX', 'Los Angeles International Airport', 'Los Angeles, USA', 9;
EXEC InsertAirport 'ORD', 'O''Hare International Airport', 'Chicago, USA', 8;
EXEC InsertAirport 'IAH', 'George Bush Intercontinental Airport', 'Houston, USA', 5;
EXEC InsertAirport 'PHX', 'Phoenix Sky Harbor International Airport', 'Phoenix, USA', 4;
EXEC InsertAirport 'PHL', 'Philadelphia International Airport', 'Philadelphia, USA', 7;
EXEC InsertAirport 'SAT', 'San Antonio International Airport', 'San Antonio, USA', 3;
EXEC InsertAirport 'SAN', 'San Diego International Airport', 'San Diego, USA', 5;
EXEC InsertAirport 'DFW', 'Dallas/Fort Worth International Airport', 'Dallas, USA', 6;
EXEC InsertAirport 'SJC', 'Norman Y. Mineta San Jose International Airport', 'San Jose, USA', 2;
CREATE PROCEDURE Show_Airports_Data
AS
BEGIN
    SELECT * FROM Airport;
END;
EXEC Show_Airports_Data;

-- Create table for Aircraft
CREATE TABLE Aircraft (
    AircraftID INT PRIMARY KEY,
    Model VARCHAR(100),
    Capacity INT,
    Manufacturer VARCHAR(100),
    MaintenanceStatus VARCHAR(50)
);
CREATE PROCEDURE InsertAircraft
    @AircraftID INT,
    @Model VARCHAR(100),
    @Capacity INT,
    @Manufacturer VARCHAR(100),
    @MaintenanceStatus VARCHAR(50)
AS
BEGIN
    INSERT INTO Aircraft (AircraftID, Model, Capacity, Manufacturer, MaintenanceStatus)
    VALUES (@AircraftID, @Model, @Capacity, @Manufacturer, @MaintenanceStatus);
END;
EXEC InsertAircraft 1, 'Boeing 737', 200, 'Boeing', 'Operational';
EXEC InsertAircraft 2, 'Airbus A320', 180, 'Airbus', 'Operational';
EXEC InsertAircraft 3, 'Boeing 747', 366, 'Boeing', 'Operational';
EXEC InsertAircraft 4, 'Airbus A380', 525, 'Airbus', 'Operational';
EXEC InsertAircraft 5, 'Boeing 777', 396, 'Boeing', 'Operational';
EXEC InsertAircraft 6, 'Airbus A330', 278, 'Airbus', 'Operational';
EXEC InsertAircraft 7, 'Boeing 787', 242, 'Boeing', 'Operational';
EXEC InsertAircraft 8, 'Airbus A350', 315, 'Airbus', 'Operational';
EXEC InsertAircraft 9, 'Boeing 767', 290, 'Boeing', 'Operational';
CREATE PROCEDURE Show_Aircraft_Data
AS
BEGIN
    SELECT * FROM Aircraft;
END;
EXEC Show_Aircraft_Data;

-- Create table for CrewMember
CREATE TABLE CrewMember (
    CrewMemberID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50),
    Contact VARCHAR(100),
    CertificationDetails VARCHAR(100)
);
CREATE PROCEDURE InsertCrewMember
    @CrewMemberID INT,
    @Name VARCHAR(100),
    @Role VARCHAR(50),
    @Contact VARCHAR(100),
    @CertificationDetails VARCHAR(100)
AS
BEGIN
    INSERT INTO CrewMember (CrewMemberID, Name, Role, Contact, CertificationDetails)
    VALUES (@CrewMemberID, @Name, @Role, @Contact, @CertificationDetails);
END;
EXEC InsertCrewMember 1, 'John Doe', 'Pilot', 'john.doe@example.com', 'Certified Pilot';
EXEC InsertCrewMember 2, 'Jane Smith', 'Flight Attendant', 'jane.smith@example.com', 'Certified Flight Attendant';
EXEC InsertCrewMember 3, 'Michael Brown', 'Co-Pilot', 'michael.brown@example.com', 'Certified Co-Pilot';
EXEC InsertCrewMember 4, 'Emily Davis', 'Flight Attendant', 'emily.davis@example.com', 'Certified Flight Attendant';
EXEC InsertCrewMember 5, 'David Wilson', 'Pilot', 'david.wilson@example.com', 'Certified Pilot';
EXEC InsertCrewMember 6, 'Laura Taylor', 'Flight Attendant', 'laura.taylor@example.com', 'Certified Flight Attendant';
EXEC InsertCrewMember 7, 'James Martinez', 'Co-Pilot', 'james.martinez@example.com', 'Certified Co-Pilot';
EXEC InsertCrewMember 8, 'Sarah Lee', 'Flight Attendant', 'sarah.lee@example.com', 'Certified Flight Attendant';
EXEC InsertCrewMember 9, 'Daniel White', 'Pilot', 'daniel.white@example.com', 'Certified Pilot';
CREATE PROCEDURE Show_CrewMembers_Data
AS
BEGIN
    SELECT * FROM CrewMember;
END;
EXEC Show_CrewMembers_Data;

-- Create table for Passenger
CREATE TABLE Passenger (
    PassengerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Contact VARCHAR(100),
    FrequentFlyerNumber VARCHAR(20)
);
CREATE PROCEDURE InsertPassenger
    @PassengerID INT,
    @Name VARCHAR(100),
    @Contact VARCHAR(100),
    @FrequentFlyerNumber VARCHAR(20)
AS
BEGIN
    INSERT INTO Passenger (PassengerID, Name, Contact, FrequentFlyerNumber)
    VALUES (@PassengerID, @Name, @Contact, @FrequentFlyerNumber);
END;
EXEC InsertPassenger 1, 'Alice Johnson', 'alice.johnson@example.com', 'FF12345';
EXEC InsertPassenger 2, 'Bob Brown', 'bob.brown@example.com', 'FF67890';
EXEC InsertPassenger 3, 'Charlie Green', 'charlie.green@example.com', 'FF11223';
EXEC InsertPassenger 4, 'Diana King', 'diana.king@example.com', 'FF44556';
EXEC InsertPassenger 5, 'Evan Harris', 'evan.harris@example.com', 'FF77889';
EXEC InsertPassenger 6, 'Fiona Scott', 'fiona.scott@example.com', 'FF99112';
EXEC InsertPassenger 7, 'George Evans', 'george.evans@example.com', 'FF33445';
EXEC InsertPassenger 8, 'Hannah Baker', 'hannah.baker@example.com', 'FF55667';
EXEC InsertPassenger 9, 'Ian Clark', 'ian.clark@example.com', 'FF77880';
CREATE PROCEDURE Show_Passenger_Data
AS
BEGIN
    SELECT * FROM Passenger;
END;
EXEC Show_Passenger_Data;

-- Create table for Flight
CREATE TABLE Flight (
    FlightNumber CHAR(6) PRIMARY KEY,
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    Duration INT,
    Status VARCHAR(20),
    AirlineID INT,
    AircraftID INT,
    DepartureAirportCode CHAR(3),
    ArrivalAirportCode CHAR(3),
    FOREIGN KEY (AirlineID) REFERENCES Airline(AirlineID),
    FOREIGN KEY (AircraftID) REFERENCES Aircraft(AircraftID),
    FOREIGN KEY (DepartureAirportCode) REFERENCES Airport(AirportCode),
    FOREIGN KEY (ArrivalAirportCode) REFERENCES Airport(AirportCode)
);
CREATE PROCEDURE InsertFlight
    @FlightNumber CHAR(6),
    @DepartureTime DATETIME,
    @ArrivalTime DATETIME,
    @Duration INT,
    @Status VARCHAR(20),
    @AirlineID INT,
    @AircraftID INT,
    @DepartureAirportCode CHAR(3),
    @ArrivalAirportCode CHAR(3)
AS
BEGIN
    INSERT INTO Flight (FlightNumber, DepartureTime, ArrivalTime, Duration, Status, AirlineID, AircraftID, DepartureAirportCode, ArrivalAirportCode)
    VALUES (@FlightNumber, @DepartureTime, @ArrivalTime, @Duration, @Status, @AirlineID, @AircraftID, @DepartureAirportCode, @ArrivalAirportCode);
END;
EXEC InsertFlight 'AA100', '2024-07-01 08:00:00', '2024-07-01 12:00:00', 240, 'Scheduled', 1, 1, 'JFK', 'LAX';
EXEC InsertFlight 'BB200', '2024-07-02 09:00:00', '2024-07-02 13:00:00', 240, 'Scheduled', 2, 2, 'LAX', 'JFK';
EXEC InsertFlight 'CC300', '2024-07-03 10:00:00', '2024-07-03 14:00:00', 240, 'Scheduled', 3, 3, 'ORD', 'IAH';
EXEC InsertFlight 'DD400', '2024-07-04 11:00:00', '2024-07-04 15:00:00', 240, 'Scheduled', 4, 4, 'IAH', 'ORD';
EXEC InsertFlight 'EE500', '2024-07-05 12:00:00', '2024-07-05 16:00:00', 240, 'Scheduled', 5, 5, 'PHX', 'PHL';
EXEC InsertFlight 'FF600', '2024-07-06 13:00:00', '2024-07-06 17:00:00', 240, 'Scheduled', 6, 6, 'PHL', 'PHX';
EXEC InsertFlight 'GG700', '2024-07-07 14:00:00', '2024-07-07 18:00:00', 240, 'Scheduled', 7, 7, 'SAT', 'SAN';
EXEC InsertFlight 'HH800', '2024-07-08 15:00:00', '2024-07-08 19:00:00', 240, 'Scheduled', 8, 8, 'SAN', 'SAT';
EXEC InsertFlight 'II900', '2024-07-09 16:00:00', '2024-07-09 20:00:00', 240, 'Scheduled', 9, 9, 'DFW', 'SJC';
EXEC InsertFlight 'JJ1000', '2024-07-10 17:00:00', '2024-07-10 21:00:00', 240, 'Scheduled', 10, 10, 'SJC', 'DFW';
CREATE PROCEDURE Show_Flights_Data
AS
BEGIN
    SELECT * FROM Flight;
END;
EXEC Show_Flights_Data;

-- Create table for Booking
CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    BookingDate DATETIME,
    SeatNumber VARCHAR(10),
    Class VARCHAR(20),
    PassengerID INT,
    FlightNumber CHAR(6),
    FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID),
    FOREIGN KEY (FlightNumber) REFERENCES Flight(FlightNumber)
);
CREATE PROCEDURE InsertBooking
    @BookingID INT,
    @BookingDate DATETIME,
    @SeatNumber VARCHAR(10),
    @Class VARCHAR(20),
    @PassengerID INT,
    @FlightNumber CHAR(6)
AS
BEGIN
    INSERT INTO Booking (BookingID, BookingDate, SeatNumber, Class, PassengerID, FlightNumber)
    VALUES (@BookingID, @BookingDate, @SeatNumber, @Class, @PassengerID, @FlightNumber);
END;
EXEC InsertBooking 1, '2024-06-15 10:00:00', '12A', 'Economy', 1, 'AA100';
EXEC InsertBooking 2, '2024-06-16 11:00:00', '14B', 'Business', 2, 'BB200';
EXEC InsertBooking 3, '2024-06-17 12:00:00', '16C', 'Economy', 3, 'CC300';
EXEC InsertBooking 4, '2024-06-18 13:00:00', '18D', 'Business', 4, 'DD400';
EXEC InsertBooking 5, '2024-06-19 14:00:00', '20E', 'Economy', 5, 'EE500';
EXEC InsertBooking 6, '2024-06-20 15:00:00', '22F', 'Business', 6, 'FF600';
EXEC InsertBooking 7, '2024-06-21 16:00:00', '24G', 'Economy', 7, 'GG700';
EXEC InsertBooking 8, '2024-06-22 17:00:00', '26H', 'Business', 8, 'HH800';
EXEC InsertBooking 9, '2024-06-23 18:00:00', '28I', 'Economy', 9, 'II900';
CREATE PROCEDURE Show_Bookings_Data
AS
BEGIN
    SELECT * FROM Booking;
END;
EXEC Show_Bookings_Data;

-- Create table for Ticket
CREATE TABLE Ticket (
    TicketID INT PRIMARY KEY,
    BookingID INT,
    PassengerName VARCHAR(100),
    FlightNumber CHAR(6),
    SeatNumber VARCHAR(10),
    Price DECIMAL(10, 2),
    FOREIGN KEY (BookingID) REFERENCES Booking(BookingID),
    FOREIGN KEY (FlightNumber) REFERENCES Flight(FlightNumber)
);
CREATE PROCEDURE InsertTicket
    @TicketID INT,
    @BookingID INT,
    @PassengerName VARCHAR(100),
    @FlightNumber CHAR(6),
    @SeatNumber VARCHAR(10),
    @Price DECIMAL(10, 2)
AS
BEGIN
    INSERT INTO Ticket (TicketID, BookingID, PassengerName, FlightNumber, SeatNumber, Price)
    VALUES (@TicketID, @BookingID, @PassengerName, @FlightNumber, @SeatNumber, @Price);
END;
EXEC InsertTicket 1, 1, 'Alice Johnson', 'AA100', '12A', 300.00;
EXEC InsertTicket 2, 2, 'Bob Brown', 'BB200', '14B', 500.00;
EXEC InsertTicket 3, 3, 'Charlie Green', 'CC300', '16C', 400.00;
EXEC InsertTicket 4, 4, 'Diana King', 'DD400', '18D', 450.00;
EXEC InsertTicket 5, 5, 'Evan Harris', 'EE500', '20E', 350.00;
EXEC InsertTicket 6, 6, 'Fiona Scott', 'FF600', '22F', 550.00;
EXEC InsertTicket 7, 7, 'George Evans', 'GG700', '24G', 370.00;
EXEC InsertTicket 8, 8, 'Hannah Baker', 'HH800', '26H', 480.00;
EXEC InsertTicket 9, 9, 'Ian Clark', 'II900', '28I', 390.00;
EXEC InsertTicket 10, 10, 'Julia Lopez', 'JJ1000', '30J', 500.00;
CREATE PROCEDURE Show_Tickets_Data
AS
BEGIN
    SELECT * FROM Ticket;
END;
EXEC Show_Tickets_Data;

-- Create table to assign CrewMembers to Flights
CREATE TABLE FlightCrew (
    FlightNumber CHAR(6),
    CrewMemberID INT,
    PRIMARY KEY (FlightNumber, CrewMemberID),
    FOREIGN KEY (FlightNumber) REFERENCES Flight(FlightNumber),
    FOREIGN KEY (CrewMemberID) REFERENCES CrewMember(CrewMemberID)
);
CREATE PROCEDURE InsertFlightCrew
    @FlightNumber CHAR(6),
    @CrewMemberID INT
AS
BEGIN
    INSERT INTO FlightCrew (FlightNumber, CrewMemberID)
    VALUES (@FlightNumber, @CrewMemberID);
END;
EXEC InsertFlightCrew 'AA100', 1;  -- Assign John Doe (Pilot) to Flight AA100
EXEC InsertFlightCrew 'AA100', 2;  -- Assign Jane Smith (Flight Attendant) to Flight AA100
EXEC InsertFlightCrew 'BB200', 3;  -- Assign Michael Brown (Co-Pilot) to Flight BB200
EXEC InsertFlightCrew 'BB200', 4;  -- Assign Emily Davis (Flight Attendant) to Flight BB200
EXEC InsertFlightCrew 'CC300', 5;  -- Assign David Wilson (Pilot) to Flight CC300
EXEC InsertFlightCrew 'CC300', 6;  -- Assign Laura Taylor (Flight Attendant) to Flight CC300
EXEC InsertFlightCrew 'DD400', 7;  -- Assign James Martinez (Co-Pilot) to Flight DD400
EXEC InsertFlightCrew 'DD400', 8;  -- Assign Sarah Lee (Flight Attendant) to Flight DD400
EXEC InsertFlightCrew 'EE500', 9;  -- Assign Daniel White (Pilot) to Flight EE500
CREATE PROCEDURE Show_FlightCrew_Data
AS
BEGIN
    SELECT * FROM FlightCrew;
END;
EXEC Show_FlightCrew_Data;