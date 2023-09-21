import "./App.css";

import { Route, BrowserRouter as Router, Routes } from "react-router-dom";

import About from "./components/About";
import Footer from "./components/Footer";
import Header from "./components/Header";
import Home from "./components/Home";
import Login from "./components/Login";
import Menu from "./components/Menu";
import Order from "./components/Order";
import Reservations from "./components/Reservations";

function App() {
	return (
		<>
			<Router>
				<Header />
				<Routes>
					<Route path="/" exact Component={Home} />
					<Route path="/about" Component={About} title="About Us" />
					<Route path="/menu" Component={Menu} />
					<Route path="/reservations" Component={Reservations} />
					<Route path="/order" Component={Order} />
					<Route path="/login" Component={Login} />
				</Routes>
      </Router>
			<Footer />
		</>
	);
}

export default App;
