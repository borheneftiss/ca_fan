import React, { Component } from "react";
import {
  Text,
  TouchableOpacity,
  View,
  StyleSheet,
  TextInput,
  Keyboard
} from "react-native";
import { styles } from "../style";
import { Ionicons } from "@expo/vector-icons";
import { reduxForm, formValueSelector } from "redux-form";
import { connect } from "react-redux";
import { tryVerifcodesms,trySendsms } from "../../../store/actions";
import validate from "../../../utility/validate";

class Smsverification extends Component {
  static navigationOptions = {
    header: null
  };

  constructor(props) {
    super(props);
    this.state = {
      focusn1:false,
      focusn2:false,
      focusn3:false,
      focusn4:false,
      text: "",
      date: "",
      num1: "",
      num2: "",
      num3: "",
      num4: "",
      code: "",
      number: ""
    };
  }

  componentWillReceiveProps(prevProps) {
    if (prevProps.isCodesms) {
      this.props.handleSubmit();
    }
  }
  _verifcodesms = () => {
    const codenumber =
      this.state.num1 + this.state.num2 + this.state.num3 + this.state.num4;
    this.props.tryVerifcodesms(this.props.phonenumber, codenumber);
  };


  _resetsend=()=>{
    this.props.trySendsms(this.props.phonenumber)
  }

  render() {
    let errormessage;
    if (this.props.errmessagecode === "err") {
      errormessage = (
        <Text style={{ textAlign: "center", color: "#fff" }}>error</Text>
      );
    }
    return (
      <View style={styles.fildsContainer}>
        <View style={{ textAlign: "center" }}>
          <Text
            style={{
              textAlign: "center",
              fontSize: 18,
              fontWeight: "bold",
              color: "#fff",
              fontFamily: "LatoBold"
            }}
          >
            VERIFICATION
          </Text>
          <Text
            style={{
              textAlign: "center",
              color: "#fff",
              fontFamily: "latoRegular"
            }}
          >
            entrez le code de vérification
          </Text>
          <Text
            style={{
              textAlign: "center",
              color: "#fff",
              fontFamily: "latoRegular"
            }}
          >
            envoyé à {this.props.phonenumber}
          </Text>
          <Text
            style={{
              textAlign: "center",
              marginTop: 60,
              marginBottom: 20,
              color: "#fff",
              fontFamily: "latoRegular"
            }}
          >
            Code de vériﬁcation
          </Text>
          <View style={{ flexDirection: "row" }}>
            <TextInput
             style={[styles.textInputnumber,{borderWidth: this.state.focusn1?2:1}]}
              onChangeText={text => this.setState({ num1: text })}
              value={this.state.num1}
              keyboardType="number-pad"
              maxLength={1}
              onFocus={()=> this.setState({focusn1: true })}
              onEndEditing={()=> this.setState({focusn1: false })}
              autoFocus={true}
              onChange={() => {
                this.secondTextInput.focus();
              }}
              blurOnSubmit={false}
            />
            <TextInput
              style={[styles.textInputnumber,{borderWidth: this.state.focusn2?2:1}]}
              onChangeText={text => this.setState({ num2: text })}
              value={this.state.num2}
              keyboardType="number-pad"
              maxLength={1}
              onFocus={()=> this.setState({focusn2: true })}
              onEndEditing={()=> this.setState({focusn2: false })}
              onChange={() => {
                this.threeTextInput.focus();
              }}
              ref={input => {
                this.secondTextInput = input;
              }}
            />
            <TextInput
              style={[styles.textInputnumber,{borderWidth: this.state.focusn3?2:1}]}
              onChangeText={text => this.setState({ num3: text })}
              value={this.state.num3}
              keyboardType="number-pad"
              maxLength={1}
              onFocus={()=> this.setState({focusn3: true })}
              onEndEditing={()=> this.setState({focusn3: false })}
              onChange={() => {
                this.fourTextInput.focus();
              }}
              ref={input => {
                this.threeTextInput = input;
              }}
            />
            <TextInput
              style={[styles.textInputnumber,{borderWidth: this.state.focusn4?2:1}]}
              onChangeText={text => this.setState({ num4: text })}
              value={this.state.num4}
              keyboardType="number-pad"
              maxLength={1}
              onFocus={()=> this.setState({focusn4: true })}
              onEndEditing={()=> this.setState({focusn4: false })}
              onChange={Keyboard.dismiss}
              ref={input => {
                this.fourTextInput = input;
              }}
            />
          </View>
          {errormessage}
        </View>

        <View style={{ flex: 0.4 }} />
        <TouchableOpacity onPress={this._resetsend}>
           <Text style={{color:"rgba(255,255,255, 0.5)",marginBottom:15}}>n'a pas reçu le code?</Text>
        </TouchableOpacity>    
        <TouchableOpacity
          onPress={this._verifcodesms}
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
      </View>
    );
  }
}
 
const selector = formValueSelector("Formdetails");
const mapStateToProps = state => {
  return {
    isCodesms: state.isCodesms.isCodesms,
    errmessagecode: state.errmessagecode.errmessagecode,
    phonenumber: selector(state, "telephone")
  };
};

const mapDispatchToProps = dispatch => {
  return {
    tryVerifcodesms: (number, code) => dispatch(tryVerifcodesms(number, code)),
    trySendsms: number => dispatch(trySendsms(number))
  };
};

Smsverification = connect(
  mapStateToProps,
  mapDispatchToProps
)(Smsverification);

export default reduxForm({
  form: "Formdetails", // <------ same form name
  destroyOnUnmount: false, // <------ preserve form data
  forceUnregisterOnUnmount: true, // <------ unregister fields on unmount
  validate
})(Smsverification);
