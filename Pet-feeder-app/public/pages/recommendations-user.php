<?php include('../../private/initialise.php') ?> 
<?php include(SHARED_PATH . '/header.php'); ?>

<h3 style="text-align: center"><?php echo ucfirst($pet_species); ?>  food recommendations</h3>


<div class="flex-container-recommendation">
  <h4>Recommended nutritional nutritional intake today</h4>
 
  <h5>Your <?php echo $pet_species; ?> should have <?php echo rand(200,1000); ?> grams of dry food this day. </h5>  
  <div></div> 

  <h4>Recommended nutritional links</h4>
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

  <h4>Your <?php echo $pet_species; ?>'s nutritional data visualised</h4>
  <div id="visualisation"></div>
  
    
</div>
<?php include(SHARED_PATH . '/footer.php'); ?>