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
import LoginButton from "./LoginButton";


const App = ({ modals }) => {
  return (
      // create Modal component in which we will pass form as a payload for instance <Modal payload={(<DoggoForm />)} />
      // Try to use DoggoForm for add and edit. 
    <Container>
      { modals.modal && (<ModalWindow payload={(<DoggoForm />)} />) }
      <Row><NavigationBar /></Row>
      <Row><SearchBox /></Row>
      <Row><DoggoList /></Row>
      <Row><Footer /></Row>
    </Container>
  );
};

const mapStateToProps = (state) => ({ modals: state.modals});

const ConnectedApp = connect(mapStateToProps)(App);

export default ConnectedApp;