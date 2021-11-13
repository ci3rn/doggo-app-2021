import React from "react";
import { connect } from "react-redux";
import DoggoListItem from './DoggoListItem';
import Col from 'react-bootstrap/Col';
import Row from 'react-bootstrap/Row';
import selectDoggos from '../selectors/doggos';

const CARDS_IN_ROW = 3;

const DoggoList = (props) => {
  const rows = [];
  let columns = [];
  let rowIterator = 0;

  const doggos = props.doggos;

  doggos.forEach((doggo, index) => {
    const modulo = (index + 1) % CARDS_IN_ROW;
    columns.push(<Col key={index}><DoggoListItem doggo={doggo} /></Col>);
    if (
      (modulo === 0 && index !== 0) ||
      (index + 1 === doggos.length && columns.length !== 0)
    ) {
      rowIterator++;
      rows.push(<Row key={rowIterator}>{columns}</Row>);
      columns = [];
    }
  });

  return rows;
};

const mapStateToProps = (state) => ({ doggos: selectDoggos(state.doggos, state.filters) });

const ConnectedDoggoList = connect(mapStateToProps)(DoggoList);

export default ConnectedDoggoList;
