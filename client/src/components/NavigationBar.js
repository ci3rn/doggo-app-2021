import logo from "../doggo_logo.png";
import Badge from "react-bootstrap/Badge";
import { connect } from "react-redux";
import LoginButton from "./LoginButton";
import LogoutButton from "./LogoutButton";
import { useAuth0 } from "@auth0/auth0-react";

import Navbar from "react-bootstrap/Navbar";
import Container from "react-bootstrap/Container";

const NavigationBar = (props) => {
  const { user, isAuthenticated } = useAuth0();
  return (
    <Navbar>
      <Container>
        <Navbar.Brand>
          <img src={logo} alt="logo" />
          <Badge bg="bg badge">{props.doggos.length}+</Badge>
        </Navbar.Brand>
        <Navbar.Toggle />
        <Navbar.Collapse className="justify-content-end">
          <Navbar.Text>
            Signed in as: { isAuthenticated ? 
                <>
                    <a href="#logout">{user.name}</a>{' '}
                    <LogoutButton />
                </> 
            : <>
                <a href="#login">Anonymous</a>{' '}
                <LoginButton />
            </>}
          </Navbar.Text>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
};

const mapStateToProps = (state) => ({ doggos: state.doggos });

const ConnectedNavigationBar = connect(mapStateToProps)(NavigationBar);

export default ConnectedNavigationBar;