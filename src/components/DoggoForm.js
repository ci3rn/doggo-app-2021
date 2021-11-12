import Button from "react-bootstrap/Button";
import Modal from "react-bootstrap/Modal";
import Form from "react-bootstrap/Form";
import React from "react";

class DoggoForm extends React.Component {
  state = {
    imageUrl: '',
    name: '',
    breed_group: '',
    country_code: '',
    height: '',
    weight: '',
    life_span: '',
    temperament: ''
  };

  onImageUrlChange = (e) => this.setState(() => ({ imageUrl: e.target.value }));
  onNameChange = (e) => this.setState(() => ({ name: e.target.value }));
  onBreedGroupChange = (e) => this.setState(() => ({ breed_group: e.target.value }));
  onCountryCodeChange = (e) => this.setState(() => ({ country_code: e.target.value }));
  onHeightChange = (e) => this.setState(() => ({ height: e.target.value }));
  onWeightChange = (e) => this.setState(() => ({ weight: e.target.value }));
  onLifeSpanChange = (e) => this.setState(() => ({ life_span: e.target.value }));
  onTemperamentChange = (e) => this.setState(() => ({ temperament: e.target.value }));

  render() {
    return (
      <>
        <Modal show={this.props.show} onHide={this.props.handleClose}>
          <Modal.Header closeButton>
            <Modal.Title>{this.props.action} doggo</Modal.Title>
          </Modal.Header>
          <Modal.Body>
            <Form>
              <Form.Group className="mb-3" controlId="formGroupImageUrl">
                <Form.Label>Image url:</Form.Label>
                <Form.Control type="imageUrl" onChange={this.onImageUrlChange} />
              </Form.Group>
              <Form.Group className="mb-3" controlId="formGroupName">
                <Form.Label>Name:</Form.Label>
                <Form.Control type="name" />
              </Form.Group>
              <Form.Group className="mb-3" controlId="formGroupName">
                <Form.Label>Name:</Form.Label>
                <Form.Control type="name" />
              </Form.Group>
            </Form>
          </Modal.Body>
          <Modal.Footer>
            <Button variant="secondary" onClick={this.props.handleClose}>
              Close
            </Button>
            <Button variant="primary" onClick={this.props.handleClose}>
              Save Changes
            </Button>
          </Modal.Footer>
        </Modal>
      </>
    );
  }
}

export default DoggoForm;
