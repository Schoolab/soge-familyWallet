import "bootstrap";

import {sexChoice} from '../components/sexechoice'
if (document.getElementById('membre_sexe_true')){
  console.log('hello')
  sexChoice();
};

import {cardChoice} from '../components/cardchoixe'
if (document.getElementById('badge-mode-3')){
  cardChoice();
};


import {dropDown} from '../components/dropDown'
if (document.getElementById('paiement_roof')) {
  dropDown();
};

import {modePaiement} from '../components/modePaiement'
if (document.getElementById('input-mode')){
  modePaiement();
};

import {datePicker} from '../components/datepicker'
if (document.getElementById('membre_date_picker')){
  console.log("Marcelle")
  datePicker();
};

import {identBancaire} from '../components/identbancaire'
if (document.getElementById('identifiants')){
  console.log("Martial")
  identBancaire();
};

import {materSelect} from '../components/materialise'
if (document.getElementById('paiement_plafond')){
  console.log("Mars")
  materSelect();
};

