
'use strict';

var React = require('react-native'); var {
    Text,
    View
} = React;

var styles = React.StyleSheet.create({
                                     container:{
                                     backgroundColor: 'yellow',
                                     height: 100,
                                     width: 280,

                                     borderColor: 'red',
                                     }
});

class SimpleApp extends React.Component { render() {

    return (

            <View style={styles.container}>
            <Text>This is a ReactNativeDemo application.</Text>
            </View>
        )};
}

React.AppRegistry.registerComponent('ReactNativeDemo', () => SimpleApp);
