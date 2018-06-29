{**
 * templates/frontend/components/footer.tpl
 *
 * Customise and Support by Ricodes.com
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
						<h4>Publishing Office
						<span class="head-line"></span>
					  </h4>
						<p>Level 10, 50 Clarence Street Sydney, NSW 2000 Australia Tel: (+61)434999068</p>
						<h4>Editorial Office
						<span class="head-line"></span>
					  </h4>
						<p>Suites B-5-7. Skypark@One City, Jalan USJ 25/1, 47650 Subang Jaya, Selangor, Malaysia Tel: (+603)50223176</p>
						<ul>
							<li>
								<span class="fa fa-">ISSN</span> 0000-0000</li>
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
							<span class="fa fa-envelope"> </span> Email: info@bbwpublisher.com</li>
						<li>
							<span class="fa fa-phone"> </span> Phone: 603-5022-3176</li>
						<li>
							<span class="fa fa-globe"> </span> Website: www.bbwpublisher.com</li>
						<li>
							<span class="fa fa-map-marker"> </span> Address: Suites B-5-7, Skypark @ One City,
							Jalan USJ 25/1, 47650 Subang Jaya, Selangor, Malaysia</li>
					</ul>
					<ul class="social-icons">
						<li>
							<a class="facebook" href="https://www.facebook.com/bbwpublisher/" target="_blank">
								<span class="fa fa-facebook"></span>
							</a>
						</li>
						<li>
							<a class="twitter" href="https://twitter.com/@bbwpublisher" target="_blank">
								<span class="fa fa-twitter"></span>
							</a>
						</li>
						<li>
							<a class="google" href="https://plus.google.com/+bbwpublisher" target="_blank">
								<span class="fa fa-google-plus"></span>
							</a>
						</li>
						<li>
							<a class="linkdin" href="https://www.linkedin.com/company/bbwpublisher" target="_blank">
								<span class="fa fa-linkedin"></span>
							</a>
						</li>
					</ul>
				</div>
				<div class="footer-widget col-md-2 col-xs-12 social-widget">
					<h4>Browse By Speciaty
						<span class="head-line"></span>
					</h4>
					<ul>
						<li>
							<span class="fa fa-dot-circle-o"> </span>
							<a title="Information For Readers" href="/index.php/dja">Architecture</a>
						</li>
						<li>
							<span class="fa fa-dot-circle-o"> </span>
							<a title="Information For Readers" href="/index.php/djb">Medicine and Biological Science</a>
						</li>
						<li>
							<span class="fa fa-dot-circle-o"> </span>
							<a title="Information For Readers" href="/index.php/djc">Engineering</a>
						</li>
						<li>
							<span class="fa fa-dot-circle-o"> </span>
							<a title="Information For Readers" href="/index.php/djd">Education</a>
						</li>
						<li>
							<span class="fa fa-dot-circle-o"> </span>
							<a title="Information For Readers" href="/index.php/djd">Business and Economics</a>
						</li>
					</ul>
				</div>

				<!-- .col-md-3 -->
			</div>
			<!-- .row -->
			<!-- Start Copyright -->
			<div class="copyright-section">
				<div class="row">
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
								<div class="small">Bio-Byword Scientific Publishing Pty Ltd
									<a href="http://www.bbwpublisher.com/">Bio-BYWORD</a>
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
</div><!-- pkp_structure_page -->

{load_script context="frontend" scripts=$scripts}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
