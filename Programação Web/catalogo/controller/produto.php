<?php

require_once 'model/produto.php';
require_once 'model/categoria.php';
require_once 'util/upload.php';

function index() {
    $produtos = selecionar_todos_produto();
    include 'view/listagem_produto.php';
}

function adicionar() {
    $categorias = selecionar_todas_categorias();
    include "view/formulario_produto.php";
}

function salvar() {
    
    $dados = filter_input_array(INPUT_POST, FILTER_SANITIZE_SPECIAL_CHARS);
    $nome = $dados['nome'];
    $descricao = $dados['descricao'];
    $marca = $dados['marca'];
    $preco = $dados['preco'];
    $categoria = $dados['categoria'];
    $nome_foto = $dados['name_foto'];
    
    $foto = upload("foto");
    if (!$foto) {
        $foto = $nome_foto;
    }
    
    if (isset($_POST["idproduto"]) && is_numeric($_POST["idproduto"])) {
        $id = $_POST["idproduto"];      
        atualizar_produto($nome, $descricao, $marca, $preco, $foto, $categoria, $id);
    }else{
        inserir_produto($nome, $descricao, $marca, $preco, $foto, $categoria);
    }
    header("Location: index.php?c=produto");
}

function excluir() {
    if (isset($_GET["id"]) && is_numeric($_GET["id"])) {
        $id = $_GET["id"];
        excluir_produto($id);
    }
    header("Location: index.php?c=produto");
}

function editar(){
    if (isset($_GET["id"]) && is_numeric($_GET["id"])) {
        $id = $_GET["id"];
        $categorias = selecionar_todas_categorias();
        $produto = selecionar_produto_por_id($id);        
        include "view/formulario_produto.php";
    }
}