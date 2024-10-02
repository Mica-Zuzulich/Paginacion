<?php

include_once 'db.php';

class Peliculas extends DB{

    private $paginaActual;
    private $totalPaginas;
    private $nResultados;
    private $resultadosPorPagina;
    private $indice;

    function __construct($nPorPagina){
        parent::__construct();

        $this->resultadosPorPagina = $nPorPagina;
        $this->indice = 0;
        $this->paginaActual = 1;

        $this->calcularPaginas();
    }

    function mostrarPeliculas(){
        $query = $this->connect()->prepare('SELECT * FROM pelicula LIMIT :pos, :n');    
        $query->bindParam(':pos', $this->indice, PDO::PARAM_INT);
        $query->bindParam(':n', $this->resultadosPorPagina, PDO::PARAM_INT);
        $query->execute();
        foreach ($query as $pelicula) {
            include 'vistas-peliculas.php';
        }
    }

    function calcularPaginas(){
        $queryTotalResultados = $this->connect()->query('SELECT COUNT(*) AS total FROM pelicula');
        $this->nResultados = $queryTotalResultados->fetch(PDO::FETCH_OBJ)->total; 
        $this->totalPaginas = round($this->nResultados / $this->resultadosPorPagina);

        if(isset($_GET['pagina'])){
            $this->paginaActual = $_GET['pagina'];
            $this->indice = ($this->paginaActual - 1) * $this->resultadosPorPagina;
        }
    }

    function mostrarPaginas(){
        $actual = '';
        echo "<ul>";

        for($i=0; $i < $this->totalPaginas; $i++){
            if(($i + 1) == $this->paginaActual){
                $actual = ' class="actual" ';
            }else{
                $actual = '';
            }
            echo '<li><a ' .$actual . 'href="?pagina='. ($i + 1). '">'. ($i + 1) . '</a></li>';
        }
        echo "</ul>";
    }
}

?>