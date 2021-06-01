import React from "react";
import { createStackNavigator, createAppContainer } from "react-navigation";
import { StyleSheet, YellowBox } from "react-native";
import { AppLoading, Asset, Font } from "expo";
import { SafeAreaView } from "react-navigation";
import { Provider } from "react-redux";
import { ActionSheetProvider } from "@expo/react-native-action-sheet";
import configureStore from "./src/store/configureStore";
import IntroScreen from "./src/screens/Auth";
import RegisterScreen from "./src/screens/Auth/Register";
import LoginScreen from "./src/screens/Auth/Login";
import HomeScreen from "./src/screens/Home";

const store = configureStore();
const AppNavigator = createStackNavigator(
  {
    Intro: {
      screen: IntroScreen
    },
    Register: {
      screen: RegisterScreen
    },
    Login:{
      screen: LoginScreen
    },
    Home:{
      screen: HomeScreen
    }
  },
  {
    initialRouteName: "Intro"
  }
);

function cacheImages(images) {
  return images.map(image => {
    if (typeof image === "string") {
      return Image.prefetch(image);
    } else {
      return Asset.fromModule(image).downloadAsync();
    }
  });
}

// ignore specific yellowbox warnings
YellowBox.ignoreWarnings(["Require cycle:", "Remote debugger"]);

const AppContainer = createAppContainer(AppNavigator);
export default class App extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      isReady: false
    };
  }
  

  async _loadAssetsAsync() {
    const imageAssets = cacheImages([require("./assets/background.png")]);

    await Promise.all([...imageAssets]);
  }

  async _loadFont() {
    await Font.loadAsync({
      latoRegular: require("./assets/fonts/Lato-Regular.ttf"),
      LatoMedium: require("./assets/fonts/Lato-Medium.ttf"),
      LatoBold: require("./assets/fonts/Lato-Bold.ttf")
    });
  }

  render() {
    console.disableYellowBox = true;
    if (!this.state.isReady) {
      return (
        <AppLoading
          startAsync={this._loadFont}
          onFinish={() => this.setState({ isReady: true })}
          onError={console.warn}
        />
      );
    }
    return (
      <Provider store={store}>
        <SafeAreaView style={styles.safeArea} forceInset={{ top: "never" }}>
          <ActionSheetProvider>
            <AppContainer />
          </ActionSheetProvider>
        </SafeAreaView>
      </Provider>
    );
  }
}

const styles = StyleSheet.create({
  safeArea: {
    flex: 1,
    backgroundColor: "#000000"
  }
});
