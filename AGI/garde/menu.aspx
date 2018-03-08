<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="AGI._11" %>

<!DOCTYPE html>
<html>
 <head>
	<style type="text/css">
		ul ul {display: none; position: absolute; left: 144px; top: -1px; margin:0px; padding: 0px; border: 1px solid #B0B0B0;}
		li {list-style-type: none; position: relative; width: 140px; background-color: #E0E0E0; padding: 2px; margin: 0px}
		li:hover, li.sfhover {background-color: #FFFF70;}
		li:hover ul.niveau2, li li:hover ul.niveau3, li.sfhover ul.niveau2, li li.sfhover ul.niveau3 {display: block}
		li.plus {background-position:right; background-image: url(illustrations/fdroite.gif); background-repeat: no-repeat; border-bottom: 1px solid #B0B0B0;}
	</style>
   </head>
   <body>
		<ul class="niveau1">
			<li><a href="http://www.rankspirit.com"> Menu</a>
				<ul class="niveau2">
					<li class="plus"><a href="http://www.rankspirit.com"> Extras</a>						
                        <ul class="niveau3">
							<li><a href="http://www.rankspirit.com">Demander la note</a></li>
							<li><a href="http://www.rankspirit.com">Draguer la serveuse</a></li>
						</ul>
					</li>
					<li><a href="http://www.rankspirit.com">Entr&eacute;e</a></li>
					<li><a href="http://www.rankspirit.com">Plat</a></li>
					<li><a href="http://www.rankspirit.com">Dessert</a></li>
					<li><a href="http://www.rankspirit.com">Caf&eacute;</a></li>
				</ul>
 			</li>
		</ul>
   </body>
</html>