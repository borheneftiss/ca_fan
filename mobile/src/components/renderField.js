import React from "react";
import { TextInput, View, Text } from "react-native";
import { styles } from "./style";

const renderField = ({
  input,
  label,
  type,
  keyboardType,
  onchange,
  meta: { touched, error }
}) => (
  <View style={styles.viewinput}>
    <TextInput
      style={styles.input}
      {...input}
      placeholder={label}
      type={type}
        keyboardType={keyboardType}
      placeholderTextColor="rgba(255,255,255, 0.5)"
    />

    {touched && error && (
      <Text style={styles.label}>{`Veuillez saisir votre ${label}`}</Text>
    )}
  </View>
);

export default renderField;
