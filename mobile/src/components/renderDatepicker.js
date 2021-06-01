import React from "react";
import { TextInput, View, Text } from "react-native";
import DatePicker from "react-native-datepicker";

const renderField = ({
  input,
  label,
  type,
  onchange,
  meta: { touched, error }
}) => (
  <View
    style={{
      width: 300,
      justifyContent: "center",
      alignContent: "center",
      alignItems: "center",
      marginBottom: 15
    }}
  >
    <DatePicker
      style={{ marginTop: 5, width: 300 }}
      date={""}
      mode="date"
      placeholder="Date de naissance"
      format="DD-MM-YYYY"
      showIcon={false}
      androidMode={"spinner"}
      confirmBtnText="Confirm"
      cancelBtnText="Cancel"
      customStyles={{
        dateText: {
          color: "#000",
          width: "100%",
          fontSize: 15
        },
        dateInput: {
          padding: 0,
          marginBottom: 30,
          alignItems: "flex-start",
          marginLeft: 0,
          borderTopWidth: 0,
          borderLeftWidth: 0,
          borderRightWidth: 0,
          borderColor: "#355F99",
          color: "#355F99"
        },
        placeholderText: {
          color: "#355F99"
        }
      }}
      onDateChange={date => {
        con({ date: date });
      }}
    />

    {touched && error && (
      <Text
        style={{
          position: "absolute",
          color: "#E02A3F",
          fontSize: 13,
          right: 5
        }}
      >{`Veuillez saisir votre ${label}`}</Text>
    )}
  </View>
);

export default renderField;
