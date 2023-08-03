<?php
declare(strict_types=1);

namespace ecf_phalcon\modules\frontend\controllers;

use Ecf_phalcon\Models\Application; // Utilisez le modèle Application pour la table "application".

class ApplicationController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
        $applicationsHtml = "
            <table class='table'>
            <thead>
            <tr>
                <th scope='col'>ID</th>
                <th scope='col'>Nom</th>
            </tr>
            </thead>
            <tbody>";

        // Récupérer les données des applications depuis la table "application"
        $applications = Application::find();

        foreach ($applications as $application) {
            $applicationsHtml .= "<tr>";
            $applicationsHtml .= "<td>" . $application->getId() . "</td>";
            $applicationsHtml .= "<td>" . $application->getNom() . "</td>";
            $applicationsHtml .= "</tr>";
        }

        $applicationsHtml .= "</tbody></table>";

        $this->view->applicationsHtml = $applicationsHtml;
    }
}
