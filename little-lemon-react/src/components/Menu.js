import { useEffect } from "react";

const Menu = () =>
{
    useEffect(() =>
	{
		document.title = "Our Menu";
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
				Our Menu
			</h1>
		</>
	);
};
export default Menu;
