// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import "@hotwired/turbo-rails"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

require("jquery")


import '../stylesheets/application'
import 'materialize-css/dist/js/materialize'

Rails.start()
ActiveStorage.start()

import "controllers"


$(document).on("turbo:frame-render", () => {
  init_material_select()
})

$(document).on("turbo:render", () => {
  console.log('ok')
  init_material_select()
})

$(document).on("turbo:load", () => {
  init_material_select()
})

$(document).on("turbo:before-cache", () => {
  $('select').formSelect('destroy')
});

function init_material_select() {
  $('.dropdown-trigger').dropdown();
  $('select').formSelect()
  M.updateTextFields()
}

// ===============================
