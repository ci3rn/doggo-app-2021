import React from "react";
import ReactDom from "react-dom";
import { Provider } from "react-redux";
import App from "./components/App";
import configureStore from "./store/configureStore";
import "./styles.css";
import "bootstrap/dist/css/bootstrap.min.css";
import { Auth0Provider } from "@auth0/auth0-react";

const domain = process.env.REACT_APP_AUTH0_DOMAIN;
const clientId = process.env.REACT_APP_AUTH0_CLIENT_ID;

const store = configureStore();

store.subscribe(() => {
  console.log(store.getState());
});

const jsx = (
  <Auth0Provider
    domain={domain}
    clientId={clientId}
    redirectUri={window.location.origin} // current url in the browser
  >
    <Provider store={store}>
      <App />
    </Provider>
  </Auth0Provider>
);

ReactDom.render(jsx, document.getElementById("root"));