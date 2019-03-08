<?php include('../../private/initialise.php') ?> 
<?php include(SHARED_PATH . '/header.php'); ?>

<div class="flex-container-recommendation">

  <div id="visualisation"></div>

  <div>
  <script>
      (function() {
        var cx = '';
        var gcse = document.createElement('script');
        gcse.type = 'text/javascript';
        gcse.async = true;
        gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(gcse, s);
      })();
    </script>
    <gcse:searchresults-only queryParameterName="q" webSearchResultSetSize="small" webSearchSafesearch="active"></gcse:searchresults-only>
  </div> 
</div>
<?php include(SHARED_PATH . '/footer.php'); ?>