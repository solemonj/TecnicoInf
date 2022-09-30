<?php

  include 'db/conexao.php';
 
  function inserir_produto($nome, $descricao, $marca, $preco, $foto, $categoria){
      global $link;
      $comando = $link->prepare("INSERT INTO produto (nome, descricao, marca, "
              . " preco, foto, categoria_idcategoria) VALUE (?, ?, ?, ?, ?, ?)");
      
      $comando->bind_param("sssdsi", $nome, $descricao, $marca, $preco, $foto, $categoria);
      
      return $comando->execute();
  }
  
  function atualizar_produto($nome, $descricao, $marca, $preco, $foto, $categoria, $idproduto){
      global $link;
      $comando = $link->prepare("UPDATE produto SET `nome`= ?, `descricao`= ?, `marca`= ?, `preco`= ?, `foto`= ?, `categoria_idcategoria`= ? WHERE  `idproduto`= ?");
      $comando->bind_param("sssdsii", $nome, $descricao, $marca, $preco, $foto, $categoria, $idproduto);
      return $comando->execute();
  }
  
  function excluir_produto($idproduto){
      global $link;
      $comando = $link->prepare("DELETE FROM produto WHERE idproduto = ?");
      $comando->bind_param("i", $idproduto);
      return $comando->execute();
  }
  
  function selecionar_produto_por_id($idproduto){
      global $link;
      $comando = $link->prepare("SELECT * FROM produto WHERE idproduto = ?");
      $comando->bind_param("i", $idproduto);
      $comando->execute();
      $resultado = $comando->get_result();
      return $resultado->fetch_object();
  }
 
    
   function selecionar_todos_produto(){
      global $link;  
      $comando = $link->prepare("SELECT produto.*, categoria.nome as categoria FROM produto "
              . " inner join categoria on produto.categoria_idcategoria = categoria.idcategoria");
      $comando->execute();
      $resultado = $comando->get_result();
      while($p = $resultado->fetch_object()){
          $produtos[] = $p;
      }
      return $produtos;
  }
