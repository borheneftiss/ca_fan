import React from 'react';
import "./renderRadio.css"

const renderRadio = ({ input, label, type, meta: { touched, error } }) => (
  <div>
    <div className="radio-item-test">
      <input {...input} type="radio" placeholder={label} type={type} onChange={(text)=>input.onChange(text)}/>
    </div>
  </div>
);
export default renderRadio;

