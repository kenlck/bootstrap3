{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

	</main>

	{* Sidebars *}
	{if empty($isFullWidth)}
		{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
		{if $sidebarCode}
			<aside id="sidebar" class="pkp_structure_sidebar left col-xs-12 col-sm-2 col-md-4" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</aside><!-- pkp_sidebar.left -->
		{/if}
	{/if}
	</div><!-- pkp_structure_content -->

		<style type="text/css">
		/*footer */

		.footerSupports {
			border-top: 1px solid #ccc;
			background: #fff;
			text-align: center;
		}

		.footerSupports a {
			display: inline-block;
			height: 40px;
			margin: 15px;
		}

		.footerSupports a img {
			max-height: 100%;
			width: auto;
			display: block;
			border: 0px;
			opacity: 0.7;
			-webkit-transition: .2s;
			transition: .2s;
		}

		.footerSupports a:hover img {
			opacity: 1;
		}

		/*footer style*/

		#footer {
			position: relative;
			background-color: #34495e;
			padding-top: 20px;
			border-top: 15px solid #192a3a;
			color: #fff;
			font-family: Arial, Helvetica, 'Nimbus Sans L', sans-serif;
			font-size: 14px;
			line-height: 20px;
			font-weight: normal;
			font-style: normal;
		}

		#footer ul {
			list-style-type: none;
			padding-left: 0;
		}

		#footer ul li {
			padding: 5px 0;
		}

		.issueTocPublishArticles {
			margin-top: -15px;
		}

		footer {
			background-color: #222;
			padding-top: 60px;
			border-top: 4px solid #555;
			color: #fff;
		}

		footer p {
			color: #fff;
		}

		footer a {
			color: #fff;
		}

		footer a:hover {
			color: #666;
			text-decoration: underline;
		}

		.footer-widget {
			margin-bottom: 45px;
		}

		.footer-widget h4 {
			color: #eee;
			text-transform: uppercase;
			padding-bottom: 8px;
			margin-bottom: 20px;
			font-size: 14px;
			font-weight: 700;
			position: relative;
		}

		.contact-widget h4 {
			margin-bottom: 0px;
			padding-bottom: 0px;
		}

		.footer-widget h4 .head-line {
			position: absolute;
			bottom: 0;
			left: 0;
			display: block;
			width: 50px;
			height: 3px;
			background-color: #ccc;
			margin: 0;
		}

		.social-widget ul.social-icons li {
			display: inline-block;
			margin-right: 4px;
			margin-bottom: 4px;
		}

		.social-widget ul.social-icons li a span {
			font-size: 1.4em;
			width: 30px;
			height: 30px;
			color: #fff;
			line-height: 30px;
			text-align: center;
			display: block;
			border-radius: 2px;
			-webkit-border-radius: 2px;
			-moz-border-radius: 2px;
			-o-border-radius: 2px;
			transition: all 0.2s ease-in-out;
			-moz-transition: all 0.2s ease-in-out;
			-webkit-transition: all 0.2s ease-in-out;
			-o-transition: all 0.2s ease-in-out;
		}

		.social-widget ul.social-icons li a:hover {
			text-decoration: none;
		}

		.social-widget ul.social-icons li a.facebook:hover span {
			background-color: #507CBE;
		}

		.social-widget ul.social-icons li a.twitter:hover span {
			background-color: #63CDF1;
		}

		.social-widget ul.social-icons li a.google:hover span {
			background-color: #F16261;
		}

		.social-widget ul.social-icons li a.dribbble:hover span {
			background-color: #E46387;
		}

		.social-widget ul.social-icons li a.linkdin:hover span {
			background-color: #90CADD;
		}

		.social-widget ul.social-icons li a.tumblr:hover span {
			background-color: #4D7EA3;
		}

		.social-widget ul.social-icons li a.flickr:hover span {
			background-color: #E474AF;
		}

		.social-widget ul.social-icons li a.instgram:hover span {
			background-color: #4D4F54;
		}

		.social-widget ul.social-icons li a.vimeo:hover span {
			background-color: #87D3E0;
		}

		.social-widget ul.social-icons li a.skype:hover span {
			background-color: #36C4F3
		}

		.contact-widget {
			background: url(map.png) center bottom no-repeat;
		}

		.contact-widget span {
			font-weight: 700;
		}

		.contact-widget ul li {
			margin-bottom: 12px;
		}

		.contact-widget ul li p a {
			color: #bbb;
		}

		.contact-widget p {
			padding-bottom: 20px;
		}

		.twitter-widget a:hover {
			color: #43B9CD;
			text-decoration: underline;
		}

		.twitter-widget ul li {
			margin-bottom: 20px;
		}

		.twitter-widget ul li span {
			color: #666;
		}

		.flickr-widget ul {
			overflow: hidden;
		}

		.flickr-widget ul li {
			float: left;
			margin-left: 8px;
			margin-bottom: 8px;
		}

		.flickr-widget ul li:nth-child(3n+1) {
			margin-left: 0;
		}

		.flickr-widget ul li a {
			display: inline-block;
			width: 80px;
			opacity: 0.6;
			border-radius: 2px;
			-webkit-border-radius: 2px;
			-moz-border-radius: 2px;
			-o-border-radius: 2px;
			border: 4px solid #333;
			transition: all 0.2s ease-in-out;
			-moz-transition: all 0.2s ease-in-out;
			-webkit-transition: all 0.2s ease-in-out;
			-o-transition: all 0.2s ease-in-out;
		}

		.flickr-widget ul li a img {
			width: 100%;
			height: 65px;
		}

		.flickr-widget ul li a:hover {
			opacity: 1;
		}

		.mail-subscribe-widget form {
			margin-top: 15px;
			margin-bottom: 20px;
		}

		.mail-subscribe-widget form input[type="text"] {
			outline: none;
			color: #666;
			font-size: 12px;
			padding: 6px 12px;
			border: none;
			background: #fff;
			border-radius: 2px;
			-webkit-border-radius: 2px;
			-moz-border-radius: 2px;
			-o-border-radius: 2px;
			outline: none;
		}

		.copyright-section {
			padding: 15px 0;
			font-size: 11px;
			letter-spacing: 0.5px;
			border-top: 1px solid rgba(255, 255, 255, .06);
		}

		.copyright-section p {
			font-size: 11px;
			text-transform: uppercase;
			margin-top: 4px;
		}

		ul.footer-nav {
			float: right;
		}

		ul.footer-nav li {
			display: inline-block;
			float: left;
			margin-left: 15px;
		}

		ul.footer-nav li:first-child {
			margin-left: 0;
		}

		ul.footer-nav li a {
			display: inline-block;
			text-transform: uppercase;
			text-decoration: none;
			transition: all 0.2s ease-in-out;
			-moz-transition: all 0.2s ease-in-out;
			-webkit-transition: all 0.2s ease-in-out;
			-o-transition: all 0.2s ease-in-out;
		}

		ul.footer-nav li a:hover {
			color: #fff;
		}

		.back-to-top {
			display: none;
			position: fixed;
			bottom: 18px;
			right: 15px;
		}

		.back-to-top i {
			display: block;
			width: 36px;
			height: 36px;
			line-height: 36px;
			color: #fff;
			border-radius: 2px;
			-webkit-border-radius: 2px;
			-moz-border-radius: 2px;
			-o-border-radius: 2px;
			text-align: center;
			background-color: #444;
			transition: all 0.2s ease-in-out;
			-moz-transition: all 0.2s ease-in-out;
			-webkit-transition: all 0.2s ease-in-out;
			-o-transition: all 0.2s ease-in-out;
		}

		.social-icons {
			margin: 0px;
			padding: 0px;
		}

		/*footer style*/
	</style>

	<footer id="footer" class="footer" role="contentinfo">
		<div class="container">
			<div class="row footer-widgets">
				<!-- Start Contact & Follow Widget -->
				<div class="col-md-4 col-xs-12">
					<div class="footer-widget contact-widget">
						<h4>
							<a href="" alt="Footer Logo" ss="">
								<img src="http://ojs3modern12.openjournalsystems.com/public/journals/7/pageHeaderLogoImage_en_US.png" alt="D"
									class="img-responsive"> </a>
						</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ultrices lorem et lacinia consequat. Donec tristique
							finibus iaculis. Nulla sit amet justo commodo, pellentesque elit eget, varius enim. Sed enim odio, venenatis
							a ultricies vel, ullamcorper quis justo. Quisque porttitor risus in vehicula vestibulum. In in eros tempor, blandit
							erat eu, suscipit mauris. Aliquam facilisis, eros eget fermentum efficitur, justo metus varius mi, nec aliquet
							augue leo at arcu. </p>
						<ul>
							<li>
								<span class="fa fa-">ISSN</span> 2466-3352 (Online)</li>
						</ul>
					</div>
				</div>
				<!-- .col-md-6 -->
				<!-- End Contact Widget -->
				<div class="footer-widget col-md-3 col-xs-12 social-widget">
					<h4>Contact
						<span class="head-line"></span>
					</h4>
					<p> </p>
					<ul>
						<li>
							<span class="fa fa-envelope"> </span> Email: info@openjournalsystems.com</li>
						<li>
							<span class="fa fa-phone"> </span> Phone: 602-527-7080</li>
						<li>
							<span class="fa fa-globe"> </span> Website: www.openjournalsystems.com</li>
						<li>
							<span class="fa fa-map-marker"> </span> Address: 13835 N. Tatum Blvd #9-319, Phoenix, AZ, USA</li>
					</ul>
					<ul class="social-icons">
						<li>
							<a class="facebook" href="https://www.facebook.com/OpenJournalSystems" target="_blank">
								<span class="fa fa-facebook"></span>
							</a>
						</li>
						<li>
							<a class="twitter" href="https://twitter.com/@openjournalsys" target="_blank">
								<span class="fa fa-twitter"></span>
							</a>
						</li>
						<li>
							<a class="google" href="https://plus.google.com/+Openjournalsystems" target="_blank">
								<span class="fa fa-google-plus"></span>
							</a>
						</li>
						<li>
							<a class="linkdin" href="https://www.linkedin.com/company/openjournalsystems-com" target="_blank">
								<span class="fa fa-linkedin"></span>
							</a>
						</li>
					</ul>
				</div>
				<div class="footer-widget col-md-2 col-xs-12 social-widget">
					<h4>Journals
						<span class="head-line"></span>
					</h4>
					<ul>
						<li>
							<span class="fa fa-dot-circle-o"> </span>
							<a title="Information For Readers" href="/index.php/dja">Demo Journal A</a>
						</li>
						<li>
							<span class="fa fa-dot-circle-o"> </span>
							<a title="Information For Readers" href="/index.php/djb">Demo Journal B</a>
						</li>
						<li>
							<span class="fa fa-dot-circle-o"> </span>
							<a title="Information For Readers" href="/index.php/djc">Demo Journal C</a>
						</li>
						<li>
							<span class="fa fa-dot-circle-o"> </span>
							<a title="Information For Readers" href="/index.php/djd">Demo Journal D</a>
						</li>
					</ul>
				</div>
				<!-- Start Twitter Widget -->
				<div class="col-md-3 col-xs-12">
					<div class="footer-widget twitter-widget">
						<h4>Twitter Feed
							<span class="head-line"></span>
						</h4>
						<iframe id="twitter-widget-1" scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen="true" class="twitter-timeline twitter-timeline-rendered"
							style="position: static; visibility: visible; display: inline-block; width: 520px; height: 250px; padding: 0px; border: none; max-width: 100%; min-width: 180px; margin-top: 0px; margin-bottom: 0px; min-height: 200px;"
							data-widget-id="494122051230121986" title="Twitter Timeline"></iframe>
						<script>
							! function (d, s, id) {
								var js, fjs = d.getElementsByTagName(s)[0],
									p = /^http:/.test(d.location) ? 'http' : 'https';
								if (!d.getElementById(id)) {
									js = d.createElement(s);
									js.id = id;
									js.src = p + "://platform.twitter.com/widgets.js";
									fjs.parentNode.insertBefore(js, fjs);
								}
							}(document, "script", "twitter-wjs");
						</script>
					</div>
				</div>
				<!-- .col-md-3 -->
			</div>
			<!-- .row -->
			<!-- Start Copyright -->
			<div class="copyright-section">
				<div class="row">
					<style type="text/css">
						footer {
							background: #444;
							color: #fff;
						}

						.footer .bottom-bar {
							padding: 5px 0;
						}

						footer img {
							margin: 5px;
						}

						#nsf-logo {
							margin-left: 25px;
							margin-right: 25px;
						}

						.cu-engineering-logo {
							width: 160px;
						}
					</style>
					<div class="bottom-bar">
						<div class="container text-center ">
							<div class="row">
								<a href="/">Home</a> |
								<a href="">FAQs</a> |
								<a href="">Policies</a> |
								<a href="">Contact Us</a> |
								<a href="">Sponsors</a> |
								<a href="">Sitemap</a>
								<div> Use of this website constitutes acceptance of our
									<a href="">Terms of Use</a> and
									<a href="">Privacy Policy</a>
								</div>
							</div>
							<div class="row">
								<div class="small"> OJS Hosting, Support, and Customization by:
									<a href="http://OpenJournalSystems.com">OpenJournalSystems.com</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- .row -->
			</div>
			<!-- End Copyright -->
		</div>
		<!-- .container -->
	</footer>
	<footer class="footer" role="contentinfo">

		<div class="container">
			<div class="row">
				{if $pageFooter}
				<div class="col-md-10">
					{$pageFooter}
				</div>
				{/if}

				<div class="col-md-2" role="complementary">
					Powered by
					<a href="http://www.ricodes.com">
						Ricsources Sdn Bhd
					</a>
				</div>

			</div> <!-- .row -->
		</div><!-- .container -->
	</footer>
</div><!-- pkp_structure_page -->

{load_script context="frontend" scripts=$scripts}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
