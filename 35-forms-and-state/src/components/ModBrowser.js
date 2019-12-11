import React from 'react'
import Greeting from './Greeting'

class ModBrowser extends React.Component {

    renderMods() {
        return this.props.mods.map((mod, index) => {
            return <Greeting mod={mod} key={index} />;
        })
    }

    render() {
        return <div>
            {this.renderMods()}
        </div>
    }
}

export default ModBrowser