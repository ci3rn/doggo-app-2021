// ADD_DOGGO
export const addDoggo = ({
  id,
  image_url,
  name,
  breed_group,
  country_code,
  height,
  weight,
  life_span,
  temperament
} = {}) => ({
    type: "ADD_DOGGO",
    doggo: {
      id,
      image_url,
      name,
      breed_group,
      country_code,
      height,
      weight,
      life_span,
      temperament
    }
});

// ADD_DOGGO
export const startAddDoggo = (doggoData) => {
  return (dispatch) => {
    const { 
      id,
      image_url = 'https://thecoinshark.net/uploads/750x500/2021/04/toddler-hodler-earns-more-on-doge-than-brazil-s-president-in-stocks.jpg',
      name = 'aaaDefault doggo',
      breed_group = 'no breed',
      country_code = 'PL',
      height = '0 - 1',
      weight = '0 - 1',
      life_span = '0 - 1 years',
      temperament = 'good boi'
    } = doggoData;
    const doggo = {
      id, image_url, name, breed_group, country_code, height, weight, life_span, temperament
    };
    const body = JSON.stringify(doggo);  
    return fetch(`http://localhost:5000/api/doggos/`, {
      method: 'POST',
      body : body,
      headers: { 'Content-Type': 'application/json' }
    })
    .then(response => response.json()).then((doggo) => {
      console.log(doggo);
      dispatch(addDoggo(doggo));
    }).catch((err) => {
      console.log(err);
    })
  };
};

// REMOVE_DOGGO
export const removeDoggo = ({ id } = {}) => ({
  type: "REMOVE_DOGGO",
  id
});

export const startRemoveDoggo = ({ id }) => {
  return (dispatch) => {
    return fetch(`http://localhost:5000/api/doggos/${id}`, { method: 'DELETE' })
    .then(response => response.json()).then((doggo) => {
      dispatch(removeDoggo(doggo));
    }).catch((err) => {
      console.log(err);
    });
  }
}

// EDIT_DOGGO
export const editDoggo = ({ id } = {}) => ({
  type: "EDIT_DOGGO",
  id
});

// SET_DOGGOS
export const setDoggos = (doggos) => ({
  type: 'SET_DOGGOS',
  doggos
});

export const startSetDoggos = () => {
  return (dispatch) => {
    return fetch('http://localhost:5000/api/doggos')
    .then(response => response.json()).then((doggos) => {
      dispatch(setDoggos(doggos));
    }).catch((err) => {
      console.log(err);
    });
  };
};