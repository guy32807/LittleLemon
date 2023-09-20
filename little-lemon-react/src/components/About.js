import { useEffect } from "react";

const About = () =>
{
	useEffect(() =>
	{
		document.title = "About Us";
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
				About us
			</h1>
		</>
	);
};
export default About;
