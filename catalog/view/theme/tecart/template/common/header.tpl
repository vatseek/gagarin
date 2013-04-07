<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/tecart/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/tecart.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/tecart/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/tecart/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>
<div id="container">
<div id="header">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php echo $language; ?>
  <?php echo $currency; ?>
  <?php echo $cart; ?>
  <div id="search">
    <div class="button-search"></div>
    <?php if ($search) { ?>
    <input type="text" name="search" value="<?php echo $search; ?>" />
    <?php } else { ?>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
    <?php } ?>
  </div>
  <div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
  <div class="links"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
      <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
</div>
<?php if ($categories):?>
<div id="menu">
  <ul>
    <?php foreach ($categories as $category):?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if (isset($category['children']) && count($category['children'])):?>
      <div>
        <table>
          <tr>
            <td class="cell-menu">
            <ul>
            <?php foreach( $category['children'] as $subcategory):?>
              <li>
                <a href="<?php echo $subcategory['href']; ?>" class="submenu-item"><?php echo $subcategory['name']; ?></a>
                <div class="content-block">
                    <?php if(isset($subcategory['children']) && count($subcategory['children'])):?>
                      <ul class="subitems-list">
                      <?php foreach($subcategory['children'] as $submenuitem):?>
                        <li><a href="<?php echo $submenuitem['href']; ?>"><?php echo $submenuitem['name']; ?></a></li>
                      <?php endforeach;?>
                      </ul>
                    <?php endif;?>
                    <div style="clear: both"></div>
                    <div class="best-price">
                        <?php if(isset($subcategory['product'])):?>
                            <a href="<?php echo $subcategory['product']['href']?>"><img src="<?php echo $subcategory['product']['image']?>"></a>
                            <div class="product-note">
                                <span class="product-header"><?php echo $subcategory['product']['name']?></span>
                                <span class="product-price"><?php echo $subcategory['product']['price']?></span>
                                <input style="float: right" type="button" value="Перейти" class="button" onclick="window.location.href='<?php echo $subcategory['product']['href'];?>'; return false;">
                            </div>
                        <?php else:?>
                            <div class="product-note description">
                                <span class="product-header"><?php echo $subcategory['name']?></span>
                                <span class="product-price"><?php echo $subcategory['description']?></span>
                            </div>
                        <?php endif;?>
                    </div>
                </div>
              </li>
            <?php endforeach ?>
            </ul>
             </td>
             <td>
               <div class="menusublink">
                   <div class="best-price">
                       <div class="product-note description">
                           <span class="product-header"><?php echo $category['name']?></span>
                       </div>
                   </div>
               </div>
             </td>
            </tr>
        </table>
      </div>
      <?php endif; ?>
    </li>
    <?php endforeach; ?>
  </ul>
</div>
<?php endif; ?>
<div id="notification"></div>

<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery(document).on('mouseenter', '#menu .submenu-item', function(e){
            var element = jQuery(e.target);
            var subitems = jQuery('div.content-block', element.parent());
            var cellContent = element.parent().parent().parent().parent();
            jQuery('td div.menusublink', cellContent).html(jQuery(subitems).html());
        });
    });
</script>
