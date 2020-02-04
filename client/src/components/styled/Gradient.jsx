import React from 'react';
import styled from 'styled-components';

const Gradient = styled.div`
  height: 500px;
  width: 100%;
  background-image: linear-gradient(rgba(0,0,0,0), rgba(255,255,255,.7), white);
  position: relative;
  margin-top: -500px;
`

export default Gradient;