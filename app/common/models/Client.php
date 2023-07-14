<?php

class Client extends \Phalcon\Mvc\Model
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
     * @Column(column="raison_sociale", type="string", length=50, nullable=false)
     */
    protected $raison_sociale;

    /**
     *
     * @var string
     * @Column(column="ridet", type="string", length=10, nullable=false)
     */
    protected $ridet;

    /**
     *
     * @var integer
     * @Column(column="ssi2", type="integer", length=1, nullable=true)
     */
    protected $ssi2;

    /**
     *
     * @var integer
     * @Column(column="command", type="integer", nullable=false)
     */
    protected $command;

    /**
     *
     * @var string
     * @Column(column="name", type="string", length=50, nullable=true)
     */
    protected $name;

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
     * Method to set the value of field raison_sociale
     *
     * @param string $raison_sociale
     * @return $this
     */
    public function setRaisonSociale($raison_sociale)
    {
        $this->raison_sociale = $raison_sociale;

        return $this;
    }

    /**
     * Method to set the value of field ridet
     *
     * @param string $ridet
     * @return $this
     */
    public function setRidet($ridet)
    {
        $this->ridet = $ridet;

        return $this;
    }

    /**
     * Method to set the value of field ssi2
     *
     * @param integer $ssi2
     * @return $this
     */
    public function setSsi2($ssi2)
    {
        $this->ssi2 = $ssi2;

        return $this;
    }

    /**
     * Method to set the value of field command
     *
     * @param integer $command
     * @return $this
     */
    public function setCommand($command)
    {
        $this->command = $command;

        return $this;
    }

    /**
     * Method to set the value of field name
     *
     * @param string $name
     * @return $this
     */
    public function setName($name)
    {
        $this->name = $name;

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
     * Returns the value of field raison_sociale
     *
     * @return string
     */
    public function getRaisonSociale()
    {
        return $this->raison_sociale;
    }

    /**
     * Returns the value of field ridet
     *
     * @return string
     */
    public function getRidet()
    {
        return $this->ridet;
    }

    /**
     * Returns the value of field ssi2
     *
     * @return integer
     */
    public function getSsi2()
    {
        return $this->ssi2;
    }

    /**
     * Returns the value of field command
     *
     * @return integer
     */
    public function getCommand()
    {
        return $this->command;
    }

    /**
     * Returns the value of field name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("webappsealler");
        $this->setSource("client");
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Client[]|Client|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null): \Phalcon\Mvc\Model\ResultsetInterface
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Client|\Phalcon\Mvc\Model\ResultInterface|\Phalcon\Mvc\ModelInterface|null
     */
    public static function findFirst($parameters = null): ?\Phalcon\Mvc\ModelInterface
    {
        return parent::findFirst($parameters);
    }

}
