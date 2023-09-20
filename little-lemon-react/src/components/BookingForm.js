import "./Styles.css";

import React, { useState } from "react";

const BookingForm = ({availableTime, setAvailableTimes}) => {
	const [date, setDate] = useState("");

	const [numberOfGuests, setNumberOfGuests] = useState(0);
    const [occasion, setOccasion] = useState("");
    const [selectedTime, setSelectedTime] = useState("")

    function handleSelectedTime(e)
    {
        setSelectedTime(e.target.value);
    }
    function changeAvailableTime(e)
    {
        setAvailableTimes(e.target.value)
    }
	return (
		<>
			<form className="container">
				<div className="form-group">
					<label htmlFor="res-date">Choose date</label>
					<input
						className="form-control"
						size="lg"
						type="date"
						id="res-date"
						value={date}
						onChange={(e) => setDate(e.target.value)}
					/>
				</div>
				<div className="form-group mt-3">
					<label htmlFor="res-time">Choose time</label>
					<select
						className="form-control"
						id="res-time"
						onChange={e => handleSelectedTime(e)} value={selectedTime}
					>
						{availableTime.map((time) => {
							return <option key={time}>{time}</option>;
						})}
					</select>
				</div>
				<div className="form-group mt-3">
					<label htmlFor="guests">Number of guests</label>
					<input
						className="form-control"
						type="number"
						value={numberOfGuests}
						onChange={(e) => setNumberOfGuests(e.target.value)}
						placeholder="1"
						min="1"
						max="10"
						id="guests"
					/>
				</div>
				<div className="form-group mt-3 mb-3">
					<label htmlFor="occasion">Occasion</label>
					<select
						className="form-control"
						id="occasion"
						value={occasion}
						onChange={(e) => setOccasion(e.target.value)}
					>
						<option value="Birthday">Birthday</option>
						<option value="Anniversary">Anniversary</option>
					</select>
				</div>
				<input
					className="btn btn-success"
					type="submit"
					value="Make Your reservation"
				></input>
			</form>
		</>
	);
};
export default BookingForm;
