<?php include('../../private/initialise.php') ?> 
<?php include(SHARED_PATH . '/header.php'); ?>


<div class="container">
  <div class="wrapper">

    <div class="row">
      <div class="col-md-8">
        <article class="post">

          <header class="post-header">
            <h1 class="input-title">About</h1>
          </header>

          <div class="post-content">
            <p>Hugo cards is a Bootstrap based theme ported from the Jekyll theme <a
                href="https://webjeda.com/cards/">Webjeda-cards</a>. Any Bootstrap element can be used in the theme.</p>

            <p>For more themes, visit <a href="https://themes.gohugo.io/">Hugo Themes</a></p>

            <p><strong>Does the theme deserve a star?</strong></p>

            <!-- Place this tag where you want the button to render. -->

            <p><a class="github-button" href="https://github.com/bul-ikana/hugo-cards" data-icon="octicon-star"
                data-size="large" data-show-count="true" aria-label="Star bul-ikana/hugo-cards on GitHub">Star</a>
              <!-- Place this tag in your head or just before your close body tag. -->
              <script async defer src="https://buttons.github.io/buttons.js"></script>
            </p>

          </div>

        </article>
      </div>
      <div class="col-md-4 mt20">
        <div class="post-img">

          <img width="600" src="./images/gopher.jpg" alt="webjeda">

        </div>


        <div class="mt10 recent">
          <h2>Recent articles</h2>
          <ul>


            <li>
              <p><a href="posts/welcome-to-hugo/index.html">Welcome to Hugo!</a><small>&nbsp;&nbsp;June 13, 2016</small>
              </p>
            </li>



            <li>
              <p><a href="posts/usage/">Usage Guide</a><small>&nbsp;&nbsp;June 12, 2016</small></p>
            </li>



            <li>
              <p><a href="posts/no-image/">Post with no image</a><small>&nbsp;&nbsp;June 9, 2016</small></p>
            </li>


          </ul>
        </div>

        <br>

      </div>
    </div>



  </div>
</div>

<?php include(SHARED_PATH . '/footer.php'); ?>