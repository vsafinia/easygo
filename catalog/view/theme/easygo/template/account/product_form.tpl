<?php echo $header; ?>
<div class="container">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
    <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
    <?php } ?>
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
            <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>


    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-product" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
            <h1><?php echo $heading_title; ?></h1>

        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        <?php } ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-product" class="form-horizontal">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
                        <li><a href="#tab-data" data-toggle="tab"><?php echo $tab_data; ?></a></li>
                        <li><a href="#tab-links" data-toggle="tab"><?php echo $tab_links; ?></a></li>
                        <!--            <li><a href="#tab-attribute" data-toggle="tab">--><?php //echo $tab_attribute; ?><!--</a></li>-->
                        <!--            <li><a href="#tab-option" data-toggle="tab">--><?php //echo $tab_option; ?><!--</a></li>-->
                        <!--            <li><a href="#tab-recurring" data-toggle="tab">--><?php //echo $tab_recurring; ?><!--</a></li>-->
                        <!--            <li><a href="#tab-discount" data-toggle="tab">--><?php //echo $tab_discount; ?><!--</a></li>-->
                        <?php if($type=='Agent'){?>
                        <li><a href="#tab-special" data-toggle="tab"><?php echo $tab_special; ?></a></li>
                        <?php } ?>
                        <li><a href="#tab-image" data-toggle="tab"><?php echo $tab_image; ?></a></li>
                        <!--            <li><a href="#tab-reward" data-toggle="tab">--><?php //echo $tab_reward; ?><!--</a></li>-->
                        <!--            <li><a href="#tab-design" data-toggle="tab">--><?php //echo $tab_design; ?><!--</a></li>-->
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-general">
                            <ul class="nav nav-tabs" id="language">
                                <?php foreach ($languages as $language) { ?>
                                    <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                                <?php } ?>
                            </ul>
                            <div class="tab-content">
                                <?php foreach ($languages as $language) { ?>
                                    <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                                        <div class="form-group required">
                                            <label class="col-sm-2 control-label" for="input-name<?php echo $language['language_id']; ?>"><?php echo $entry_name; ?></label>
                                            <div class="col-sm-10">
                                                <input type="text" name="product_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name<?php echo $language['language_id']; ?>" class="form-control" />
                                                <?php if (isset($error_name[$language['language_id']])) { ?>
                                                    <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="input-description<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
                                            <div class="col-sm-10">
                                                <textarea rows="10" name="product_description[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description<?php echo $language['language_id']; ?>" class="form-control summernote"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['description'] : ''; ?></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group required">
                                            <label class="col-sm-2 control-label" for="input-meta-title<?php echo $language['language_id']; ?>"><?php echo $entry_meta_title; ?></label>
                                            <div class="col-sm-10">
                                                <input type="text" name="product_description[<?php echo $language['language_id']; ?>][meta_title]" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['meta_title'] : ''; ?>" placeholder="<?php echo $entry_meta_title; ?>" id="input-meta-title<?php echo $language['language_id']; ?>" class="form-control" />
                                                <?php if (isset($error_meta_title[$language['language_id']])) { ?>
                                                    <div class="text-danger"><?php echo $error_meta_title[$language['language_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <div class="form-group hidden">
                                            <label class="col-sm-2 control-label" for="input-meta-description<?php echo $language['language_id']; ?>"><?php echo $entry_meta_description; ?></label>
                                            <div class="col-sm-10">
                                                <textarea name="product_description[<?php echo $language['language_id']; ?>][meta_description]" rows="5" placeholder="<?php echo $entry_meta_description; ?>" id="input-meta-description<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['meta_description'] : ''; ?></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group hidden">
                                            <label class="col-sm-2 control-label" for="input-meta-keyword<?php echo $language['language_id']; ?>"><?php echo $entry_meta_keyword; ?></label>
                                            <div class="col-sm-10">
                                                <textarea name="product_description[<?php echo $language['language_id']; ?>][meta_keyword]" rows="5" placeholder="<?php echo $entry_meta_keyword; ?>" id="input-meta-keyword<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['meta_keyword'] : ''; ?></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group hidden">
                                            <label class="col-sm-2 control-label" for="input-tag<?php echo $language['language_id']; ?>"><span data-toggle="tooltip" title="<?php echo $help_tag; ?>"><?php echo $entry_tag; ?></span></label>
                                            <div class="col-sm-10">
                                                <input type="text" name="product_description[<?php echo $language['language_id']; ?>][tag]" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['tag'] : ''; ?>" placeholder="<?php echo $entry_tag; ?>" id="input-tag<?php echo $language['language_id']; ?>" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab-data">
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-model"><?php echo $entry_model; ?></label>
                                <div class="col-sm-10">
                                    <input type="text" name="model" value="<?php echo $model; ?>" placeholder="<?php echo $entry_model; ?>" id="input-model" class="form-control" />
                                    <?php if ($error_model) { ?>
                                        <div class="text-danger"><?php echo $error_model; ?></div>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-sku"><span data-toggle="tooltip" title="<?php echo $help_sku; ?>"><?php echo $entry_sku; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="sku" value="<?php echo $sku; ?>" placeholder="<?php echo $entry_sku; ?>" id="input-sku" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-upc"><span data-toggle="tooltip" title="<?php echo $help_upc; ?>"><?php echo $entry_upc; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="upc" value="<?php echo $upc; ?>" placeholder="<?php echo $entry_upc; ?>" id="input-upc" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-ean"><span data-toggle="tooltip" title="<?php echo $help_ean; ?>"><?php echo $entry_ean; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="ean" value="<?php echo $ean; ?>" placeholder="<?php echo $entry_ean; ?>" id="input-ean" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-jan"><span data-toggle="tooltip" title="<?php echo $help_jan; ?>"><?php echo $entry_jan; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="jan" value="<?php echo $jan; ?>" placeholder="<?php echo $entry_jan; ?>" id="input-jan" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-isbn"><span data-toggle="tooltip" title="<?php echo $help_isbn; ?>"><?php echo $entry_isbn; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="isbn" value="<?php echo $isbn; ?>" placeholder="<?php echo $entry_isbn; ?>" id="input-isbn" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-mpn"><span data-toggle="tooltip" title="<?php echo $help_mpn; ?>"><?php echo $entry_mpn; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="mpn" value="<?php echo $mpn; ?>" placeholder="<?php echo $entry_mpn; ?>" id="input-mpn" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-location"><?php echo $entry_location; ?></label>
                                <div class="col-sm-10">
                                    <input type="text" name="location" value="<?php echo $location; ?>" placeholder="<?php echo $entry_location; ?>" id="input-location" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-price"><?php echo $entry_price; ?></label>
                                <div class="col-sm-10">
                                    <input type="text" name="price" value="<?php echo $price; ?>" placeholder="<?php echo $entry_price; ?>" id="input-price" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-tax-class"><?php echo $entry_tax_class; ?></label>
                                <div class="col-sm-10">
                                    <select name="tax_class_id" id="input-tax-class" class="form-control">
                                        <option value="0"><?php echo $text_none; ?></option>
                                        <?php foreach ($tax_classes as $tax_class) { ?>
                                            <?php if ($tax_class['tax_class_id'] == $tax_class_id) { ?>
                                                <option value="<?php echo $tax_class['tax_class_id']; ?>" selected="selected"><?php echo $tax_class['title']; ?></option>
                                            <?php } else { ?>
                                                <option value="<?php echo $tax_class['tax_class_id']; ?>"><?php echo $tax_class['title']; ?></option>
                                            <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-quantity"><?php echo $entry_quantity; ?></label>
                                <div class="col-sm-10">
                                    <input type="text" name="quantity" value="<?php echo $quantity; ?>" placeholder="<?php echo $entry_quantity; ?>" id="input-quantity" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-minimum"><span data-toggle="tooltip" title="<?php echo $help_minimum; ?>"><?php echo $entry_minimum; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="minimum" value="<?php echo $minimum; ?>" placeholder="<?php echo $entry_minimum; ?>" id="input-minimum" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-subtract"><?php echo $entry_subtract; ?></label>
                                <div class="col-sm-10">
                                    <select name="subtract" id="input-subtract" class="form-control">
                                        <?php if ($subtract) { ?>
                                            <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                                            <option value="0"><?php echo $text_no; ?></option>
                                        <?php } else { ?>
                                            <option value="1"><?php echo $text_yes; ?></option>
                                            <option value="0" selected="selected"><?php echo $text_no; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-stock-status"><span data-toggle="tooltip" title="<?php echo $help_stock_status; ?>"><?php echo $entry_stock_status; ?></span></label>
                                <div class="col-sm-10">
                                    <select name="stock_status_id" id="input-stock-status" class="form-control">
                                        <?php foreach ($stock_statuses as $stock_status) { ?>
                                            <?php if ($stock_status['stock_status_id'] == $stock_status_id) { ?>
                                                <option value="<?php echo $stock_status['stock_status_id']; ?>" selected="selected"><?php echo $stock_status['name']; ?></option>
                                            <?php } else { ?>
                                                <option value="<?php echo $stock_status['stock_status_id']; ?>"><?php echo $stock_status['name']; ?></option>
                                            <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label"><?php echo $entry_shipping; ?></label>
                                <div class="col-sm-10">
                                    <label class="radio-inline">
                                        <?php if ($shipping) { ?>
                                            <input type="radio" name="shipping" value="1" checked="checked" />
                                            <?php echo $text_yes; ?>
                                        <?php } else { ?>
                                            <input type="radio" name="shipping" value="1" />
                                            <?php echo $text_yes; ?>
                                        <?php } ?>
                                    </label>
                                    <label class="radio-inline">
                                        <?php if (!$shipping) { ?>
                                            <input type="radio" name="shipping" value="0" checked="checked" />
                                            <?php echo $text_no; ?>
                                        <?php } else { ?>
                                            <input type="radio" name="shipping" value="0" />
                                            <?php echo $text_no; ?>
                                        <?php } ?>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-keyword"><span data-toggle="tooltip" title="<?php echo $help_keyword; ?>"><?php echo $entry_keyword; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="keyword" value="<?php echo $keyword; ?>" placeholder="<?php echo $entry_keyword; ?>" id="input-keyword" class="form-control" />
                                    <?php if ($error_keyword) { ?>
                                        <div class="text-danger"><?php echo $error_keyword; ?></div>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-date-available"><?php echo $entry_date_available; ?></label>
                                <div class="col-sm-3">
                                    <div class="input-group date">
                                        <input type="text" name="date_available" value="<?php echo $date_available; ?>" placeholder="<?php echo $entry_date_available; ?>" data-date-format="YYYY-MM-DD" id="input-date-available" class="form-control" />
                    <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                    </span></div>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-length"><?php echo $entry_dimension; ?></label>
                                <div class="col-sm-10">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <input type="text" name="length" value="<?php echo $length; ?>" placeholder="<?php echo $entry_length; ?>" id="input-length" class="form-control" />
                                        </div>
                                        <div class="col-sm-4">
                                            <input type="text" name="width" value="<?php echo $width; ?>" placeholder="<?php echo $entry_width; ?>" id="input-width" class="form-control" />
                                        </div>
                                        <div class="col-sm-4">
                                            <input type="text" name="height" value="<?php echo $height; ?>" placeholder="<?php echo $entry_height; ?>" id="input-height" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-length-class"><?php echo $entry_length_class; ?></label>
                                <div class="col-sm-10">
                                    <select name="length_class_id" id="input-length-class" class="form-control">
                                        <?php foreach ($length_classes as $length_class) { ?>
                                            <?php if ($length_class['length_class_id'] == $length_class_id) { ?>
                                                <option value="<?php echo $length_class['length_class_id']; ?>" selected="selected"><?php echo $length_class['title']; ?></option>
                                            <?php } else { ?>
                                                <option value="<?php echo $length_class['length_class_id']; ?>"><?php echo $length_class['title']; ?></option>
                                            <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-weight"><?php echo $entry_weight; ?></label>
                                <div class="col-sm-10">
                                    <input type="text" name="weight" value="<?php echo $weight; ?>" placeholder="<?php echo $entry_weight; ?>" id="input-weight" class="form-control" />
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-weight-class"><?php echo $entry_weight_class; ?></label>
                                <div class="col-sm-10">
                                    <select name="weight_class_id" id="input-weight-class" class="form-control">
                                        <?php foreach ($weight_classes as $weight_class) { ?>
                                            <?php if ($weight_class['weight_class_id'] == $weight_class_id) { ?>
                                                <option value="<?php echo $weight_class['weight_class_id']; ?>" selected="selected"><?php echo $weight_class['title']; ?></option>
                                            <?php } else { ?>
                                                <option value="<?php echo $weight_class['weight_class_id']; ?>"><?php echo $weight_class['title']; ?></option>
                                            <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
                                <div class="col-sm-10">
                                    <select name="status" id="input-status" class="form-control">
                                        <?php if ($status) { ?>
                                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                            <option value="0"><?php echo $text_disabled; ?></option>
                                        <?php } else { ?>
                                            <option value="1"><?php echo $text_enabled; ?></option>
                                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
                                <div class="col-sm-10">
                                    <input type="text" name="sort_order" value="<?php echo $sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab-links">

                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-customer"><span data-toggle="tooltip" title="Auto Complete">Select Customer</span></label>
                                <div class="col-sm-10">
                                    <input type="text" required name="customer" value="<?php echo $customer; ?>" placeholder="Customer" id="input-customer" class="form-control" />
                                    <input type="hidden" name="customer_id" value="<?php echo $customer_id; ?>" />
                                    <input type="hidden" name="type" value="<?php echo $type; ?>" />
                                </div>
                            </div>

                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-manufacturer"><span data-toggle="tooltip" title="<?php echo $help_manufacturer; ?>"><?php echo $entry_manufacturer; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="manufacturer" value="<?php echo $manufacturer; ?>" placeholder="<?php echo $entry_manufacturer; ?>" id="input-manufacturer" class="form-control" />
                                    <input type="hidden" name="manufacturer_id" value="<?php echo $manufacturer_id; ?>" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-category"><span data-toggle="tooltip" title="<?php echo $help_category; ?>"><?php echo $entry_category; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="category" value="" placeholder="<?php echo $entry_category; ?>" id="input-category" class="form-control" />
                                    <div id="product-category" class="well well-sm" style="height: 150px; overflow: auto;">
                                        <?php foreach ($product_categories as $product_category) { ?>
                                            <div id="product-category<?php echo $product_category['category_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_category['name']; ?>
                                                <input type="hidden" name="product_category[]" value="<?php echo $product_category['category_id']; ?>" />
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-filter"><span data-toggle="tooltip" title="<?php echo $help_filter; ?>"><?php echo $entry_filter; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="filter" value="" placeholder="<?php echo $entry_filter; ?>" id="input-filter" class="form-control" />
                                    <div id="product-filter" class="well well-sm" style="height: 150px; overflow: auto;">
                                        <?php foreach ($product_filters as $product_filter) { ?>
                                            <div id="product-filter<?php echo $product_filter['filter_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_filter['name']; ?>
                                                <input type="hidden" name="product_filter[]" value="<?php echo $product_filter['filter_id']; ?>" />
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label"><?php echo $entry_store; ?></label>
                                <div class="col-sm-10">
                                    <div class="well well-sm" style="height: 150px; overflow: auto;">
                                        <div class="checkbox">
                                            <label>
                                                <?php if (in_array(0, $product_store)) { ?>
                                                    <input type="checkbox" name="product_store[]" value="0" checked="checked" />
                                                    <?php echo $text_default; ?>
                                                <?php } else { ?>
                                                    <input type="checkbox" name="product_store[]" value="0" />
                                                    <?php echo $text_default; ?>
                                                <?php } ?>
                                            </label>
                                        </div>
                                        <?php foreach ($stores as $store) { ?>
                                            <div class="checkbox">
                                                <label>
                                                    <?php if (in_array($store['store_id'], $product_store)) { ?>
                                                        <input type="checkbox" name="product_store[]" value="<?php echo $store['store_id']; ?>" checked="checked" />
                                                        <?php echo $store['name']; ?>
                                                    <?php } else { ?>
                                                        <input type="checkbox" name="product_store[]" value="<?php echo $store['store_id']; ?>" />
                                                        <?php echo $store['name']; ?>
                                                    <?php } ?>
                                                </label>
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-download"><span data-toggle="tooltip" title="<?php echo $help_download; ?>"><?php echo $entry_download; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="download" value="" placeholder="<?php echo $entry_download; ?>" id="input-download" class="form-control" />
                                    <div id="product-download" class="well well-sm" style="height: 150px; overflow: auto;">
                                        <?php foreach ($product_downloads as $product_download) { ?>
                                            <div id="product-download<?php echo $product_download['download_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_download['name']; ?>
                                                <input type="hidden" name="product_download[]" value="<?php echo $product_download['download_id']; ?>" />
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group hidden">
                                <label class="col-sm-2 control-label" for="input-related"><span data-toggle="tooltip" title="<?php echo $help_related; ?>"><?php echo $entry_related; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="related" value="" placeholder="<?php echo $entry_related; ?>" id="input-related" class="form-control" />
                                    <div id="product-related" class="well well-sm" style="height: 150px; overflow: auto;">
                                        <?php foreach ($product_relateds as $product_related) { ?>
                                            <div id="product-related<?php echo $product_related['product_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_related['name']; ?>
                                                <input type="hidden" name="product_related[]" value="<?php echo $product_related['product_id']; ?>" />
                                            </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane hidden" id="tab-attribute">
                            <div class="table-responsive">
                                <table id="attribute" class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <td class="text-left"><?php echo $entry_attribute; ?></td>
                                        <td class="text-left"><?php echo $entry_text; ?></td>
                                        <td></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php $attribute_row = 0; ?>
                                    <?php foreach ($product_attributes as $product_attribute) { ?>
                                        <tr id="attribute-row<?php echo $attribute_row; ?>">
                                            <td class="text-left" style="width: 40%;"><input type="text" name="product_attribute[<?php echo $attribute_row; ?>][name]" value="<?php echo $product_attribute['name']; ?>" placeholder="<?php echo $entry_attribute; ?>" class="form-control" />
                                                <input type="hidden" name="product_attribute[<?php echo $attribute_row; ?>][attribute_id]" value="<?php echo $product_attribute['attribute_id']; ?>" /></td>
                                            <td class="text-left"><?php foreach ($languages as $language) { ?>
                                                    <div class="input-group"><span class="input-group-addon"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /></span>
                                                        <textarea name="product_attribute[<?php echo $attribute_row; ?>][product_attribute_description][<?php echo $language['language_id']; ?>][text]" rows="5" placeholder="<?php echo $entry_text; ?>" class="form-control"><?php echo isset($product_attribute['product_attribute_description'][$language['language_id']]) ? $product_attribute['product_attribute_description'][$language['language_id']]['text'] : ''; ?></textarea>
                                                    </div>
                                                <?php } ?></td>
                                            <td class="text-left"><button type="button" onclick="$('#attribute-row<?php echo $attribute_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
                                        </tr>
                                        <?php $attribute_row++; ?>
                                    <?php } ?>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <td colspan="2"></td>
                                        <td class="text-left"><button type="button" onclick="addAttribute();" data-toggle="tooltip" title="<?php echo $button_attribute_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane hidden" id="tab-option">
                            <div class="row">
                                <div class="col-sm-2">
                                    <ul class="nav nav-pills nav-stacked" id="option">
                                        <?php $option_row = 0; ?>
                                        <?php foreach ($product_options as $product_option) { ?>
                                            <li><a href="#tab-option<?php echo $option_row; ?>" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$('a[href=\'#tab-option<?php echo $option_row; ?>\']').parent().remove(); $('#tab-option<?php echo $option_row; ?>').remove(); $('#option a:first').tab('show');"></i> <?php echo $product_option['name']; ?></a></li>
                                            <?php $option_row++; ?>
                                        <?php } ?>
                                        <li>
                                            <input type="text" name="option" value="" placeholder="<?php echo $entry_option; ?>" id="input-option" class="form-control" />
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-10">
                                    <div class="tab-content">
                                        <?php $option_row = 0; ?>
                                        <?php $option_value_row = 0; ?>
                                        <?php foreach ($product_options as $product_option) { ?>
                                            <div class="tab-pane" id="tab-option<?php echo $option_row; ?>">
                                                <input type="hidden" name="product_option[<?php echo $option_row; ?>][product_option_id]" value="<?php echo $product_option['product_option_id']; ?>" />
                                                <input type="hidden" name="product_option[<?php echo $option_row; ?>][name]" value="<?php echo $product_option['name']; ?>" />
                                                <input type="hidden" name="product_option[<?php echo $option_row; ?>][option_id]" value="<?php echo $product_option['option_id']; ?>" />
                                                <input type="hidden" name="product_option[<?php echo $option_row; ?>][type]" value="<?php echo $product_option['type']; ?>" />
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-required<?php echo $option_row; ?>"><?php echo $entry_required; ?></label>
                                                    <div class="col-sm-10">
                                                        <select name="product_option[<?php echo $option_row; ?>][required]" id="input-required<?php echo $option_row; ?>" class="form-control">
                                                            <?php if ($product_option['required']) { ?>
                                                                <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                                                                <option value="0"><?php echo $text_no; ?></option>
                                                            <?php } else { ?>
                                                                <option value="1"><?php echo $text_yes; ?></option>
                                                                <option value="0" selected="selected"><?php echo $text_no; ?></option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <?php if ($product_option['type'] == 'text') { ?>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="product_option[<?php echo $option_row; ?>][value]" value="<?php echo $product_option['value']; ?>" placeholder="<?php echo $entry_option_value; ?>" id="input-value<?php echo $option_row; ?>" class="form-control" />
                                                        </div>
                                                    </div>
                                                <?php } ?>
                                                <?php if ($product_option['type'] == 'textarea') { ?>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                                                        <div class="col-sm-10">
                                                            <textarea name="product_option[<?php echo $option_row; ?>][value]" rows="5" placeholder="<?php echo $entry_option_value; ?>" id="input-value<?php echo $option_row; ?>" class="form-control"><?php echo $product_option['value']; ?></textarea>
                                                        </div>
                                                    </div>
                                                <?php } ?>
                                                <?php if ($product_option['type'] == 'file') { ?>
                                                    <div class="form-group" style="display: none;">
                                                        <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                                                        <div class="col-sm-10">
                                                            <input type="text" name="product_option[<?php echo $option_row; ?>][value]" value="<?php echo $product_option['value']; ?>" placeholder="<?php echo $entry_option_value; ?>" id="input-value<?php echo $option_row; ?>" class="form-control" />
                                                        </div>
                                                    </div>
                                                <?php } ?>
                                                <?php if ($product_option['type'] == 'date') { ?>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                                                        <div class="col-sm-3">
                                                            <div class="input-group date">
                                                                <input type="text" name="product_option[<?php echo $option_row; ?>][value]" value="<?php echo $product_option['value']; ?>" placeholder="<?php echo $entry_option_value; ?>" data-date-format="YYYY-MM-DD" id="input-value<?php echo $option_row; ?>" class="form-control" />
                            <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                            </span></div>
                                                        </div>
                                                    </div>
                                                <?php } ?>
                                                <?php if ($product_option['type'] == 'time') { ?>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                                                        <div class="col-sm-10">
                                                            <div class="input-group time">
                                                                <input type="text" name="product_option[<?php echo $option_row; ?>][value]" value="<?php echo $product_option['value']; ?>" placeholder="<?php echo $entry_option_value; ?>" data-date-format="HH:mm" id="input-value<?php echo $option_row; ?>" class="form-control" />
                            <span class="input-group-btn">
                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                            </span></div>
                                                        </div>
                                                    </div>
                                                <?php } ?>
                                                <?php if ($product_option['type'] == 'datetime') { ?>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                                                        <div class="col-sm-10">
                                                            <div class="input-group datetime">
                                                                <input type="text" name="product_option[<?php echo $option_row; ?>][value]" value="<?php echo $product_option['value']; ?>" placeholder="<?php echo $entry_option_value; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-value<?php echo $option_row; ?>" class="form-control" />
                            <span class="input-group-btn">
                            <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                            </span></div>
                                                        </div>
                                                    </div>
                                                <?php } ?>
                                                <?php if ($product_option['type'] == 'select' || $product_option['type'] == 'radio' || $product_option['type'] == 'checkbox' || $product_option['type'] == 'image') { ?>
                                                    <div class="table-responsive">
                                                        <table id="option-value<?php echo $option_row; ?>" class="table table-striped table-bordered table-hover">
                                                            <thead>
                                                            <tr>
                                                                <td class="text-left"><?php echo $entry_option_value; ?></td>
                                                                <td class="text-right"><?php echo $entry_quantity; ?></td>
                                                                <td class="text-left"><?php echo $entry_subtract; ?></td>
                                                                <td class="text-right"><?php echo $entry_price; ?></td>
                                                                <td class="text-right"><?php echo $entry_option_points; ?></td>
                                                                <td class="text-right"><?php echo $entry_weight; ?></td>
                                                                <td></td>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <?php foreach ($product_option['product_option_value'] as $product_option_value) { ?>
                                                                <tr id="option-value-row<?php echo $option_value_row; ?>">
                                                                    <td class="text-left"><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][option_value_id]" class="form-control">
                                                                            <?php if (isset($option_values[$product_option['option_id']])) { ?>
                                                                                <?php foreach ($option_values[$product_option['option_id']] as $option_value) { ?>
                                                                                    <?php if ($option_value['option_value_id'] == $product_option_value['option_value_id']) { ?>
                                                                                        <option value="<?php echo $option_value['option_value_id']; ?>" selected="selected"><?php echo $option_value['name']; ?></option>
                                                                                    <?php } else { ?>
                                                                                        <option value="<?php echo $option_value['option_value_id']; ?>"><?php echo $option_value['name']; ?></option>
                                                                                    <?php } ?>
                                                                                <?php } ?>
                                                                            <?php } ?>
                                                                        </select>
                                                                        <input type="hidden" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][product_option_value_id]" value="<?php echo $product_option_value['product_option_value_id']; ?>" /></td>
                                                                    <td class="text-right"><input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][quantity]" value="<?php echo $product_option_value['quantity']; ?>" placeholder="<?php echo $entry_quantity; ?>" class="form-control" /></td>
                                                                    <td class="text-left"><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][subtract]" class="form-control">
                                                                            <?php if ($product_option_value['subtract']) { ?>
                                                                                <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                                                                                <option value="0"><?php echo $text_no; ?></option>
                                                                            <?php } else { ?>
                                                                                <option value="1"><?php echo $text_yes; ?></option>
                                                                                <option value="0" selected="selected"><?php echo $text_no; ?></option>
                                                                            <?php } ?>
                                                                        </select></td>
                                                                    <td class="text-right"><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][price_prefix]" class="form-control">
                                                                            <?php if ($product_option_value['price_prefix'] == '+') { ?>
                                                                                <option value="+" selected="selected">+</option>
                                                                            <?php } else { ?>
                                                                                <option value="+">+</option>
                                                                            <?php } ?>
                                                                            <?php if ($product_option_value['price_prefix'] == '-') { ?>
                                                                                <option value="-" selected="selected">-</option>
                                                                            <?php } else { ?>
                                                                                <option value="-">-</option>
                                                                            <?php } ?>
                                                                        </select>
                                                                        <input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][price]" value="<?php echo $product_option_value['price']; ?>" placeholder="<?php echo $entry_price; ?>" class="form-control" /></td>
                                                                    <td class="text-right"><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][points_prefix]" class="form-control">
                                                                            <?php if ($product_option_value['points_prefix'] == '+') { ?>
                                                                                <option value="+" selected="selected">+</option>
                                                                            <?php } else { ?>
                                                                                <option value="+">+</option>
                                                                            <?php } ?>
                                                                            <?php if ($product_option_value['points_prefix'] == '-') { ?>
                                                                                <option value="-" selected="selected">-</option>
                                                                            <?php } else { ?>
                                                                                <option value="-">-</option>
                                                                            <?php } ?>
                                                                        </select>
                                                                        <input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][points]" value="<?php echo $product_option_value['points']; ?>" placeholder="<?php echo $entry_points; ?>" class="form-control" /></td>
                                                                    <td class="text-right"><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][weight_prefix]" class="form-control">
                                                                            <?php if ($product_option_value['weight_prefix'] == '+') { ?>
                                                                                <option value="+" selected="selected">+</option>
                                                                            <?php } else { ?>
                                                                                <option value="+">+</option>
                                                                            <?php } ?>
                                                                            <?php if ($product_option_value['weight_prefix'] == '-') { ?>
                                                                                <option value="-" selected="selected">-</option>
                                                                            <?php } else { ?>
                                                                                <option value="-">-</option>
                                                                            <?php } ?>
                                                                        </select>
                                                                        <input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][weight]" value="<?php echo $product_option_value['weight']; ?>" placeholder="<?php echo $entry_weight; ?>" class="form-control" /></td>
                                                                    <td class="text-left"><button type="button" onclick="$(this).tooltip('destroy');$('#option-value-row<?php echo $option_value_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
                                                                </tr>
                                                                <?php $option_value_row++; ?>
                                                            <?php } ?>
                                                            </tbody>
                                                            <tfoot>
                                                            <tr>
                                                                <td colspan="6"></td>
                                                                <td class="text-left"><button type="button" onclick="addOptionValue('<?php echo $option_row; ?>');" data-toggle="tooltip" title="<?php echo $button_option_value_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
                                                            </tr>
                                                            </tfoot>
                                                        </table>
                                                    </div>
                                                    <select id="option-values<?php echo $option_row; ?>" style="display: none;">
                                                        <?php if (isset($option_values[$product_option['option_id']])) { ?>
                                                            <?php foreach ($option_values[$product_option['option_id']] as $option_value) { ?>
                                                                <option value="<?php echo $option_value['option_value_id']; ?>"><?php echo $option_value['name']; ?></option>
                                                            <?php } ?>
                                                        <?php } ?>
                                                    </select>
                                                <?php } ?>
                                            </div>
                                            <?php $option_row++; ?>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane hidden" id="tab-recurring">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <td class="text-left"><?php echo $entry_recurring; ?></td>
                                        <td class="text-left"><?php echo $entry_customer_group; ?></td>
                                        <td class="text-left"></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php $recurring_row = 0; ?>
                                    <?php foreach ($product_recurrings as $product_recurring) { ?>

                                        <tr id="recurring-row<?php echo $recurring_row; ?>">
                                            <td class="text-left"><select name="product_recurring[<?php echo $recurring_row; ?>][recurring_id]" class="form-control">
                                                    <?php foreach ($recurrings as $recurring) { ?>
                                                        <?php if ($recurring['recurring_id'] == $product_recurring['recurring_id']) { ?>
                                                            <option value="<?php echo $recurring['recurring_id']; ?>" selected="selected"><?php echo $recurring['name']; ?></option>
                                                        <?php } else { ?>
                                                            <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                                                        <?php } ?>
                                                    <?php } ?>
                                                </select></td>
                                            <td class="text-left"><select name="product_recurring[<?php echo $recurring_row; ?>][customer_group_id]" class="form-control">
                                                    <?php foreach ($customer_groups as $customer_group) { ?>
                                                        <?php if ($customer_group['customer_group_id'] == $product_recurring['customer_group_id']) { ?>
                                                            <option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
                                                        <?php } else { ?>
                                                            <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
                                                        <?php } ?>
                                                    <?php } ?>
                                                </select></td>
                                            <td class="text-left"><button type="button" onclick="$('#recurring-row<?php echo $recurring_row; ?>').remove()" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
                                        </tr>
                                        <?php $recurring_row++; ?>
                                    <?php } ?>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <td colspan="2"></td>
                                        <td class="text-left"><button type="button" onclick="addRecurring()" data-toggle="tooltip" title="<?php echo $button_recurring_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane hidden" id="tab-discount">
                            <div class="table-responsive">
                                <table id="discount" class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <td class="text-left"><?php echo $entry_customer_group; ?></td>
                                        <td class="text-right"><?php echo $entry_quantity; ?></td>
                                        <td class="text-right"><?php echo $entry_priority; ?></td>
                                        <td class="text-right"><?php echo $entry_price; ?></td>
                                        <td class="text-left"><?php echo $entry_date_start; ?></td>
                                        <td class="text-left"><?php echo $entry_date_end; ?></td>
                                        <td></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php $discount_row = 0; ?>
                                    <?php foreach ($product_discounts as $product_discount) { ?>
                                        <tr id="discount-row<?php echo $discount_row; ?>">
                                            <td class="text-left"><select name="product_discount[<?php echo $discount_row; ?>][customer_group_id]" class="form-control">
                                                    <?php foreach ($customer_groups as $customer_group) { ?>
                                                        <?php if ($customer_group['customer_group_id'] == $product_discount['customer_group_id']) { ?>
                                                            <option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
                                                        <?php } else { ?>
                                                            <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
                                                        <?php } ?>
                                                    <?php } ?>
                                                </select></td>
                                            <td class="text-right"><input type="text" name="product_discount[<?php echo $discount_row; ?>][quantity]" value="<?php echo $product_discount['quantity']; ?>" placeholder="<?php echo $entry_quantity; ?>" class="form-control" /></td>
                                            <td class="text-right"><input type="text" name="product_discount[<?php echo $discount_row; ?>][priority]" value="<?php echo $product_discount['priority']; ?>" placeholder="<?php echo $entry_priority; ?>" class="form-control" /></td>
                                            <td class="text-right"><input type="text" name="product_discount[<?php echo $discount_row; ?>][price]" value="<?php echo $product_discount['price']; ?>" placeholder="<?php echo $entry_price; ?>" class="form-control" /></td>
                                            <td class="text-left" style="width: 20%;"><div class="input-group date">
                                                    <input type="text" name="product_discount[<?php echo $discount_row; ?>][date_start]" value="<?php echo $product_discount['date_start']; ?>" placeholder="<?php echo $entry_date_start; ?>" data-date-format="YYYY-MM-DD" class="form-control" />
                          <span class="input-group-btn">
                          <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                          </span></div></td>
                                            <td class="text-left" style="width: 20%;"><div class="input-group date">
                                                    <input type="text" name="product_discount[<?php echo $discount_row; ?>][date_end]" value="<?php echo $product_discount['date_end']; ?>" placeholder="<?php echo $entry_date_end; ?>" data-date-format="YYYY-MM-DD" class="form-control" />
                          <span class="input-group-btn">
                          <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                          </span></div></td>
                                            <td class="text-left"><button type="button" onclick="$('#discount-row<?php echo $discount_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
                                        </tr>
                                        <?php $discount_row++; ?>
                                    <?php } ?>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <td colspan="6"></td>
                                        <td class="text-left"><button type="button" onclick="addDiscount();" data-toggle="tooltip" title="<?php echo $button_discount_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab-special">
                            <div class="table-responsive">
                                <table id="special" class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <td class="text-left"><?php echo $entry_customer_group; ?></td>
                                        <td class="text-right"><?php echo $entry_priority; ?></td>
                                        <td class="text-right"><?php echo $entry_price; ?></td>
                                        <td class="text-left"><?php echo $entry_date_start; ?></td>
                                        <td class="text-left"><?php echo $entry_date_end; ?></td>
                                        <td></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php $special_row = 0; ?>
                                    <?php foreach ($product_specials as $product_special) { ?>
                                        <tr id="special-row<?php echo $special_row; ?>">
                                            <td class="text-left"><select name="product_special[<?php echo $special_row; ?>][customer_group_id]" class="form-control">
                                                    <?php foreach ($customer_groups as $customer_group) { ?>
                                                        <?php if ($customer_group['customer_group_id'] == $product_special['customer_group_id']) { ?>
                                                            <option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
                                                        <?php } else { ?>
                                                            <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
                                                        <?php } ?>
                                                    <?php } ?>
                                                </select></td>
                                            <td class="text-right"><input type="text" name="product_special[<?php echo $special_row; ?>][priority]" value="<?php echo $product_special['priority']; ?>" placeholder="<?php echo $entry_priority; ?>" class="form-control" /></td>
                                            <td class="text-right"><input type="text" name="product_special[<?php echo $special_row; ?>][price]" value="<?php echo $product_special['price']; ?>" placeholder="<?php echo $entry_price; ?>" class="form-control" /></td>
                                            <td class="text-left" style="width: 20%;"><div class="input-group date">
                                                    <input type="text" name="product_special[<?php echo $special_row; ?>][date_start]" value="<?php echo $product_special['date_start']; ?>" placeholder="<?php echo $entry_date_start; ?>" data-date-format="YYYY-MM-DD" class="form-control" />
                          <span class="input-group-btn">
                          <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                          </span></div></td>
                                            <td class="text-left" style="width: 20%;"><div class="input-group date">
                                                    <input type="text" name="product_special[<?php echo $special_row; ?>][date_end]" value="<?php echo $product_special['date_end']; ?>" placeholder="<?php echo $entry_date_end; ?>" data-date-format="YYYY-MM-DD" class="form-control" />
                          <span class="input-group-btn">
                          <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                          </span></div></td>
                                            <td class="text-left"><button type="button" onclick="$('#special-row<?php echo $special_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>
                                        </tr>
                                        <?php $special_row++; ?>
                                    <?php } ?>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <td colspan="5"></td>
                                        <td class="text-left"><button type="button" onclick="addSpecial();" data-toggle="tooltip" title="<?php echo $button_special_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab-image">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <td class="text-left"><?php echo $entry_image; ?></td>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <tr>
                                        <td class="text-left">
                                            <div id="imagebox">
                                                <img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" />
                                            </div>
                                            <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
                                            <input type="file" name="UploadFile" id="txtUploadFile" class="makethispretty">

                                        </td>

                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                        <div class="tab-pane hidden" id="tab-reward">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-points"><span data-toggle="tooltip" title="<?php echo $help_points; ?>"><?php echo $entry_points; ?></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="points" value="<?php echo $points; ?>" placeholder="<?php echo $entry_points; ?>" id="input-points" class="form-control" />
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <td class="text-left"><?php echo $entry_customer_group; ?></td>
                                        <td class="text-right"><?php echo $entry_reward; ?></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php foreach ($customer_groups as $customer_group) { ?>
                                        <tr>
                                            <td class="text-left"><?php echo $customer_group['name']; ?></td>
                                            <td class="text-right"><input type="text" name="product_reward[<?php echo $customer_group['customer_group_id']; ?>][points]" value="<?php echo isset($product_reward[$customer_group['customer_group_id']]) ? $product_reward[$customer_group['customer_group_id']]['points'] : ''; ?>" class="form-control" /></td>
                                        </tr>
                                    <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane hidden" id="tab-design">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <td class="text-left"><?php echo $entry_store; ?></td>
                                        <td class="text-left"><?php echo $entry_layout; ?></td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td class="text-left"><?php echo $text_default; ?></td>
                                        <td class="text-left"><select name="product_layout[0]" class="form-control">
                                                <option value=""></option>
                                                <?php foreach ($layouts as $layout) { ?>
                                                    <?php if (isset($product_layout[0]) && $product_layout[0] == $layout['layout_id']) { ?>
                                                        <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                                                    <?php } else { ?>
                                                        <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                                                    <?php } ?>
                                                <?php } ?>
                                            </select></td>
                                    </tr>
                                    <?php foreach ($stores as $store) { ?>
                                        <tr>
                                            <td class="text-left"><?php echo $store['name']; ?></td>
                                            <td class="text-left"><select name="product_layout[<?php echo $store['store_id']; ?>]" class="form-control">
                                                    <option value=""></option>
                                                    <?php foreach ($layouts as $layout) { ?>
                                                        <?php if (isset($product_layout[$store['store_id']]) && $product_layout[$store['store_id']] == $layout['layout_id']) { ?>
                                                            <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                                                        <?php } else { ?>
                                                            <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                                                        <?php } ?>
                                                    <?php } ?>
                                                </select></td>
                                        </tr>
                                    <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

            <script>

                $(document).ready(function () {
                    $('#txtUploadFile').on('change', function (e) {
                        var data = new FormData();
                        data.append('file', $('#txtUploadFile').prop('files')[0]);
                        console.log(data);
                        $.ajax({
                            type: 'POST',
                            url: 'index.php?route=tool/upload/upImg',
                            cache:false,
                            contentType: false,
                            processData: false,
                            dataType: 'json',
                            data: data,
                            success: function (result) {
                                        if (result["code"]) {
                                            var img = '<img src = "<?php echo HTTP_SERVER;?>image/catalog/dont-delete/' + result["code"] + '" class="img-responsive small-thumbnail">';
                                            $("#imagebox").html(img);
                                            $("#input-image").val('catalog/dont-delete/'+result["code"]);
                                        }

                            },
                            error: function (xhr, status, p3, p4) {
//                                        var err = "Error " + " " + status + " " + p3 + " " + p4;
//                                        if (xhr.responseText && xhr.responseText[0] == "{")
//                                            err = JSON.parse(xhr.responseText).Message;
//                                        console.log(err);
                            }
                        });


                    });
                });

            </script>

    <script type="text/javascript"><!--
        // Category
        $('input[name=\'category\']').autocomplete({
            'source': function(request, response) {
                $.ajax({
                    url: 'index.php?route=product/category/autocomplete&filter_name=' +  encodeURIComponent(request),
                    dataType: 'json',
                    success: function(json) {
                        response($.map(json, function(item) {
                            return {
                                label: item['name'],
                                value: item['category_id']
                            }
                        }));
                    }
                });
            },
            'select': function(item) {
                $('input[name=\'category\']').val('');

                $('#product-category' + item['value']).remove();

                $('#product-category').append('<div id="product-category' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_category[]" value="' + item['value'] + '" /></div>');
            }
        });

        $('#product-category').delegate('.fa-minus-circle', 'click', function() {
            $(this).parent().remove();
        });


        //--></script>




    <script type="text/javascript"><!--
        var special_row = <?php echo $special_row; ?>;

        function addSpecial() {
            html  = '<tr id="special-row' + special_row + '">';
            html += '  <td class="text-left"><select name="product_special[' + special_row + '][customer_group_id]" class="form-control">';
            <?php foreach ($customer_groups as $customer_group) { ?>
            html += '      <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo addslashes($customer_group['name']); ?></option>';
            <?php } ?>
            html += '  </select></td>';
            html += '  <td class="text-right"><input type="text" name="product_special[' + special_row + '][priority]" value="" placeholder="<?php echo $entry_priority; ?>" class="form-control" /></td>';
            html += '  <td class="text-right"><input type="text" name="product_special[' + special_row + '][price]" value="" placeholder="<?php echo $entry_price; ?>" class="form-control" /></td>';
            html += '  <td class="text-left" style="width: 20%;"><div class="input-group date"><input type="text" name="product_special[' + special_row + '][date_start]" value="" placeholder="<?php echo $entry_date_start; ?>" data-date-format="YYYY-MM-DD" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></td>';
            html += '  <td class="text-left" style="width: 20%;"><div class="input-group date"><input type="text" name="product_special[' + special_row + '][date_end]" value="" placeholder="<?php echo $entry_date_end; ?>" data-date-format="YYYY-MM-DD" class="form-control" /><span class="input-group-btn"><button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button></span></div></td>';
            html += '  <td class="text-left"><button type="button" onclick="$(\'#special-row' + special_row + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';
            html += '</tr>';

            $('#special tbody').append(html);

            $('.date').datetimepicker({
                pickTime: false
            });

            special_row++;
        }
        //--></script>

    <script type="text/javascript"><!--
        $('.date').datetimepicker({
            pickTime: false
        });

        $('.time').datetimepicker({
            pickDate: false
        });

        $('.datetime').datetimepicker({
            pickDate: true,
            pickTime: true
        });
        //--></script>
    <script type="text/javascript"><!--
        $('#language a:first').tab('show');
        $('#option a:first').tab('show');
        //--></script>

            <script type="text/javascript" src="catalog/view/javascript/summernote/summernote.js"></script>
            <link href="catalog/view/javascript/summernote/summernote.css" rel="stylesheet" />
            <script type="text/javascript" src="catalog/view/javascript/summernote/opencart.js"></script>

        </div>
        <?php echo $column_right; ?>    
    </div>
    </div>

<?php echo $footer; ?> 
