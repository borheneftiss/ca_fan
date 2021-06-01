import React, { Component } from "react";
import { Text, View, Dimensions, StyleSheet,Image  } from "react-native";
import { TabView, TabBar, SceneMap } from 'react-native-tab-view';
import { Ionicons } from "@expo/vector-icons";
import Icon from "../../../assets/icone/Groupe 85.png"

const FirstRoute = () => (
  <View style={[styles.scene, { backgroundColor: '#ff4081' }]} />
);
const SecondRoute = () => (
  <View style={[styles.scene, { backgroundColor: '#673ab7' }]} />
);


class HomeScreen extends Component {
  static navigationOptions = {
    header: null
  };

  state = {
    index: 0,
    routes: [
      { key: 'home', title: 'Accueil'},
      { key: 'points', title: 'Points'},
      { key: 'media', title: 'Médias'},
      { key: 'game', title: 'Jeux'}
    ],
  };

 getTabBarIcon = (props) => {
console.log(props.route.key)
   if(props.route.key === "home"){
    return    <Ionicons/>
   }else if (props.route.key === "points"){
    return    <Ionicons/>
   }
}

  render() {
    return (
      <TabView
        navigationState={this.state}
        tabBarPosition={'bottom'}
        renderTabBar={props =>
          <TabBar
              {...props}
              renderIcon={
                props => this.getTabBarIcon(props)
            }
          />
      }
        renderScene={SceneMap({
          home: FirstRoute,
          points: SecondRoute,
          media: SecondRoute,
          game: SecondRoute
        })}
        onIndexChange={index => this.setState({ index })}
        initialLayout={{ width: Dimensions.get('window').width }}
      />
    );
  }
}

const styles = StyleSheet.create({
  scene: {
    flex: 1,
  },
});

export default HomeScreen;
