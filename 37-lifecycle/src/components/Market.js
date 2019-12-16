import React, { PureComponent } from "react";

class Market extends PureComponent {
  constructor() {
    super();
    this.state = {
      marketTrend: 0
    };
  }

  componentWillUnmount() {
    alert("unmounting")
    console.log("%cMARKET IS UNMOUNTING", "color:green;")
    clearInterval(this.timer)
  }

  //THESE TWO ARE GOOD TO PAIR TOGETHER
  //  componentDidUpdate() {

  //  }
  //  shouldComponentUpdate(){

  //  }

  timer;

  componentDidMount() {
    this.timer = setInterval(() => {
      this.props.onRunTimer();
    }, 1000)
  }


  changeMarket = () => {
    this.setState(prevState => {
      let change = Math.random().toFixed(2) * 5;
      if (Math.random() > 0.5) {
        change *= -1;
      }
      return {
        marketTrend: (
          parseFloat(prevState.marketTrend) + parseFloat(change)
        ).toFixed(2)
      };
    });
  };

  // shouldComponentUpdate(props, state) {
  //   console.log(props)
  //   return false;
  // }

  render() {
    console.log("%cMARKET RENDER", 'color:green;')
    return (
      <div
        className={`container ${
          this.state.marketTrend >= 0 ? "positive" : "negative"
        }`}
      >
        <h2 onClick={this.changeMarket}>STOCK TICKER</h2>
        <h5>
          Stocks are {this.state.marketTrend >= 0 ? "rising" : "dropping"} by{" "}
          {this.state.marketTrend}%
        </h5>
      </div>
    );
  }
}

export default Market;
