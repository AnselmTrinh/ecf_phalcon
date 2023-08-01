<?php
declare(strict_types=1);

namespace ecf_phalcon\modules\frontend\controllers;

use Ecf_phalcon\Models\Client;

class ClientController extends \Phalcon\Mvc\Controller
{

    public function indexAction( )
    {

        $clientsHtml="
<table class='table'>
<thead>
<tr>
<th scope='col'>id</th>
<th scope='col'>raisonsocial</th>
<th scope='col'>ridet</th>
<th scope='col'>ssi2</th>
</tr>
</thead>
<tbody>";

        foreach (Client::find() as $client) {
            $clientsHtml.="<tr>";
            $clientsHtml.="<td>".$client->getId()."</td>";
            $clientsHtml.="<td>".$client->getRaisonSociale()."</td>";
            $clientsHtml.="<td>".$client->getRidet()."</td>";
            $clientsHtml.="<td>".$client->getSsi2()."</td>";
            $clientsHtml.="</tr>";

        }

        $clientsHtml.="</tbody></table>";
        $this->view->setVar('clientsHtml', $clientsHtml);
    }

}