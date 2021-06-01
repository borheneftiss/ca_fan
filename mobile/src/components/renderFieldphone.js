import React from "react";
import { TextInput, View, Text } from "react-native";

function senData(value) {
  window.phone = value;
}
const renderField = ({
  input,
  props,
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
    <TextInput
      style={{
        width: 300,
        borderColor: "gray",
        borderBottomWidth: 1,
        marginBottom: 15
      }}
      placeholder="Telephone"
      name="telephone"
      keyboardType="phone-pad"
      onChangeText={text => props.action(text)}
      placeholderTextColor="#355F99"
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
