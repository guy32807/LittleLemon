import { useEffect } from "react";

const Login = () =>
{
	useEffect(() =>
	{
		document.title = "Login";
	}, []);
    return (
		<>
			<h1
				style={{
					display: "flex",
					justifyContent: "center",
					alignItems: "right",
					height: "100vh",
					color: "#495E57",
				}}
			>
				Login
			</h1>
		</>
	);
};
export default Login;
