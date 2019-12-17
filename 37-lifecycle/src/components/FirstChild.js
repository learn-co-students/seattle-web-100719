import React from "react";

class FirstChild extends React.PureComponent {
  constructor() {
    super();
    console.log("%cFIRST CHILD CONSTRUCTED", "color:red;");
    this.state = {
      happy: false
    };
  }

  componentDidMount() {
    console.log("%cFIRST CHILD DID MOUNT", "color:red;");
    //   alert("Hello!")
  }

  componentWillMount() {
    console.log("%cFIRST CHILD WILL MOUNT", "color:red;");
    this.setState({ happy: true });
  }

  componentWillReceiveProps(props) {
    console.log(props)
    if (props.myValue < 10) {
        this.setState({happy: false})
    }
  }

  render() {
    console.log("%cFIRST CHILD RENDERED", "color:red;");

    return (
      <div>
        <h2>FIRST CHILD</h2>
        <h3>{this.props.myValue}</h3>
      </div>
    );
  }
}

export default FirstChild;
