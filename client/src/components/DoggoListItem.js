import { connect } from 'react-redux';
import Card from 'react-bootstrap/Card';
import ListGroup from 'react-bootstrap/ListGroup';
import Button from 'react-bootstrap/Button';
import { removeDoggo } from '../actions/doggos';

const DoggoListItem = ({ dispatch, doggo }) => {
    const handleRemoveDoggo = () => {
        dispatch(removeDoggo(doggo));
    };
    return <Card style={{ width: "18rem", margin: "5px" }}>
    <Card.Img variant="top" src={doggo.image_url} />
    <Card.Body>
      <Card.Title>{doggo.name}</Card.Title>
      <ListGroup variant="flush">
        <ListGroup.Item>
          Breed group: {doggo.breed_group || "-"}
        </ListGroup.Item>
        <ListGroup.Item>
          Country: {doggo.country_code || "-"}
        </ListGroup.Item>
        <ListGroup.Item>Height: {doggo.height} cm</ListGroup.Item>
        <ListGroup.Item>Weight: {doggo.weight} kg</ListGroup.Item>
        <ListGroup.Item>Life span: {doggo.life_span}</ListGroup.Item>
        <ListGroup.Item>Temperament: {doggo.temperament}</ListGroup.Item>
        <ListGroup.Item>
          <Button 
            name={doggo.name}
            // onClick={handleShow}
            variant="primary">Edit</Button>
          <Button
            name={doggo.name}
            onClick={handleRemoveDoggo}
            variant="danger"
          >
            Remove
          </Button>
        </ListGroup.Item>
      </ListGroup>
    </Card.Body>
  </Card>
};

const ConnectedDoggoListItem = connect()(DoggoListItem);

export default ConnectedDoggoListItem;