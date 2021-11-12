import InputGroup from "react-bootstrap/InputGroup";
import FormControl from "react-bootstrap/FormControl";
import Button from "react-bootstrap/Button";
import Dropdown from "react-bootstrap/Dropdown";
import { connect } from "react-redux";
import {
  setTextFilter,
  sortByAge,
  sortByName,
  sortByWeight,
} from "../actions/filters";
import { useState } from "react";
import DoggoForm from "./DoggoForm";

const SearchBox = (props) => {
  const [showDoggoModal, setShowDoggoModal] = useState(false);

  const handleOnSelect = (sortBy) => {
    if (sortBy === "name") {
      props.dispatch(sortByName());
    } else if (sortBy === "age") {
      props.dispatch(sortByAge());
    } else if (sortBy === "weight") {
      props.dispatch(sortByWeight());
    }
  };

  const handleOnChange = (e) => {
    props.dispatch(setTextFilter(e.target.value));
  };

  const showAddDoggoModal = () => {
    setShowDoggoModal(true);
  };

  return (
    <>
      <DoggoForm action="Add" show={showDoggoModal} />
      <InputGroup className="mb-3" defaultValue="" onChange={handleOnChange}>
        <Button variant="success" onClick={showAddDoggoModal}>
          Add
        </Button>
        <FormControl
          placeholder="Search for doggos..."
          aria-label="Text input with dropdown button"
        />
        <Dropdown onSelect={handleOnSelect}>
          <Dropdown.Toggle variant="success" id="dropdown-basic">
            {props.filters.sortBy}
          </Dropdown.Toggle>
          <Dropdown.Menu>
            <Dropdown.Item eventKey="name">name</Dropdown.Item>
            <Dropdown.Item eventKey="weight">weight</Dropdown.Item>
            <Dropdown.Item eventKey="age">age</Dropdown.Item>
          </Dropdown.Menu>
        </Dropdown>
      </InputGroup>
    </>
  );
};

const mapStateToProps = (state) => ({ filters: state.filters });

const ConnectedSearchBox = connect(mapStateToProps)(SearchBox);

export default ConnectedSearchBox;
