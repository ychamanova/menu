import React from 'react';
import styled from 'styled-components';

const Button = styled.button`
  background: transparent;
  border-radius: 2px;
  border: ${props => props.thickness || "1px"}
          solid ${props => props.inputColor || "lightgray"};
  color: black;
  font-size: 14px;
  margin: 0.5em 0.75em;
  padding: 0.25em 1em;
  height: 40px;
`

export default Button;