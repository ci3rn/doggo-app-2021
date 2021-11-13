import { v4 as uuidv4 } from "uuid";
// ADD_DOGGO
export const addDoggo = ({
  imageUrl = 'https://thecoinshark.net/uploads/750x500/2021/04/toddler-hodler-earns-more-on-doge-than-brazil-s-president-in-stocks.jpg',
  name = 'aaaDefault doggo',
  breed_group = 'no breed',
  country_code = 'no country',
  height = '0 - 1',
  weight = '0 - 1',
  life_span = '0 - 1 years',
  temperament = 'good boi',
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
      temperament
    }
});

// REMOVE_DOGGO
export const removeDoggo = ({ id } = {}) => ({
  type: "REMOVE_DOGGO",
  id
});

// EDIT_DOGGO
export const editDoggo = ({ id } = {}) => ({
  type: "EDIT_DOGGO",
  id
});
