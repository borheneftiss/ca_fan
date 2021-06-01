import React from 'react';

const renderField = ({ input,length, max,bool,label, type, meta: { touched, error } }) => (
  <div>
    <div>
      <input {...input}
       placeholder={label}
       readOnly={bool}
       type={type}
       maxLength={length}
       
       onChange={(text)=>input.onChange(text)}
       max={max}
       
       />
       {/* {touched && error && <span>{`Veuillez saisir votre ${label}`}</span>} */}
      {touched && error && <span>{error}</span>}
    </div>
  </div>
);
export default renderField;

