import React, { Component } from "react";
import {
  Image,
  ImageBackground,
  TouchableOpacity,
  View,
  Text,
  Alert
} from "react-native";
import { styles } from "./style";


class IntroScreen extends Component {
  static navigationOptions = {
    header: null
  };

  constructor(props) {
    super(props);
    this.state = {
      text: "",
      userfacebook: ""
    };
  }

  _logIn = async () => {
    try {
      const {
        type,
        token,
        expires,
        permissions,
        declinedPermissions
      } = await Expo.Facebook.logInWithReadPermissionsAsync(
        "2178579575514353",
        {
          permissions: ["public_profile", "email"]
        }
      );
      if (type === "success") {
        // Get the user's name using Facebook's Graph API
        const response = await fetch(
          `https://graph.facebook.com/me?access_token=${token}&fields=id,first_name,last_name,email`
        );
        const userinfo = await response.json();
        await this.setState({ userfacebook: userinfo });
        console.log(userinfo)
        await  this.props.navigation.navigate("Register", {
          datauser: this.state.userfacebook
        });
      } else {
        // type === 'cancel'
      }
    } catch ({ message }) {
      alert(`Facebook Login Error: ${message}`);
    }
  };
  render() {
    return (
      <ImageBackground
        source={require("../../../assets/background.png")}
        style={{ flex: 1 }}
      >
        <View
          style={{ flex: 1, alignItems: "center", justifyContent: "center" }}
        >
          <Image
            source={require("../../../assets/logo.png")}
            style={{ width: 150, height: 150 }}
            resizeMode="contain"
          />

          <TouchableOpacity
            style={{ marginTop: 40 }}
            onPress={() => {
              this.props.navigation.navigate("Register", {
                datauser: this.state.userfacebook
              });
            }}
          >
            <Text style={styles.btnregister}>Inscription</Text>
          </TouchableOpacity>

          <TouchableOpacity
            onPress={() => this.props.navigation.navigate("Login")}
          >
            <Text style={styles.btnlogin}>Connexion</Text>
          </TouchableOpacity>
          <Text style={{ marginTop: 50, color: "#fff" }}>OU</Text>
          <TouchableOpacity onPress={this._logIn}>
            <Text style={styles.btnfacebook}>Inscription avec Facebook</Text>
          </TouchableOpacity>
        </View>
      </ImageBackground>
    );
  }
}

export default IntroScreen;
