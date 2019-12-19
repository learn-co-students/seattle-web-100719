import React from "react";
import { Link } from 'react-router-dom'

// className for nav links = btn btn-info

const NavBar = () => {

    return (
      <nav className="navbar navbar-expand-lg">
        <div>Hi I'm useless navigation</div>
        {/* <a href="/manager">MANAGER</a> */}
        <Link to="/">HOME</Link>
        <Link to="/manager">MANAGER</Link>
        <Link to="/glasses">{` GLASSES`}</Link>
      </nav>
    );

}

export default NavBar;
