import "bootstrap";

import {sexChoice} from '../components/sexechoice'
if (document.getElementById('membre_sexe_true')){
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
