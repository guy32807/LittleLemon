import { useEffect } from "react";

const Order = () =>
{
    useEffect(() =>
	{
		document.title = "Order online";
	}, []);
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
				Order Online
			</h1>
		</>
	);
};
export default Order;
