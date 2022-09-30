<?php include "./view/template_header.php" ?>      
<?php include "./view/template_menu1.php" ?> 

      <div class="container">
          <h1 class="mt-4">Cadastro de Categorias</h1>
          <hr>
          <form method="post" action="index.php?c=categoria&m=salvar">
              
              <div class="mb-3">
                  <label for="nome" class="form-label">Nome</label>
                  <input type="text" name="nome" id="nome" class="form-control" value="<?php echo isset($categoria) ? $categoria->nome : "" ?>">
              </div>
                            
              
              <input  type="hidden" name="idcategoria" value="<?php echo isset($categoria) ? $categoria->idcategoria : "" ?>">
              <button type="submit" class="btn btn-primary">Cadastrar</button>
              
          </form>
      </div>
  <?php include "./view/template_rodape.php" ?>
