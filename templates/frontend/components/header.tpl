{**
 * lib/pkp/templates/frontend/components/header.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University Library
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
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
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}
{include file="core:frontend/components/headerHead.tpl"}
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
					<div class="topSocial">
						<ul>
							<li>
								<a href="https://www.facebook.com/OpenJournalSystems" class="fa fa-facebook" target="_blank"></a>
							</li>
							<li>
								<a href="https://twitter.com/@openjournalsys" class="fa fa-twitter" target="_blank"></a>
							</li>
							<li>
								<a href="https://plus.google.com/+Openjournalsystems" class="fa fa-google-plus" target="_blank"></a>
							</li>
							<li>
								<a href="https://www.linkedin.com/company/openjournalsystems-com" class="fa fa-linkedin" target="_blank"></a>
							</li>
						</ul>
					</div>
					<!--  <div class="socialBread">
						<a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
					</div> -->
					<div class="topSocial">
						<ul>
							<!--   <li><a href="https://www.facebook.com/OpenJournalSystems" class="fa fa-facebook" target="_blank"></a></li>
				<li><a href="https://twitter.com/@openjournalsys" class="fa fa-twitter"  target="_blank"></a></li>
				<li><a href="https://plus.google.com/+Openjournalsystems" class="fa fa-google-plus"  target="_blank"></a></li>
				<li><a href="https://www.linkedin.com/company/openjournalsystems-com" class="fa fa-linkedin"  target="_blank"></a></li> -->
							<li class="callQuestion">QUESTIONS? CALL:
								<strong> (602) 527-7080</strong>
							</li>
						</ul>
					</div>
					{load_menu name="user" id="topMenuRight" ulClass="menu"}
				</div>
				<div class="mainNavigation">
					<div class="navbar-header">
						<a href="http://ojs3modern12.openjournalsystems.com">
							<img src="http://ojs3modern12.openjournalsystems.com/public/journals/7/pageHeaderLogoImage_en_US.png" alt="D" class="img-responsive"> </a>
					</div>
				</div>
				<div id="primaryMenuWrp">
					<ul id="main-navigation" class="nav navbar-nav ">
						<li class=" ">
							<a href="http://ojs3modern12.openjournalsystems.com/index.php/dja" class="active"> Home </a>
						</li>
						<li class="  dropdown ">
							<a href="http://ojs3modern12.openjournalsystems.com/index.php/dja/about" class=""> About
								<i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<ul class="dropdown-menu">
								<li class="">
									<a href="http://ojs3modern12.openjournalsystems.com/index.php/dja/about"> About the Journal </a>
								</li>
								<li class="">
									<a href="http://ojs3modern12.openjournalsystems.com/index.php/dja/about/submissions"> Submissions </a>
								</li>
								<li class="">
									<a href="http://ojs3modern12.openjournalsystems.com/index.php/dja/about/editorialTeam"> Editorial Team </a>
								</li>
								<li class="">
									<a href="http://ojs3modern12.openjournalsystems.com/index.php/dja/about/contact"> Contact </a>
								</li>
							</ul>
						</li>
						<li class=" ">
							<a href="http://ojs3modern12.openjournalsystems.com/index.php/dja/issue/current" class=""> Current </a>
						</li>
						<li class=" ">
							<a href="http://ojs3modern12.openjournalsystems.com/index.php/dja/issue/archive" class=""> Archives </a>
						</li>
						<li class=" ">
							<a href="http://ojs3modern12.openjournalsystems.com/index.php/dja/announcement" class=""> Announcements </a>
						</li>
					</ul>
				</div>
			</div>
			<!-- close innerHeaderWrp -->
			<!-- .pkp_head_wrapper -->
		</header>
		<header class="navbar navbar-default" id="headerNavigationContainer" role="banner">

			{* User profile, login, etc, navigation menu*}
			<div class="container-fluid">
				<div class="row">
					<nav aria-label="{translate|escape key="common.navigation.user"}">
						{load_menu name="user" id="navigationUser" ulClass="nav nav-pills tab-list pull-right"}
					</nav>
				</div><!-- .row -->
			</div><!-- .container-fluid -->

			<div class="container-fluid">

				<div class="navbar-header">

					{* Mobile hamburger menu *}
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-menu" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>

					{* Logo or site title. Only use <h1> heading on the homepage.
					   Otherwise that should go to the page title. *}
					{if $requestedOp == 'index'}
						<h1 class="site-name">
					{else}
						<div class="site-name">
					{/if}
						{capture assign="homeUrl"}
							{if $currentJournal && $multipleContexts}
								{url page="index" router=$smarty.const.ROUTE_PAGE}
							{else}
								{url context="index" router=$smarty.const.ROUTE_PAGE}
							{/if}
						{/capture}
						{if $displayPageHeaderLogo && is_array($displayPageHeaderLogo)}
							<a href="{$homeUrl}" class="navbar-brand navbar-brand-logo">
								<img src="{$publicFilesDir}/{$displayPageHeaderLogo.uploadName|escape:"url"}" {if $displayPageHeaderLogo.altText != ''}alt="{$displayPageHeaderLogo.altText|escape}"{else}alt="{translate key="common.pageHeaderLogo.altText"}"{/if}>
							</a>
						{elseif $displayPageHeaderTitle && !$displayPageHeaderLogo && is_string($displayPageHeaderTitle)}
							<a href="{$homeUrl}" class="navbar-brand">{$displayPageHeaderTitle}</a>
						{elseif $displayPageHeaderTitle && !$displayPageHeaderLogo && is_array($displayPageHeaderTitle)}
							<a href="{$homeUrl}" class="navbar-brand navbar-brand-logo">
								<img src="{$publicFilesDir}/{$displayPageHeaderTitle.uploadName|escape:"url"}" alt="{$displayPageHeaderTitle.altText|escape}">
							</a>
						{else}
							<a href="{$homeUrl}" class="navbar-brand">
								<img src="{$baseUrl}/templates/images/structure/logo.png" alt="{$applicationName|escape}" title="{$applicationName|escape}" />
							</a>
						{/if}
					{if $requestedOp == 'index'}
						</h1>
					{else}
						</div>
					{/if}

				</div>

				{* Primary site navigation *}
				{capture assign="primaryMenu"}
					{load_menu name="primary" id="main-navigation" ulClass="nav navbar-nav"}
				{/capture}

				{if !empty(trim($primaryMenu)) || !$noContextsConfigured}
					<nav id="nav-menu" class="navbar-collapse collapse" aria-label="{translate|escape key="common.navigation.site"}">
						{* Primary navigation menu for current application *}
						{$primaryMenu}

						{* Search form *}
						{if !$noContextsConfigured}
							<div class="pull-md-right">
								{include file="frontend/components/searchForm_simple.tpl"}
							</div>
						{/if}
					</nav>
				{/if}

			</div><!-- .pkp_head_wrapper -->
		</header><!-- .pkp_structure_head -->

		{* Wrapper for page content and sidebars *}
		<div class="pkp_structure_content container">
			<main class="pkp_structure_main col-xs-12 col-sm-10 col-md-8" role="main">
