import React, { Component } from "react";
import {
  Text,
  TouchableOpacity,
  View,
  StyleSheet,
  ActivityIndicator
} from "react-native";
import {styles} from "../style"
import { CheckBox } from "react-native-elements";
import { Ionicons } from "@expo/vector-icons";
import { reduxForm, formValueSelector } from "redux-form";
import { connect } from "react-redux";
import { tryRegister } from "../../../store/actions";

import validate from "../../../utility/validate";

class Orderreview extends Component {
  static navigationOptions = {
    header: null
  };

  constructor(props) {
    super(props);
    this.state = {
      text: "",
      date: "",
      value: false,
      checked: true
    };
  }

  componentWillReceiveProps(prevProps){
    if(prevProps.registerResponse !== this.props.registerResponse){
      this.props.handleSubmit()
    }
  }

  handleRegister = () => {
    const data = {
      firstname: this.props.firstname,
      lastname: this.props.lastname,
      telephone: this.props.telephone,
      cin: this.props.cin,
      birthday: "",
      email: this.props.email,
      city: this.props.city,
      address: this.props.address,
      idrecoverymode: this.props.data[0],
      idpaiementmode: this.props.data[1],
      idproduits: ""
    };
    this.props.tryRegister(data);
  };


  render() {
    return (
      <View style={styles.contorderview}>
        <View
          style={{
            justifyContent: "flex-start",
            alignContent: "flex-start",
            alignItems: "flex-start",
            width: "80%"
          }}
        >
          <Text
            style={{
              fontWeight: "bold",
              fontSize: 18,
              textAlign: "center",
              color: "#fff",
              marginBottom: 40
            }}
          >
            Récapitulatif de votre demande de Carte fidélité
          </Text>
          <Text style={{ textAlign: "left", color: "#fff", marginBottom: 20 }}>
            Livraison à l’adresse: {this.props.address}
          </Text>

          <Text
            style={{
              textAlign: "left",
              fontSize: 15,
              color: "#fff"
            }}
          >
           {this.props.data[0]}
          </Text>
          <Text
            style={{
              textAlign: "left",
              fontSize: 15,
              color: "#fff"
            }}
          >
           {this.props.data[1]}
          </Text>

          <CheckBox
            left
            title="Termes et conditions"
            checked={this.state.value}
            onPress={() => this.setState({ value: !this.state.value })}
            checkedColor="#fff"
            textStyle={{ color: "#fff" }}
            containerStyle={{
              backgroundColor: "transparent",
              borderWidth: 0,
              padding: 0,
              margin: 0,
              marginLeft: 0,
              marginTop: 20
            }}
          />
        </View>

        {this.props.isLoading ? (
          <View style={{ justifyContent: "center" }}>
            <ActivityIndicator size="large" color="#fff" />
          </View>
        ) : (
          <TouchableOpacity
            onPress={this.state.value&&this.handleRegister}
            style={styles.btnContainer}
          >
             <View style={styles.btn}>
            <Text style={styles.textnext}>Suivant</Text>
            <Ionicons
              style={styles.icn}
              name="ios-arrow-forward"
              size={14}
              color="#E02A3F"
            />
          </View>
          </TouchableOpacity>
        )}
      </View>
    );
  }
}

const selector = formValueSelector("Formdetails");

const mapStateToProps = state => {
  return {
    isLoading: state.ui.isLoading,
    paymentcod: state.paymentcod.paymentcod,
    registerResponse: state.registerResponse.registerResponse,
    paymentonline: state.paymentonline.paymentonline,
    telephone: selector(state, "telephone"),
    firstname: selector(state, "prenom"),
    lastname: selector(state, "nom"),
    //date na
    email: selector(state, "email"),
    cin: selector(state, "cin"),
    ville: selector(state, "ville"),
    address: selector(state, "address")
  };
};

const mapDispatchToProps = dispatch => {
  return {
    tryRegister: data => dispatch(tryRegister(data))
  };
};

Orderreview = connect(
  mapStateToProps,
  mapDispatchToProps
)(Orderreview);

export default reduxForm({
  form: "Formdetails", // <------ same form name
  destroyOnUnmount: false, // <------ preserve form data
  forceUnregisterOnUnmount: true, // <------ unregister fields on unmount
  validate
})(Orderreview);
