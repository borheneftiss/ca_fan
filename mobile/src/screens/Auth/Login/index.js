import React, { Component } from "react";
import {
  Text,
  ImageBackground,
  TextInput,
  View,
  TouchableOpacity
} from "react-native";
import { AntDesign } from "@expo/vector-icons";
import { connect } from "react-redux";
import { tryLogin } from "../../../store/actions";
import { styles } from "../style";

class LoginScreen extends Component {
  static navigationOptions = {
    header: null
  };

  constructor(props){
    super(props)
    this.state={
      phonenumber:"",
      cardnumber:""
    }
  }

  _handleLogin = () => {
    const data = {
      phonenumber: this.state.phonenumber,
      cardnumber: this.state.cardnumber
    };
    this.props.tryLogin(data);
  };
  render() {
    return (
      <ImageBackground
        source={require("../../../../assets/backgroundScreen.png")}
        style={{ flex: 1 }}
      >
        <View
          style={{
            flex: 1,
            alignItems: "center",
            justifyContent: "center",
            alignContent: "center",
            margin: 30
          }}
        >
          <Text style={{ color: "#fff", fontSize: 30, marginBottom: 50 }}>
            Connectez-vous
          </Text>

          <View
            style={{
              display: "flex",
              flexDirection: "row",
              width: "100%",
              borderColor: "#fff",
              borderBottomWidth: 1,
              height: 40,
              marginBottom: 40
            }}
          >
            <AntDesign
              name="phone"
              style={{ marginRight: 15, position: "relative", top: 8 }}
              size={25}
              color="#fff"
            />
            <TextInput
              style={{
                color: "#fff",
                fontSize: 17
              }}
              placeholder="Numéro de téléphone"
              keyboardType="phone-pad"
              placeholderTextColor="rgba(255,255,255, 0.5)"
              onChangeText={(text) => this.setState({phonenumber: text})}
            />
          </View>
          <View
            style={{
              display: "flex",
              flexDirection: "row",
              width: "100%",
              borderColor: "#fff",
              borderBottomWidth: 1,
              height: 40,
              marginBottom: 60
            }}
          >
            <AntDesign
              name="creditcard"
              style={{ marginRight: 15, position: "relative", top: 8 }}
              size={25}
              color="#fff"
            />
            <TextInput
              style={{
                color: "#fff",
                fontSize: 17
              }}
              placeholder="Numéro de carte"
              keyboardType="phone-pad"
              placeholderTextColor="rgba(255,255,255, 0.5)"
              onChangeText={(text) => this.setState({cardnumber: text})}
            />
          </View>

          <TouchableOpacity
            onPress={this._handleLogin}
          >
            <View
              style={{
                borderWidth: 1,
                padding: 10,
                borderColor: "#fff",
                borderBottomLeftRadius: 30,
                borderBottomRightRadius: 30,
                borderTopLeftRadius: 30,
                borderTopRightRadius: 30,

                display: "flex",
                flexDirection: "row",
                alignContent: "center",
                justifyContent: "center",
                alignItems: "center"
              }}
            >
              <Text
                style={{
                  color: "#fff",
                  fontSize: 18
                }}
              >
                Connexion
              </Text>
              <AntDesign
                style={{ paddingLeft: 10, position: "relative", top: 2 }}
                name="arrowright"
                size={20}
                color="#fff"
              />
            </View>
          </TouchableOpacity>
        </View>
      </ImageBackground>
    );
  }
}

const mapDispatchToProps = dispatch => {
  return {
    tryLogin: data => dispatch(tryLogin(data))
  };
};

export default (Orderreview = connect(
  null,
  mapDispatchToProps
)(LoginScreen));
