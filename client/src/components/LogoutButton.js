import React from "react";
import { useAuth0 } from "@auth0/auth0-react";
import Button from 'react-bootstrap/Button';

const LoginButton = () => {
  const { logout } = useAuth0();

  const handleLogout = () => {
    logout();
  }
  return <Button onClick={handleLogout} variant="success">Log Out</Button>;
};

export default LoginButton;