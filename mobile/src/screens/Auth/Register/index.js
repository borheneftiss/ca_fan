import React, { Component } from "react";
import {
  Text,
  ImageBackground,
  TouchableOpacity,
  View,
  Image,
  StyleSheet
} from "react-native";
import { StackActions, NavigationActions } from "react-navigation";
import { Ionicons } from "@expo/vector-icons";
import { initialize } from 'redux-form';
import Formdetails from "./formdetails";
import Smsverification from "./smsverification";
import Paymentmethods from "./Paymentmethods";
import Orderreview from "./orderreview";
import Success from "./success";

class IntroScreen extends Component {
  static navigationOptions = {
    header: null
  };

  constructor(props) {
    super(props);
    this.nextPage = this.nextPage.bind(this);
    this.previousPage = this.previousPage.bind(this);
    const { navigation } = this.props;
    const datauser = navigation.getParam('datauser');
    this.state = {
      datauser:datauser,
      text: "",
      date: "",
      page: 1,
      paydata:""
    };
  }

  componentDidMount() {
    this.handleInitialize();
  }

  handleInitialize() {
    const initData = {
      "firstName": "this.props.currentUser.firstName",
      "lastName": "this.props.currentUser.lastName",
    };
    initialize(initData);
  }

  _goBack = () => {
    this.props.navigation.dispatch(
      StackActions.reset({
        index: 0,
        actions: [NavigationActions.navigate({ routeName: "Intro" })]
      })
    );
  };

  nextPage() {
    this.setState({ page: this.state.page + 1 });
  }

  getData = (data) => {
   this.setState({paydata:data})
}

  previousPage() {
    this.setState({ page: this.state.page - 1 });
  }

  render() {
    const { onSubmit } = this.props;
    const { page } = this.state;
    return (
      <ImageBackground
        source={require("../../../../assets/backgroundScreen.png")}
        style={{ flex: 1 }}
      >
        <Image
          source={require("../../../../assets/header.png")}
          style={{ position: "absolute", height: 150, width: "100%", top: 0 }}
          resizeMode="cover"
        />
        {/*Header*/}
        <View style={styles.container}>
          <TouchableOpacity
            onPress={this._goBack}
            style={{ position: "absolute", zIndex: 99 }}
          >
            <Ionicons
              style={styles.icnClose}
              name="md-close"
              size={20}
              color="white"
            />
          </TouchableOpacity>
          <Text style={styles.headerTitle}>CRÉER UN COMPTE</Text>
        </View>
        {/*Containt*/}
        <View style={styles.fildsContainer}>
          {page === 5 && <Formdetails onSubmit={this.nextPage} datauser={this.state.datauser} />}
          {page === 2 && (
            <Smsverification
              previousPage={this.previousPage}
              onSubmit={this.nextPage}
            />
          )}
          {page === 3 && (
            <Paymentmethods
              previousPage={this.previousPage}
              onSubmit={this.nextPage}
              onSave={this.getData}
            />
          )}
          {page === 4 && (
            <Orderreview previousPage={this.previousPage} data={this.state.paydata}  onSubmit={this.nextPage} />
          )}
          {page === 1 && (
            <Success previousPage={this.previousPage} onSubmit={onSubmit} redirect={()=>this.props.navigation.navigate("Login")}/>
          )}
        </View>
      </ImageBackground>
    );
  }

}
const styles = StyleSheet.create({
  container: {
    position: "absolute",
    top: 35,
    right: 0,
    left: 0
  },
  headerTitle: {
    paddingBottom: 15,
    paddingTop: 5,
    color: "#fff",
    fontSize: 18,
    textAlign: "center",
    fontWeight: "bold",
    fontFamily: "LatoBold",
    borderBottomWidth:1,
    borderColor:"#fff"
  },
  textInput: {
    height: 40,
    marginBottom: 20,
    width: "75%",
    borderColor: "gray",
    borderBottomWidth: 1,
    color: "#fff",
    fontWeight: "400"
  },
  btnContainer: {
    width: "100%",
    display: "flex",
    alignContent: "center",
    justifyContent: "center",
    alignItems: "center"
  },
  fildsContainer: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    alignContent: "center",
    marginTop: 25
  },
  btn: {
    display: "flex",
    flexDirection: "row",
    alignContent: "center",
    justifyContent: "center",
    alignItems: "center",
    borderWidth: 1,
    borderColor: "#fff",
    bottom: 30,
    width: "75%",
    borderBottomLeftRadius: 15,
    borderBottomRightRadius: 15,
    borderTopLeftRadius: 15,
    borderTopRightRadius: 15
  },
  icn: {
    top: 7,
    left: 10,
    width: 30,
    height: 30,
    zIndex: 99
  },
  icnClose: {
    top: 5,
    left: 10,
    width: 30,
    height: 30,
    zIndex: 99
  }
});
export default IntroScreen;
