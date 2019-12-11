import React from "react";

class ModForm extends React.Component {
  state = {
    name: "",
    date: Date.now().toString()
  };

  handleChange = e => {
    if (e.target.value.includes("code")) {
      alert("Sup nerd");
    }
    this.setState({
      name: e.target.value
    });
  };

  handleAddMod = e => {
    e.preventDefault();
    this.props.onAddMod(this.state);
    this.setState({name: ""}, () => {
        console.log(this.state.name)
    })
  };

  render() {
    return (
      <form onSubmit={this.handleAddMod}>
        <input
          type="text"
          value={this.state.name}
          onChange={this.handleChange}
        />
        <button type="submit">Submit</button>
        <hr></hr>
      </form>
    );
  }
}

export default ModForm;
