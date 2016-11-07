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
      <h2><?php echo $text_my_account; ?></h2>
      <div class="pull-right"><a href="<?php echo $add; ?>" data-toggle="tooltip" title="" class="btn btn-primary"
                                  data-original-title="Add New"><i class="fa fa-plus"></i></a></div>
      <div class="clearfix"></div>
      <br>
      <?php if ($products) { ?>
        <div class="table-responsive">
          <table class="table table-bordered table-hover">
            <thead>
            <tr>
              <td class="text-left"><?php echo $text_package_image; ?></td>
              <td class="text-left"><?php echo $text_package_name; ?></td>
              <td class="text-left"><?php echo $text_package_price; ?></td>
              <td class="text-left"><?php echo $text_package_review; ?></td>
              <td class="text-left"><?php echo $text_package_bidding; ?></td>
              <td class="text-left"><?php echo $text_package_date; ?></td>
              <td class="text-left">


              </td>

            </tr>
            </thead>
            <tbody>
            <?php foreach ($products as $product) { ?>
              <tr>
                <td class="text-left">
                  <a href="<?php echo $product['href'];?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"></a>
                </td>
                <td class="text-left">
                  <a href="<?php echo $product['href'];?>"><?php echo $product['name']; ?></a></td>
                <td class="text-left">
                <?php if ($product['price']) { ?>

                    <?php if (!$product['special']) { ?>
                      <?php echo $product['price']; ?>
                    <?php } else { ?>
                      <?php echo $product['special']; ?> <s class="price-old"><?php echo $product['price']; ?></s>
                    <?php } ?>


                <?php } ?></td>
                <td class="text-left"><?php echo $product['review'];?></td>
                <td class="text-left"><?php echo $product['bidding']; ?></td>
                <td class="text-left"><?php echo $product['date_added']; ?></td>
                <td class="text-right">
                  <a  href="<?php echo $product['edit']?>" data-toggle="tooltip" title="" class="btn btn-primary " data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                  <a href="<?php echo $product['delete']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-times"></i></a>
                </td>
              </tr>
            <?php } ?>
            </tbody>
          </table>
        </div>
        <div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
      <?php } else { ?>
        <p><?php echo $text_empty; ?></p>
      <?php } ?>

      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>

      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 