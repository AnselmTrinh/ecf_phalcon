<?php
declare(strict_types=1);

namespace ecf_phalcon\modules\frontend\controllers;

use Ecf_phalcon\Models\Client;
use Phalcon\Http\Request;

class ClientController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    {
        $clientsHtml = "
            <table class='table'>
            <thead>
            <tr>
                <th scope='col'>ID</th>
                <th scope='col'>Raison sociale</th>
                <th scope='col'>Ridet</th>
                <th scope='col'>Ssi2</th>
                <th scope='col'>Actions</th>
            </tr>
            </thead>
            <tbody>";

        $clients = Client::find();

        foreach ($clients as $client) {
            $clientsHtml .= "<tr>";
            $clientsHtml .= "<td>" . $client->getId() . "</td>";
            $clientsHtml .= "<td>" . $client->getRaisonSociale() . "</td>";
            $clientsHtml .= "<td>" . $client->getRidet() . "</td>";
            $clientsHtml .= "<td>" . $client->getSsi2() . "</td>";
            $clientsHtml .= "<td>
            <a href='" . $this->url->get('client' . $client->getId()) . "'>Supprimer</a>
            <a href='" . $this->url->get('client' . $client->getId()) . "'>Modifier</a>
            </td>";
            $clientsHtml .= "</tr>";
        }

        $clientsHtml .= "</tbody></table>";


        $clientsHtml .= "<a href='" . $this->url->get('/ecf_phalcon/client/create') . "'>Ajouter un client</a>";

        $this->view->clientsHtml = $clientsHtml;
    }

    public function createAction()
    {
        if ($this->request->isPost()) {
            $client = new Client();
            $client->setRaisonSociale($this->request->getPost('raison_sociale'));
            $client->setRidet($this->request->getPost('ridet'));
            $client->setSsi2($this->request->getPost('ssi2'));

            if ($this->saveClient($client)) {
                $this->response->redirect('/ecf_phalcon/client');
            } else {
            }
        } else {

        }
    }

    private function saveClient(Client $client)
    {
        try {
            return $client->save();
        } catch (\Exception $e) {
            return false;
        }
    }
}

