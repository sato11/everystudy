var Component = React.createClass({
  propTypes: {
    name: React.PropTypes.string.isRequired,
  },
  render: function() {
    return React.DOM.span(null, 'I am ' + this.props.name + '.')
  }
});

ReactDOM.render(
  React.createElement(Component, {
    name: 'Bob'
  }),
  document.getElementById('app')
);
