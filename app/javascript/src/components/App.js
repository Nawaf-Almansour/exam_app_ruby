import React from 'react'
import './App.css'
import { Route, Switch } from 'react-router-dom'
import BaseLayout from '../components/layouts/BaseLayout'
import About from "./pages/About/About";
import Test from "./pages/Test/Test";
import User from "./pages/User/User";

const App = () => {

    return(
        <BaseLayout className="cover">
            <Switch>
                <Route exact path="/about" component={About} />
                <Route exact path="/test/:id" component={Test} />
                <Route exact path="/user/:id" component={User} />
            </Switch>
        </BaseLayout>
    )
}

export default App