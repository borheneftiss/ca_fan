import React from "react";
import { Redirect, Route } from 'react-router-dom';



export const PrivateRouter = ({ component: Component, ...rest }) => (
    <Route
      {...rest}
      render={props =>
        localStorage.getItem('myToken') && localStorage.getItem('myToken') !=="" ? (
         <Component {...props} />
        ) : (
          <Redirect
            to={{
              pathname: "/authentification",
              state: { from: props.location }
            }}
          />
        )
      }
    />
  );





