import Container from "react-bootstrap/Container";
import DoggoList from "./DoggoList";
import Footer from "./Footer";
import NavigationBar from "./NavigationBar";
import React, {Component} from 'react';
import Row from "react-bootstrap/Row";
import SearchBox from './SearchBox';

class App extends Component {
    render() {
        return <Container>
            <Row><NavigationBar /></Row>
            <Row><SearchBox /></Row>
            <Row><DoggoList /></Row>
            <Row><Footer /></Row>
        </Container>;
    }
};

export default App;