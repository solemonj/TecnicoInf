<?php

  include 'db/conexao.php';
 
  function inserir_categoria($nome){
      global $link;
      $comando = $link->prepare("INSERT INTO categoria (nome) VALUE (?)");     
      $comando->bind_param("s", $nome);      
      return $comando->execute();
  }
  
  function atualizar_categoria($nome, $idcategoria){
      global $link;
      $comando = $link->prepare("UPDATE categoria SET `nome`= ?  WHERE  `idcategoria`= ?");
      $comando->bind_param("si", $nome, $idcategoria);
      return $comando->execute();
  }
  
  function excluir_categoria($idcategoria){
      global $link;
      $comando = $link->prepare("DELETE FROM categoria WHERE idcategoria = ?");
      $comando->bind_param("i", $idcategoria);
      return $comando->execute();
  }
  
  function selecionar_categoria_por_id($idcategoria){
      global $link;
      $comando = $link->prepare("SELECT * FROM categoria WHERE idcategoria = ?");
      $comando->bind_param("i", $idcategoria);
      $comando->execute();
      $resultado = $comando->get_result();
      return $resultado->fetch_object();
  }
 
    
   function selecionar_todas_categorias(){
      global $link;  
      $comando = $link->prepare("SELECT * FROM categoria");
      $comando->execute();
      $resultado = $comando->get_result();
      while($p = $resultado->fetch_object()){
          $categorias[] = $p;
      }
      return $categorias;
  }
