import React from 'react'
import ReactDOM from 'react-dom'
import {AppContainer} from 'react-hot-loader'
import App from './App'

rootElement = document.getElementById('app')
render = (Component) ->
  ReactDOM.render(
    <AppContainer>
      <Component/>
    </AppContainer>,
    rootElement
  )

render(App)

# Webpack Hot Module Replacement API
if module.hot
  module.hot.accept('./App', ->
    render(App)
  )
