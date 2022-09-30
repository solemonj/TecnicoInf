<?php

require_once 'model/categoria.php';

function index() {
    $categorias = selecionar_todas_categorias();
    include 'view/listagem_categoria.php';
}

function adicionar() {
    include "view/formulario_categoria.php";
}

function salvar() {
    
    $dados = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);
    $nome = $dados['nome'];
    
    if (isset($_POST["idcategoria"]) && is_numeric($_POST["idcategoria"])) {
        $id = $_POST["idcategoria"];      
        atualizar_categoria($nome, $id);
    }else{
        inserir_categoria($nome);
    }
    header("Location: index.php?c=categoria");
}

function excluir() {
    if (isset($_GET["id"]) && is_numeric($_GET["id"])) {
        $id = $_GET["id"];
        excluir_categoria($id);
    }
    header("Location: index.php?c=categoria");
}

function editar(){
    if (isset($_GET["id"]) && is_numeric($_GET["id"])) {
        $id = $_GET["id"];
        $categoria = selecionar_categoria_por_id($id);        
        include "view/formulario_categoria.php";
    }
}