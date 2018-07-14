{**
 * lib/pkp/templates/frontend/components/header.tpl
 *
 * Customise and Support by Ricodes.com
 *
 * @brief Common frontend site header.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

{* Determine whether a logo or title string is being displayed *}
{assign var="showingLogo" value=true}
{if $displayPageHeaderTitle && !$displayPageHeaderLogo && is_string($displayPageHeaderTitle)}
	{assign var="showingLogo" value=false}
{/if}

<!DOCTYPE html>
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}" class>
{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}
{include file="frontend/components/headerHead.tpl"}
<body class="pkp_page_{$requestedPage|escape|default:"index"} pkp_op_{$requestedOp|escape|default:"index"}{if $showingLogo} has_site_logo{/if}">
	<div class="pkp_structure_page">

		<nav id="accessibility-nav" class="sr-only" role="navigation" aria-labelled-by="accessible-menu-label">
			<div id="accessible-menu-label">
				{translate|escape key="plugins.themes.bootstrap3.accessible_menu.label"}
			</div>
			<ul>
			  <li><a href="#main-navigation">{translate|escape key="plugins.themes.bootstrap3.accessible_menu.main_navigation"}</a></li>
			  <li><a href="#main-content">{translate|escape key="plugins.themes.bootstrap3.accessible_menu.main_content"}</a></li>
			  <li><a href="#sidebar">{translate|escape key="plugins.themes.bootstrap3.accessible_menu.sidebar"}</a></li>
			</ul>
		</nav>

		{* Header *}

		<header class="navbar navbar-default" id="headerNavigationContainer" role="banner">
			<div class="innerHeaderWrp">
				<div class="topHeader">
					<!--  <div class="socialBread">
						<a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
					</div> -->
					<div class="topSocial">
							<!--   <li><a href="https://www.facebook.com/bbwpublisher" class="fa fa-facebook" target="_blank"></a></li>
				<li><a href="https://twitter.com/@bbwpublisher" class="fa fa-twitter"  target="_blank"></a></li>
				<li><a href="https://plus.google.com/+bbwpublisher" class="fa fa-google-plus"  target="_blank"></a></li>
				<li><a href="https://www.linkedin.com/company/bbwpublisher" class="fa fa-linkedin"  target="_blank"></a></li> -->

					</div>
					{load_menu name="user" id="topMenuRight" ulClass="menu pull-right"}
				</div>
				<div class="mainNavigation">
					<div class="navbar-header">
						{if $displayPageHeaderLogo && is_array($displayPageHeaderLogo)}
							<a href="http://www.bbwpublisher.com" class="navbar-brand navbar-brand-logo">
								<img src="{$publicFilesDir}/{$displayPageHeaderLogo.uploadName|escape:"url"}" {if $displayPageHeaderLogo.altText != ''}alt="{$displayPageHeaderLogo.altText|escape}"{else}alt="{translate key="common.pageHeaderLogo.altText"}"{/if}>
							</a>
						{elseif $displayPageHeaderTitle && !$displayPageHeaderLogo && is_string($displayPageHeaderTitle)}
							<a href="http://www.bbwpublisher.com" class="navbar-brand">{$displayPageHeaderTitle}</a>
						{elseif $displayPageHeaderTitle && !$displayPageHeaderLogo && is_array($displayPageHeaderTitle)}
							<a href="http://www.bbwpublisher.com" class="navbar-brand navbar-brand-logo">
								<img src="{$publicFilesDir}/{$displayPageHeaderTitle.uploadName|escape:"url"}" alt="{$displayPageHeaderTitle.altText|escape}">
							</a>
						{else}
							<a href="http://www.bbwpublisher.com" class="navbar-brand">
								<img src="{$baseUrl}/templates/images/structure/logo.png" alt="{$applicationName|escape}" title="{$applicationName|escape}" />
							</a>
						{/if}
					</div>
				</div>
				<div id="primaryMenuWrp">
					{load_menu name="primary" id="main-navigation" ulClass="nav navbar-nav"}
				</div>
			</div>
			<!-- close innerHeaderWrp -->
			<!-- .pkp_head_wrapper -->
		</header>

		<script>
			{literal}
			window.onscroll = function() {
				if (document.documentElement.scrollTop == 0) {
					var el = document.getElementsByTagName('html')[0];
					if(el) {
						el.setAttribute( 'class', '' );
					}
				} else {
					var el = document.getElementsByTagName('html')[0];
					if(el) {
						el.setAttribute( 'class', 'scrollNow' );
					}
				}
			}
			{/literal}
		</script>
		{$currentUrl} -
		{$pageTitle} --
		{$siteTitle}
		{if $homepageImage.uploadName|escape:"url"}
			<div class="custom-banner">
				<!--img class="img-responsive" src="{$publicFilesDir}/{$homepageImage.uploadName|escape:"url"}" alt="{$homepageImageAltText|escape}"-->
				<img class="img-responsive" src="https://d3a47x03k839z8.cloudfront.net/any.png" alt="{$homepageImageAltText|escape}">
			</div>
		{elseif $currentUrl eq "http://206.189.90.227"}
			<div class="custom-banner">
				<img class="img-responsive" src="https://d3a47x03k839z8.cloudfront.net/mainSite.png" alt="{$homepageImageAltText|escape}">
			</div>
		{elseif $currentUrl eq "http://206.189.90.227/index"}
			<div class="custom-banner">
				<img class="img-responsive" src="https://d3a47x03k839z8.cloudfront.net/mainSite.png" alt="{$homepageImageAltText|escape}">
			</div>
		{else}
			<div class="custom-banner">
				<img class="img-responsive" src="https://d3a47x03k839z8.cloudfront.net/any.png" alt="{$homepageImageAltText|escape}">
			</div>
		{/if}

		{* Wrapper for page content and sidebars *}
		{if $currentUrl eq "http://206.189.90.227/index"}
			<div class="pkp_structure_content container">
				<main class="pkp_structure_main col-xs-12 col-sm-12 col-md-12" role="main">
		{elseif $currentUrl eq "http://206.189.90.227"}
			<div class="pkp_structure_content container">
				<main class="pkp_structure_main col-xs-12 col-sm-12 col-md-12" role="main">
		{else}
			<div class="pkp_structure_content container">
				<main class="pkp_structure_main col-xs-12 col-sm-10 col-md-9" role="main">
		{/if}
