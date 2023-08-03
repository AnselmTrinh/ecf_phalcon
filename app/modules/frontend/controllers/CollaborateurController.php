<?php
declare(strict_types=1);

namespace ecf_phalcon\modules\frontend\controllers;

use Ecf_phalcon\Models\Collaborateur;
use Phalcon\Http\Request;

class CollaborateurController extends \Phalcon\Mvc\Controller
{
    public function indexAction()
    {
        $collaborateursHtml = "
<table class='table'>
    <thead>
    <tr>
        <th scope='col'>ID</th>
        <th scope='col'>Nom et Prénom</th>
        <th scope='col'>Niveau de compétence</th>
        <th scope='col'>Prime d'embauche</th>
        <th scope='col'>Actions</th>
    </tr>
    </thead>
    <tbody>";

        // Récupérer les données des collaborateurs depuis la table "collaborateur"
        $collaborateurs = Collaborateur::find();

        foreach ($collaborateurs as $collaborateur) {
            $collaborateursHtml .= "<tr>";
            $collaborateursHtml .= "<td>" . $collaborateur->getId() . "</td>";
            $collaborateursHtml .= "<td>" . $collaborateur->getNameLastname() . "</td>";
            $collaborateursHtml .= "<td>" . $collaborateur->getNiveauCompetence() . "</td>";
            $collaborateursHtml .= "<td>" . $collaborateur->getPrimeEmbauche() . "</td>";
            $collaborateursHtml .= "<td>
        </td>";
            $collaborateursHtml .= "</tr>";
        }

        $collaborateursHtml .= "</tbody></table>";

        $this->view->collab = $collaborateursHtml;
    }
}
