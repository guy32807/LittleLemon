import Nav from "./Nav";
import logo from '../src/assets/Logo.svg'

const Header = () =>
{
    return (
        <>
            <img src={logo} width={300} alt="Logo" height={100} />
            <Nav />
        </>
    )

}
export default Header;