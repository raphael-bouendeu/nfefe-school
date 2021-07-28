// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from '@rails/ujs'
import * as ActiveStorage from '@rails/activestorage'
import 'channels'
import '../stylesheets/application'
import 'materialize-css/dist/js/materialize'
require('jquery')
global.toastr = require('toastr')
require('packs/jquery.raty')
require('packs/jquery.timeago')

Rails.start()
ActiveStorage.start()

import $ from 'jquery'
window.jQuery = $
window.$ = $

jQuery(window).on('load', function () {
  $('.sidenav').sidenav()
  $('.dropdown-trigger').dropdown()

})
