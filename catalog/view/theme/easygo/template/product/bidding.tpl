<?php if ($biddings) { ?>
    <?php foreach ($biddings as $bidding) { ?>
        <table class="table table-striped table-bordered">
            <tr>
                <td style="width: 50%;"><strong><a href="<?php echo $bidding['href'];?>"><?php echo $bidding['author']; ?></a></strong></td>
                <td class="text-right"><?php echo $bidding['date_added']; ?></td>
            </tr>
            <tr>
                <td colspan="2"><p><?php echo $bidding['text']; ?></p>
                   </td>
            </tr>
        </table>
    <?php } ?>
    <div class="text-right"><?php echo $pagination; ?></div>
<?php } else { ?>
    <p><?php echo $text_no_bidding; ?></p>
<?php } ?>
