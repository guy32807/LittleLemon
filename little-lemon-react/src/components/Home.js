import './Styles.css';

import { useEffect } from 'react';

const Home = () =>
{
    useEffect(() =>
	{
		document.title = "Welcome to Little Lemon";
	}, []);
	return (
        <>
            <h1 style={{
				display: "flex",
				justifyContent: "center",
				alignItems: "right",
                color: '#495E57'
			}}>Welcome to Little Lemon</h1>
        </>
	);
};
export default Home;