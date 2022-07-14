<?php

namespace App\Entity;

use App\Repository\CondidatRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=CondidatRepository::class)
 */
class Condidat
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $numcode;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNumcode(): ?string
    {
        return $this->numcode;
    }

    public function setNumcode(string $numcode): self
    {
        $this->numcode = $numcode;

        return $this;
    }
}
