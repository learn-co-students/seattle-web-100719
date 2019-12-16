import React from "react";

const Dog = props => {
  console.log(props);
  return <img style={{ height: "200px" }} src={props.dogImage} />;
};

export default Dog;
