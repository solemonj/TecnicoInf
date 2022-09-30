<?php include "./view/template_header.php" ?>      
<?php include "./view/template_menu1.php" ?> 

<div class="container">
          <div class="row mt-4">
              <div class="col-6">
                  <h1>Listagem de Categorias</h1>
              </div>
              <div class="col-6 text-end">
                  <a href="index.php?c=categoria&m=adicionar" class="btn btn-success">Adicionar Categoria</a>
              </div>
          </div>
          
          <hr>
          
          <table class="table">
              <thead>
                  <tr>
                      <th>Nome</th>                      
                      <th>Ações</th>
                  </tr>
              </thead>
              <tbody>
                  <?php foreach($categorias as $categoria): ?>
                  <tr>
                      <td class="w-25"><?php echo $categoria->nome ?></td>
                      
                      <td class="text-end">
                          <a href="index.php?c=categoria&m=excluir&id=<?php echo $categoria->idcategoria ?>" class="btn btn-danger">Excluir</a>
                          <a href="index.php?c=categoria&m=editar&id=<?php echo $categoria->idcategoria ?>" class="btn btn-primary">Atualizar</a>
                      </td>
                  </tr>
                 <?php endforeach; ?>
              </tbody>
          </table>
      </div>
      
 <?php include "./view/template_rodape.php" ?>
      