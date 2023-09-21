import { NavLink, NavMenu, Navbar } from "./NavbarElements";

import React from "react";

const Nav = () => {
	return (
		<Navbar>
			<NavMenu>
				<NavLink to="/">Home</NavLink>
				<NavLink to='/about'>About</NavLink>
				<NavLink to="/menu">Menu</NavLink>
				<NavLink to="/reservations">Reservations</NavLink>
				<NavLink to="/order">Order Online</NavLink>
				<NavLink to="/login">Login</NavLink>
			</NavMenu>
		</Navbar>
	);
};
export default Nav;
