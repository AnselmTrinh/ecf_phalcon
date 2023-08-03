<?php

declare(strict_types=1);

namespace ecf_phalcon\modules\frontend\controllers;

use Ecf_phalcon\Models\ChefDeProjet; // Utilisez le modèle ChefDeProjet pour la table "chef_de_projet".

class ChefdeprojetController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
        $chefDeProjetsHtml = "
            <table class='table'>
            <thead>
            <tr>
                <th scope='col'>ID</th>
                <th scope='col'>Boost Production /10</th>
                <th scope='col'>ID Chef de projet</th>
            </tr>
            </thead>
            <tbody>";

        // Récupérer les données des chefs de projet depuis la table "chef_de_projet"
        $chefDeProjets = ChefDeProjet::find();

        foreach ($chefDeProjets as $chefDeProjet) {
            $chefDeProjetsHtml .= "<tr>";
            $chefDeProjetsHtml .= "<td>" . $chefDeProjet->getId() . "</td>";
            $chefDeProjetsHtml .= "<td>" . $chefDeProjet->getBoostProduction() . "</td>";
            $chefDeProjetsHtml .= "<td>" . $chefDeProjet->getIdCollaborateur() . "</td>";
            $chefDeProjetsHtml .= "</tr>";
        }

        $chefDeProjetsHtml .= "</tbody></table>";

        $this->view->chefDeProjetsHtml = $chefDeProjetsHtml;
    }
}
