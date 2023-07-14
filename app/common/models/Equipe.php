<?php

class Equipe extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(column="id", type="integer", nullable=false)
     */
    protected $id;

    /**
     *
     * @var string
     * @Column(column="nom", type="string", length=10, nullable=false)
     */
    protected $nom;

    /**
     *
     * @var integer
     * @Column(column="id_chef_de_projet", type="integer", nullable=false)
     */
    protected $id_chef_de_projet;

    /**
     *
     * @var integer
     * @Column(column="id_developpement", type="integer", nullable=false)
     */
    protected $id_developpement;

    /**
     * Method to set the value of field id
     *
     * @param integer $id
     * @return $this
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Method to set the value of field nom
     *
     * @param string $nom
     * @return $this
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Method to set the value of field id_chef_de_projet
     *
     * @param integer $id_chef_de_projet
     * @return $this
     */
    public function setIdChefDeProjet($id_chef_de_projet)
    {
        $this->id_chef_de_projet = $id_chef_de_projet;

        return $this;
    }

    /**
     * Method to set the value of field id_developpement
     *
     * @param integer $id_developpement
     * @return $this
     */
    public function setIdDeveloppement($id_developpement)
    {
        $this->id_developpement = $id_developpement;

        return $this;
    }

    /**
     * Returns the value of field id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Returns the value of field nom
     *
     * @return string
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Returns the value of field id_chef_de_projet
     *
     * @return integer
     */
    public function getIdChefDeProjet()
    {
        return $this->id_chef_de_projet;
    }

    /**
     * Returns the value of field id_developpement
     *
     * @return integer
     */
    public function getIdDeveloppement()
    {
        return $this->id_developpement;
    }

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("webappsealler");
        $this->setSource("equipe");
        $this->hasMany('id', 'EquipeBase', 'id_equipe', ['alias' => 'EquipeBase']);
        $this->belongsTo('id_chef_de_projet', '\ChefDeProjet', 'id', ['alias' => 'ChefDeProjet']);
        $this->belongsTo('id_developpement', '\Developpement', 'id', ['alias' => 'Developpement']);
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Equipe[]|Equipe|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null): \Phalcon\Mvc\Model\ResultsetInterface
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Equipe|\Phalcon\Mvc\Model\ResultInterface|\Phalcon\Mvc\ModelInterface|null
     */
    public static function findFirst($parameters = null): ?\Phalcon\Mvc\ModelInterface
    {
        return parent::findFirst($parameters);
    }

}
