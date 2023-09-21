import { useEffect, useState } from "react";

import BookingForm from "./BookingForm";

const Reservations = () =>
{
    const [availableTimes, setAvailableTime] = useState([
		"17:00",
		"18:00",
		"19:00",
		"20:00",
		"21:00",
		"22:00",
	]);
    useEffect(() =>
	{
		document.title = "Make a reservation";
    }, []);
    
    const updateTimes = () =>
    {
        return availableTimes;
     };
    
    const initializeTimes = () =>
    {
        
    }
	return (
		<>
			<h1
				style={{
					display: "flex",
					justifyContent: "center",
					alignItems: "right",
					color: "#495E57",
				}}
			>
				Make a reservations
            </h1>
            <BookingForm availableTime={availableTimes} setAvailableTimes={setAvailableTime}/>
		</>
	);
};
export default Reservations;
