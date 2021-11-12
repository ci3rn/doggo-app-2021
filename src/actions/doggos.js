import { v4 as uuidv4 } from "uuid";
// ADD_DOGGO
export const addDoggo = ({
  imageUrl = "https://thecoinshark.net/uploads/750x500/2021/04/toddler-hodler-earns-more-on-doge-than-brazil-s-president-in-stocks.jpg",
  name,
  breed_group = "",
  country_code = "",
  height,
  weight,
  life_span,
  temperament = "",
} = {}) => ({
  type: "ADD_DOGGO",
  doggo: {
    id: uuidv4(),
    image: { url: imageUrl },
    name,
    breed_group,
    country_code,
    height: { metric: height },
    weight: { metric: weight },
    life_span,
    temperament,
  },
});

// REMOVE_DOGGO
export const removeDoggo = ({ name } = {}) => ({
  type: "REMOVE_DOGGO",
  modal: 'add',
  name,
});

// EDIT_DOGGO
export const editDoggo = () => ({
  type: "EDIT_DOGGO" ,
  modal: 'edit'
});
