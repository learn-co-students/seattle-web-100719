import React from "react";
import { Link } from "react-router-dom";

const Glasses = ({ glasses }) => {
  const { image, style, maker, id } = glasses;

  return (
    <>
      <div className="col col-md-3">
        <div className="card">
          <img className="card-img-top" src={image} />
          <div className="card-body">
            <h3>{style}</h3>
            <h4>{maker}</h4>
          </div>
          <Link to={`/glasses/${id}`}>
            <button className="btn btn-warning">See Details</button>
          </Link>
        </div>
      </div>
    </>
  );
};

export default Glasses;
