import React from "react";
import PrivacyHOC from "../HOC/PrivacyHOC";

const Secret = () => {
  return (
    <div>
      <h2>It's true, I am the Batman.</h2>
    </div>
  );
};

export default PrivacyHOC(Secret);
