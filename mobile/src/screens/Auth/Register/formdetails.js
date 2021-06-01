import React, { Component } from "react";
import {
  Text,
  TouchableOpacity,
  View,
  KeyboardAvoidingView,
  ScrollView
} from "react-native";
import { styles } from "../style";
import * as Animatable from "react-native-animatable";
import { Ionicons } from "@expo/vector-icons";
import DatePicker from "react-native-datepicker";
import { Field, reduxForm, formValueSelector,initialize } from "redux-form";
import validate from "../../../utility/validate";
import renderField from "../../../components/renderField";
import { connect } from "react-redux";
import { tryVerifMobile, trySendsms } from "../../../store/actions";

class Formdetails extends Component {
  static navigationOptions = {
    header: null
  };

  constructor(props) {
    super(props);
    this.state = {
      text: "",
      date: "",
      telephone: "",
      recaptcha: false
    };
  }
componentDidMount(){
  if(this.props.datauser !== ""){
    const initialFormData = {
      nom: this.props.datauser.first_name,
      prenom: this.props.datauser.last_name,
      email: this.props.datauser.email,
      
    }
    this.props.dispatch(initialize('Formdetails', initialFormData))
  }

}


  _checknumberca = () => {
    this.props.tryVerifMobile(this.props.phonenumber);
  };

  _verifDetails = () => {
    this.props.handleSubmit();
    if (this.props.isNumberca) {
      this.props.trySendsms(this.props.phonenumber);
    }
  };

  render() {
    if (this.props.phonenumber !== undefined) {
      if (this.props.phonenumber.length > 7) {
        this._checknumberca();
      }
    }
    const { isNumberca } = this.props;
    let labelcheck;
    if (isNumberca) {
      labelcheck = (
        <Animatable.Text
          animation="zoomIn"
          easing="ease-in"
          style={{ position: "absolute", right: 5 }}
        >
          <Ionicons name="md-checkmark" size={19} color="green" />
        </Animatable.Text>
      );
    } else {
      labelcheck = <View style={{ position: "absolute" }} />;
    }
    return (
      <KeyboardAvoidingView
        style={styles.fildsContainer}
        behavior="padding"
        enabled
      >
        <ScrollView style={{ marginTop: 60, marginBottom: 20 }}>
       
          <Field name="nom" type="text" component={renderField} label="Nom" />
          <Field
            name="prenom"
            type="text"
            component={renderField}
            label="Prénom"
          />
          <DatePicker
            style={{ marginTop: 10, width: 300 }}
            date={this.state.date}
            mode="date"
            placeholder="Date de naissance"
            format="DD-MM-YYYY"
            showIcon={false}
            androidMode={"spinner"}
            confirmBtnText="Confirm"
            cancelBtnText="Cancel"
            customStyles={{
              dateText: {
                color: "#fff",
                width: "100%",
                fontSize: 18
              },
              dateInput: {
                padding: 0,
                marginBottom: 30,
                alignItems: "flex-start",
                marginLeft: 0,
                borderTopWidth: 0,
                borderLeftWidth: 0,
                borderRightWidth: 0,
                borderColor: "#fff",
                color: "#fff"
              },
              placeholderText: {
                color: "rgba(255,255,255, 0.5)",
                fontSize: 18
              }
            }}
            onDateChange={date => {
              this.setState({ date: date });
            }}
          />
          <Field
            name="email"
            type="text"
            keyboardType="email-address"
            component={renderField}
            label="Email"
          />
          <View>
            <Field
              name="telephone"
              type="text"
              keyboardType="phone-pad"
              component={renderField}
              label="Numéro de téléphone"
            />
            {labelcheck}
          </View>
          <Field
            name="cin"
            type="text"
            keyboardType="phone-pad"
            component={renderField}
            label="CIN"
          />
          <Field
            name="ville"
            type="text"
            keyboardType="default"
            component={renderField}
            label="Ville"
          />
          <Field
            name="address"
            type="text"
            keyboardType="default"
            component={renderField}
            label="Address"
          />
        </ScrollView>
        <TouchableOpacity
          onPress={this._verifDetails}
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
      </KeyboardAvoidingView>
    );
  }
}

const selector = formValueSelector("Formdetails");
const mapStateToProps = state => {
  return {
    isNumberca: state.isNumberca.isNumberca,
    formReducer: state.form.formReducer,
    initialValues: state.initialValues.initialValues,
    phonenumber: selector(state, "telephone")
  };
};

const mapDispatchToProps = dispatch => {
  return {
    tryVerifMobile: number => dispatch(tryVerifMobile(number)),
    trySendsms: number => dispatch(trySendsms(number))
  };
};

Formdetails = connect(
  mapStateToProps,
  mapDispatchToProps
)(Formdetails);

export default reduxForm({
  form: "Formdetails", // <------ same form name
  enableReinitialize: true,
  destroyOnUnmount: false, // <------ preserve form data
  forceUnregisterOnUnmount: true, // <------ unregister fields on unmount
  validate
})(Formdetails);
