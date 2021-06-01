import React, { Component } from "react";
import { Text, TouchableOpacity, View, ActivityIndicator } from "react-native";
import { styles } from "../style";
import { reduxForm, formValueSelector } from "redux-form";
import { connectActionSheet } from "@expo/react-native-action-sheet";
import validate from "../../../utility/validate";
import { connect } from "react-redux";
import { getmodesPaymentmethods } from "../../../store/actions";
import { MaterialIcons, Ionicons } from "@expo/vector-icons";

const icon = name => <MaterialIcons key={name} name={name} size={24} />;

@connectActionSheet
class Paymentmethods extends Component {
  static navigationOptions = {
    header: null
  };

  constructor(props) {
    super(props);
    this.state = {
      text: "",
      date: "",
      selectedpaiement: "Sélectionnez votre mode de paiement",
      selectedcod: "Sélectionnez votre mode de récupération"
    };
  }

  componentDidMount() {
    this.props.getmodesPaymentmethods();
  }

  handleSaveData = data => {
    this.props.onSave(data);
  };

  onsub = async () => {
    await this.handleSaveData([
      this.state.selectedpaiement,
      this.state.selectedcod
    ]);
    await this.props.handleSubmit();
  };

  _onOpenActionSheetPaiement = () => {
    const { withIcons, withSeparators, withCustomStyles } = this.props;
    const options = [];
    for (let key in this.props.paymentonline) {
      options.push(this.props.paymentonline[key].titre);
    }
    const icons = withIcons
      ? [icon("delete"), icon("save"), icon("share"), icon("cancel")]
      : null;
    const textStyle = withCustomStyles
      ? { fontSize: 40, fontWeight: "bold", color: "blue" }
      : null;
    let destructiveButtonIndex = 3;
    let cancelButtonIndex = 4;

    this.props.showActionSheetWithOptions(
      {
        options,
        cancelButtonIndex,
        destructiveButtonIndex,
        showSeparators: withSeparators,
        textStyle,
        icons
      },
      buttonIndex => {
        if (buttonIndex === 0) {
          this.setState({ selectedpaiement: "Par carte bancaire E-dinar" });
        }
        if (buttonIndex === 1) {
          this.setState({ selectedpaiement: "Par recharge téléphonique" });
        }
        if (buttonIndex === 2) {
          this.setState({ selectedpaiement: "A la livraison" });
        }
      }
    );
  };

  _onOpenActionSheetCod = () => {
    const options = [];
    for (let key in this.props.paymentcod) {
      options.push(this.props.paymentcod[key].titre);
    }
    let destructiveButtonIndex = 0;
    let cancelButtonIndex = 2;

    this.props.showActionSheetWithOptions(
      {
        options,
        cancelButtonIndex,
        destructiveButtonIndex
      },
      buttonIndex => {
        if (buttonIndex === 0) {
          this.setState({ selectedcod: "Livraison à domicile" });
        }
        if (buttonIndex === 1) {
          this.setState({ selectedcod: "Boutique" });
        }
      }
    );
  };

  render() {
    const { handleSubmit, data } = this.props;
    return (
      <View style={styles.fildsContainer}>
        <View style={styles.paymcont}>
          {this.props.isLoading ? (
            <View style={styles.loadcont}>
              <ActivityIndicator size="large" color="#fff" />
            </View>
          ) : (
            <View style={styles.contbox}>
              <TouchableOpacity
                onPress={this._onOpenActionSheetPaiement}
                style={styles.boxmode}
              >
                <Text style={styles.boxpaytex}>Paiement en ligne</Text>
                <Text style={{ color: "#fff", width: "80%" }}>
                  {this.state.selectedpaiement}
                </Text>
                <Ionicons
                  style={styles.icnbox}
                  name="ios-arrow-forward"
                  size={16}
                  color="#fff"
                />
              </TouchableOpacity>
              <TouchableOpacity
                onPress={this._onOpenActionSheetCod}
                style={styles.boxmode}
              >
                <Text style={styles.boxpaytex}>Récupératon de la carte</Text>
                <Text style={{ color: "#fff", width: "80%" }}>
                  {this.state.selectedcod}
                </Text>
                <Ionicons
                  style={styles.icnbox}
                  name="ios-arrow-forward"
                  size={16}
                  color="#fff"
                />
              </TouchableOpacity>
            </View>
          )}
        </View>
        <TouchableOpacity onPress={this.onsub} style={styles.btnContainer}>
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
    isLoading: state.ui.isLoading,
    paymentcod: state.paymentcod.paymentcod,
    paymentonline: state.paymentonline.paymentonline
  };
};

const mapDispatchToProps = dispatch => {
  return {
    getmodesPaymentmethods: () => dispatch(getmodesPaymentmethods())
  };
};

Paymentmethods = connect(
  mapStateToProps,
  mapDispatchToProps
)(Paymentmethods);

export default reduxForm({
  form: "Formdetails",
  destroyOnUnmount: false,
  forceUnregisterOnUnmount: true,
  validate
})(Paymentmethods);
