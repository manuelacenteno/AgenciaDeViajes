<?php
<<<<<<< HEAD
/* Smarty version 3.1.34-dev-7, created on 2020-10-05 21:16:45
=======
/* Smarty version 3.1.34-dev-7, created on 2020-10-03 20:30:30
>>>>>>> 07d5439f71c822388349a9154647fd8cad4e5332
  from 'C:\xampp\htdocs\AgenciadeViajes\templates\mostrarTour.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
<<<<<<< HEAD
  'unifunc' => 'content_5f7b711ddb4c55_67563407',
=======
  'unifunc' => 'content_5f78c3462de047_02709708',
>>>>>>> 07d5439f71c822388349a9154647fd8cad4e5332
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '76bdb850dff9e0f55ef685b91a185bb14978ba92' => 
    array (
      0 => 'C:\\xampp\\htdocs\\AgenciadeViajes\\templates\\mostrarTour.tpl',
<<<<<<< HEAD
      1 => 1601905530,
=======
      1 => 1601743196,
>>>>>>> 07d5439f71c822388349a9154647fd8cad4e5332
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header.tpl' => 1,
    'file:form_tour.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
),false)) {
<<<<<<< HEAD
function content_5f7b711ddb4c55_67563407 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender('file:header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>  

<table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="col">Destino</th>
                <th scope="col">Paquete</th>
                <th scope="col">Itinerario</th>
                <th scope="col">Precio</th>
            </tr>
        </thead>
        <tbody>
=======
function content_5f78c3462de047_02709708 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender('file:header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>  

<?php $_smarty_tpl->_subTemplateRender('file:form_tour.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?> 

    <ul class='list-group'>
>>>>>>> 07d5439f71c822388349a9154647fd8cad4e5332
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['tours']->value, 'tour');
$_smarty_tpl->tpl_vars['tour']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['tour']->value) {
$_smarty_tpl->tpl_vars['tour']->do_else = false;
?>
<<<<<<< HEAD
            <tr>
                <th scope="row"><?php echo $_smarty_tpl->tpl_vars['tour']->value->destinos;?>
</th>
                <td><?php echo $_smarty_tpl->tpl_vars['tour']->value->paquete;?>
</td>
                <td><?php echo $_smarty_tpl->tpl_vars['tour']->value->itinerario;?>
</td>
                <td><?php echo $_smarty_tpl->tpl_vars['tour']->value->precio;?>
</td>
                <td><a class='btn btn-danger btn-sm' href='eliminar/<?php echo $_smarty_tpl->tpl_vars['tour']->value->id;?>
'>Eliminar</a></td>
            </tr>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>    
        </tbody>
    </table>

   <?php $_smarty_tpl->_subTemplateRender('file:form_tour.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?> 
=======
            <li class='list-group-item'><?php echo $_smarty_tpl->tpl_vars['tour']->value->destinos;?>
 | <?php echo $_smarty_tpl->tpl_vars['tour']->value->paquete;?>
 |<?php echo $_smarty_tpl->tpl_vars['tour']->value->itinerario;?>
|<?php echo $_smarty_tpl->tpl_vars['tour']->value->precio;?>
 </li>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    </ul>
   
>>>>>>> 07d5439f71c822388349a9154647fd8cad4e5332
<?php $_smarty_tpl->_subTemplateRender('file:footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
