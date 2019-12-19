import React from "react";

// need to match specific glasses based on url
// glasses is all the glasses

const Details = ({ glasses, match }) => {

  const defaultGlasses = {
    image: "",
    maker: "Loading",
    style: "Loading"
  };

  const getGlasses = () => (
    glasses.find(glass => glass.id == parseInt(match.params.id))
  );

  const { image, style, maker } =
    glasses.length > 0 ? getGlasses() : defaultGlasses;

  return (
    <>
      <img className="card-img-top" src={image} />
      <div className="card-body">
        <h3>{style}</h3>
        <h4>{maker}</h4>
      </div>
    </>
  );
};

export default Details;
