import { NavLink as Link } from 'react-router-dom';
import styled from 'styled-components';

export const Navbar = styled.nav`
background: #495E57;
height: 45px;
display: flex;
justify-content: space-between;
padding: 0.2rem calc((100vw - 1000px) / 2);
z-index: 12;
/* Third Nav */
/* justify-content: flex-start; */
`;

export const NavLink = styled(Link)`
color: #F4CE14;
display: flex;
align-items: center;
text-decoration: none;
font-weight: bold;
padding: 0 1rem;
height: 100%;
cursor: pointer;
&.active {
	color: #EE9972;
}
`;

export const NavMenu = styled.div`
display: flex;
align-items: center;
margin-right: -24px;
/* Second Nav */
/* margin-right: 24px; */
/* Third Nav */
/* width: 100vw;
white-space: nowrap; */
@media screen and (max-width: 768px) {
	display: none;
}
`;
