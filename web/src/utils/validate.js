const validate = values => {
  const errors = {};
  if (!values.firstName) {
    errors.firstName = "Champ Obligatoire";
  }
  if (!values.lastName) {
    errors.lastName = "Champ Obligatoire";
  }
  if (!values.nom) {
    errors.nom = "Champ Obligatoire";
  }
  if (!values.prenom) {
    errors.prenom = "Champ Obligatoire";
  }
  if (!values.naissance) {
    errors.naissance = "Champ Obligatoire";
  }
  if (!values.telephone) {
    errors.telephone = "Champ Obligatoire";
  }else if (values.telephone.length>8 || values.telephone.length<8) {
    errors.telephone = "Max 8 chiffres";
  }
  if (!values.cin) {
    errors.cin = "Champ Obligatoire";
  }else if (values.cin.length>8 || values.cin.length<8) {
    errors.cin = "Max 8 chiffres";
  }
  if (!values.city) {
    errors.city = "Champ Obligatoire";
  }
  if (!values.address) {
    errors.address = "Champ Obligatoire";
  }
  if (!values.email) {
    errors.email = "Champ Obligatoire";
  } else if (!/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i.test(values.email)) {
    errors.email = "Invalid email address";
  }
  if (!values.sex) {
    errors.sex = "Champ Obligatoire";
  }
  if (!values.favoriteColor) {
    errors.favoriteColor = "Champ Obligatoire";
  }
  return errors;
};

export default validate;
