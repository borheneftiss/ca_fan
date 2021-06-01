import React, { Component } from "react";
import { Text, View, TouchableOpacity, ImageBackground } from "react-native";

import { DangerZone } from "expo";
import { styles } from "../style";
const { Lottie } = DangerZone;

export default class Success extends Component {
  static navigationOptions = {
    header: null
  };

  state = {
    animation: null
  };
  componentWillMount() {
    // this._playAnimation();
  }

  _playAnimation = () => {
    if (!this.state.animation) {
      this._loadAnimationAsync();
    } else {  
      this.animation.play();
    }
  };

  _loadAnimationAsync = async () => {
    let result = await fetch("https://autotech.chifco.com/success.json")
      .then(data => {
        return data.json();
      })
      .catch(error => {
        console.error(error);
      });
    this.setState({ animation: result }, this._playAnimation);
  };

  render() {
    return (
      <ImageBackground
        source={require("../../../../assets/backgroundScreen.png")}
        style={{
          flex: 1,
          alignItems: "center",
          justifyContent: "center",
          alignContent: "center"
        }}
      >
        <View
          style={{
            flex: 1,
            alignItems: "center",
            justifyContent: "center",
            alignContent: "center",
            padding: 25
          }}
        >
          {this.state.animation && (
            <Lottie
              ref={animation => {
                this.animation = animation;
              }}
              style={{
                width: 100,
                height: 100
              }}
              source={this.state.animation}
            />
          )}
          <Text
            style={{
              textAlign: "center",
              fontSize: 18,
              fontWeight: "bold",
              color: "#fff",
              fontFamily: "LatoBold",
              marginTop: 30
            }}
          >
            Votre demande de carte fidélité a été envoyée !
          </Text>
          <Text
            style={{
              textAlign: "center",
              color: "#fff",
              fontFamily: "latoRegular",
              marginTop: 20,
              marginBottom:20
            }}
          >
            Vous serez notifié une fois votre carte est prête ! Merci pour votre
            adhésion.
          </Text>
          <TouchableOpacity
            onPress={() => this.props.redirect()}
          >
            <Text style={styles.btnlogin}>Connexion</Text>
          </TouchableOpacity>
        </View>
      </ImageBackground>
    );
  }
}
