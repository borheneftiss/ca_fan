const validate = values => {
  const errors = {};
  if (!values.prenom) {
    errors.prenom = "Required";
  }
  if (!values.nom) {
    errors.nom = "Required";
  }
  if (!values.cin) {
    errors.cin = "Required";
  }
  if (!values.ville) {
    errors.ville = "Required";
  }
  if (!values.address) {
    errors.address = "Required";
  }
  if (!values.date) {
    errors.date = "Required";
  }

  if (!values.email) {
    errors.email = "Required";
  } else if (!/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i.test(values.email)) {
    errors.email = "Invalid email address";
  }
  if (!values.telephone) {
    errors.telephone = "Required";
  }
  if (!values.favoriteColor) {
    errors.favoriteColor = "Required";
  }
  return errors;
};

export default validate;
