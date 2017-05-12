var User = React.createClass({
  render() {
    var createItem = (p) =>
    <div>
      <h1>{p.name} / {p.age}</h1>
    </div>


  return <h4>{this.props.data.map(createItem)}</h4>
  }
});


var hi = React.createClass({
  render() {
    return <h2> Hi {this.props.name}</h2>
  }
});

var person = React.createClass({
  render(){
    return <h2> hi {this.props.name} </h2>
  }
});
