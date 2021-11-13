import Container from "react-bootstrap/Container";
import DoggoList from "./DoggoList";
import Footer from "./Footer";
import NavigationBar from "./NavigationBar";
import React from "react";
import { connect } from 'react-redux';
import Row from "react-bootstrap/Row";
import SearchBox from "./SearchBox";
import ModalWindow from './ModalWindow';
import DoggoForm from "./DoggoForm";
import { useAuth0 } from "@auth0/auth0-react";
import Spinner from 'react-bootstrap/Spinner';

const App = ({ modals }) => {
  const { isLoading, user } = useAuth0()

  if (isLoading) return <div><Spinner animation="border" variant="success" /></div>

  return (
    <Container>
      { modals.modal && (<ModalWindow payload={(<DoggoForm />)} />) }
      <Row><NavigationBar /></Row>
      { !isLoading && user && (<>
        <Row><SearchBox /></Row>
        <Row><DoggoList /></Row>
      </>) }
      <Row><Footer /></Row>
    </Container>
  );
};

const mapStateToProps = (state) => ({ modals: state.modals });

const ConnectedApp = connect(mapStateToProps)(App);

export default ConnectedApp;