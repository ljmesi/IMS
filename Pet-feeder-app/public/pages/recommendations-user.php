<?php include('../../private/initialise.php') ?> 

<?php 
  $query = $_GET['q']; // Get the whole query 
  $strArray = explode(' ', $query); // Parse the query
  $pet_species = $strArray[0]; // Store the first word into the species name
 ?>

<?php include(SHARED_PATH . '/header.php'); ?>

<h3 style="text-align: center">Pet food recommendations</h3>

<div class="flex-container-recommendation">
  <h4>Recommended nutritional nutritional intake today</h4>
 
  <h5>Your pet should have <?php echo rand(200,1000); ?> grams of dry food this day. </h5>  
  <div></div> 

  <h4>Recommended nutritional links</h4>
  <div>
    <script>
        (function() {
          var cx = '003084133380402758913:gppsaq8tcai';
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

  <h4>Your pet's nutritional data visualised</h4>
  <div id="visualisation"></div>
  
    
</div>
<?php include(SHARED_PATH . '/footer.php'); ?>