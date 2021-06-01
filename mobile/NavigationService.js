import { NavigationActions, StackActions } from "react-navigation";

let _navigator;

function setRootStack(navigatorRef) {
  _navigator = navigatorRef;
}

function navigate(routeName, params) {
  _navigator.dispatch(
    NavigationActions.navigate({
      routeName,
      params
    })
  );
}

function push(routeName, params) {
  _navigator.dispatch(
    StackActions.push({
      routeName,
      params
    })
  );
}

function replace(routeName, params) {
  _navigator.dispatch(
    StackActions.reset({
      index: 0,
      actions: [NavigationActions.navigate({ routeName })]
    })
  );
}

function popToTop(routeName, params) {
  _navigator.dispatch(
    NavigationActions.navigate({
      routeName,
      params
    })
  );
}

// add other navigation functions that you need and export them

export default {
  navigate,
  push,
  popToTop,
  replace,
  setRootStack
};
