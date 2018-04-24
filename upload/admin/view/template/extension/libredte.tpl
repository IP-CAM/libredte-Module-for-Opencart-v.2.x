<?=$header?><?=$column_left?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-product" data-toggle="tooltip" title="<?=$button_save?>" class="btn btn-primary" onclick="formulario_submit()">
                    <i class="fa fa-save"></i>
                </button>
            </div>
            <h1><?=$heading_title?></h1>
            <ul class="breadcrumb">
<?php foreach ($breadcrumbs as $breadcrumb) : ?>
                <li><a href="<?=$breadcrumb['href']?>"><?=$breadcrumb['text']?></a></li>
<?php endforeach; ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
<?php if (!empty($error_warning)) : ?>
        <div class="alert alert-danger">
            <i class="fa fa-exclamation-circle"></i>
            <?=$error_warning?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
<?php endif; ?>
<?php if (!empty($success)) : ?>
        <div class="alert alert-success">
            <i class="fa fa-check-circle"></i>
            <?=$success?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
<?php endif; ?>
        <ul class="nav nav-pills" style="margin-bottom:1em">
            <li role="presentation"><a href="<?=$enlace_dte?>" target="_blank">Módulo facturación</a></li>
            <li role="presentation" class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    Documentos <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="<?=$enlace_emitir?>" target="_blank">Emitir documento manual</a></li>
                    <li><a href="<?=$enlace_temporales?>" target="_blank">Documentos temporales</a></li>
                    <li><a href="<?=$enlace_emitidos?>" target="_blank">Documentos emitidos</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="<?=$enlace_recibidos?>" target="_blank">Documentos recibidos</a></li>
                    <li><a href="<?=$enlace_intercambio?>" target="_blank">Bandeja de intercambio</a></li>
                </ul>
            </li>
            <li role="presentation" class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    Libros <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="<?=$enlace_ventas?>" target="_blank">Libro de ventas</a></li>
                    <li><a href="<?=$enlace_compras?>" target="_blank">Libro de compras</a></li>
                </ul>
            </li>
            <li role="presentation" class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    Administración <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="<?=$enlace_folios?>" target="_blank">Folios (CAF)</a></li>
                    <li><a href="<?=$enlace_firma?>" target="_blank">Firma electrónica</a></li>
                    <li><a href="<?=$enlace_contribuyente?>" target="_blank">Editar contribuyente</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="<?=$enlace_perfil?>" target="_blank">Perfil de usuario</a></li>
                </ul>
            </li>
        </ul>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-file-o"></i> <?=$heading_title?></h3>
            </div>
            <div class="panel-body">
                <form method="post" id="formulario" class="form-horizontal">
                    <div class="form-group required">
                        <label class="col-sm-2 control-label">
                            <span data-toggle="tooltip" title="Dirección web con la ubicación de la aplicación de LibreDTE">URL LibreDTE</span>
                        </label>
                        <div class="col-sm-10">
                            <input type="text" name="libredte_url" value="<?=$libredte_url?>" class="form-control" placeholder="https://libredte.sasco.cl" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label">
                            <span data-toggle="tooltip" title="RUT del contribuyente asociado a esta tienda">RUT contribuyente</span>
                        </label>
                        <div class="col-sm-10">
                            <input type="text" name="libredte_contribuyente" value="<?=$libredte_contribuyente?>" class="form-control" placeholder="55.666.777-8" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label">
                            <span data-toggle="tooltip" title="Hash del usuario en LibreDTE para preautenticación">Hash usuario</span>
                        </label>
                        <div class="col-sm-10">
                            <input type="text" name="libredte_preauth_hash" value="<?=$libredte_preauth_hash?>" id="libredte_preauth_hash" class="form-control" maxlength="32" onblur="preauth_check()" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label">
                            <span data-toggle="tooltip" title="Campo que se usará como código del producto">Producto código</span>
                        </label>
                        <div class="col-sm-10">
                            <select name="libredte_producto_codigo" class="form-control">
<?php foreach($producto_codigos as $codigo) : ?>
                                <option value="<?=$codigo?>"<?=(($codigo==$libredte_producto_codigo)?' selected="selected"':'')?>><?=$codigo?></option>
<?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label">
                            <span data-toggle="tooltip" title="ID del campo que es el RUT del cliente">Cliente RUT</span>
                        </label>
                        <div class="col-sm-10">
                            <input type="text" name="libredte_cliente_rut" value="<?=$libredte_cliente_rut?>" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label">
                            <span data-toggle="tooltip" title="ID del campo que es el giro del cliente">Cliente giro</span>
                        </label>
                        <div class="col-sm-10">
                            <input type="text" name="libredte_cliente_giro" value="<?=$libredte_cliente_giro?>" class="form-control" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <p><a href="http://libredte.cl" target="_blank">LibreDTE</a> es un proyecto de <a href="https://sasco.cl" target="_blank">SASCO SpA</a> que tiene como misión proveer de facturación electrónica libre para Chile.</p>
    </div>
<script type="text/javascript">
function formulario_submit() {
    preauth_check();
    document.getElementById('formulario').submit();
}
function preauth_check() {
    if ($('#libredte_preauth_hash').val() && $('#libredte_preauth_hash').val().length!=32) {
        alert('Hash del usuario debe ser de 32 caracteres');
        $('#libredte_preauth_hash').focus();
        $('#libredte_preauth_hash').select();
        return false;
    }
}
</script>
</div>
<?=$footer?>
