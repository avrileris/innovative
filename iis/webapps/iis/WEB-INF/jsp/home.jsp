
<article class="container_12">

	<section class="grid_4">
		<!--<div class="block-border"><div class="block-content">-->
		<h1>Favourites</h1>

		<ul class="favorites no-margin with-tip"
			title="Context menu available!">

			<li><img src="images/icons/web-app/48/Info.png" width="48"
				height="48"> <a href="#">Settings<br> <small>System
						&gt; Settings</small></a>
				<ul class="mini-menu">
					<li><a href="#" title="Move down"><img
							src="images/icons/fugue/arrow-270.png" width="16" height="16"></a></li>
					<li><a href="#" title="Delete"><img
							src="images/icons/fugue/cross-circle.png" width="16" height="16">
							Delete</a></li>
				</ul></li>

			<li><img src="images/icons/web-app/48/Line-Chart.png" width="48"
				height="48"> <a href="#">Bandwidth usage<br> <small>Stats
						&gt; Server &gt; Bandwidth usage</small></a>
				<ul class="mini-menu">
					<li><a href="#" title="Move up"><img
							src="images/icons/fugue/arrow-090.png" width="16" height="16"></a></li>
					<li><a href="#" title="Move down"><img
							src="images/icons/fugue/arrow-270.png" width="16" height="16"></a></li>
					<li><a href="#" title="Delete"><img
							src="images/icons/fugue/cross-circle.png" width="16" height="16">
							Delete</a></li>
				</ul></li>

			<li><img src="images/icons/web-app/48/Modify.png" width="48"
				height="48"> <a href="#">New post<br> <small>Write
						&gt; New post</small></a>
				<ul class="mini-menu">
					<li><a href="#" title="Move up"><img
							src="images/icons/fugue/arrow-090.png" width="16" height="16"></a></li>
					<li><a href="#" title="Move down"><img
							src="images/icons/fugue/arrow-270.png" width="16" height="16"></a></li>
					<li><a href="#" title="Delete"><img
							src="images/icons/fugue/cross-circle.png" width="16" height="16">
							Delete</a></li>
				</ul></li>

			<li><img src="images/icons/web-app/48/Pie-Chart.png" width="48"
				height="48"> <a href="#">Browsers stats<br> <small>Stats
						&gt; Sites &gt; Browsers stats</small></a>
				<ul class="mini-menu">
					<li><a href="#" title="Move up"><img
							src="images/icons/fugue/arrow-090.png" width="16" height="16"></a></li>
					<li><a href="#" title="Move down"><img
							src="images/icons/fugue/arrow-270.png" width="16" height="16"></a></li>
					<li><a href="#" title="Delete"><img
							src="images/icons/fugue/cross-circle.png" width="16" height="16">
							Delete</a></li>
				</ul></li>

			<li><img src="images/icons/web-app/48/Comment.png" width="48"
				height="48"> <a href="#">Manage comments<br> <small>Comments
						&gt; Manage comments</small></a>
				<ul class="mini-menu">
					<li><a href="#" title="Move up"><img
							src="images/icons/fugue/arrow-090.png" width="16" height="16"></a></li>
					<li><a href="#" title="Delete"><img
							src="images/icons/fugue/cross-circle.png" width="16" height="16">
							Delete</a></li>
				</ul></li>

		</ul>

		<form class="form" name="stats_options" id="stats_options"
			method="post" action="">
			<fieldset class="grey-bg no-margin">
				<legend>Add favourite</legend>
				<p class="input-with-button">
					<label for="simple-action">Select page</label> <select
						name="simple-action" id="simple-action">
						<option value=""></option>
						<option value="1">Page 1</option>
						<option value="2">Page 2</option>
					</select>
					<button type="button">Add</button>
				</p>
			</fieldset>
		</form>

		<!--</div></div>-->
	</section>

	<section class="grid_8">
		<div class="block-border">
			<div class="block-content">
				<!-- We could put the menu inside a H1, but to get valid syntax we'll use a wrapper -->
				<div class="h1 with-menu">
					<h1>Web stats</h1>
					<div class="menu">
						<img src="images/menu-open-arrow.png" width="16" height="16">
						<ul>
							<li class="icon_address"><a href="#">Browse by</a>
								<ul>
									<li class="icon_blog"><a href="#">Blog</a>
										<ul>
											<li class="icon_alarm"><a href="#">Recents</a>
												<ul>
													<li class="icon_building"><a href="#">Corporate
															blog</a></li>
													<li class="icon_newspaper"><a href="#">Press blog</a></li>
												</ul></li>
											<li class="icon_building"><a href="#">Corporate blog</a></li>
											<li class="icon_computer"><a href="#">Support blog</a></li>
											<li class="icon_search"><a href="#">Search...</a></li>
										</ul></li>
									<li class="icon_server"><a href="#">Website</a></li>
									<li class="icon_network"><a href="#">Domain</a></li>
								</ul></li>
							<li class="icon_export"><a href="#">Export</a>
								<ul>
									<li class="icon_doc_excel"><a href="#">Excel</a></li>
									<li class="icon_doc_csv"><a href="#">CSV</a></li>
									<li class="icon_doc_pdf"><a href="#">PDF</a></li>
									<li class="icon_doc_image"><a href="#">Image</a></li>
									<li class="icon_doc_web"><a href="#">Html</a></li>
								</ul></li>
							<li class="sep"></li>
							<li class="icon_refresh"><a href="#">Reload</a></li>
							<li class="icon_reset">Reset</li>
							<li class="icon_search"><a href="#">Search</a></li>
							<li class="sep"></li>
							<li class="icon_terminal"><a href="#">Custom request</a></li>
							<li class="icon_battery"><a href="#">Stats server load</a></li>
						</ul>
					</div>
				</div>

				<div class="block-controls">

					<ul class="controls-tabs js-tabs same-height with-children-tip">
						<li><a href="#tab-stats" title="Charts"><img
								src="images/icons/web-app/24/Bar-Chart.png" width="24"
								height="24"></a></li>
						<li><a href="#tab-comments" title="Comments"><img
								src="images/icons/web-app/24/Comment.png" width="24" height="24"></a></li>
						<li><a href="#tab-medias" title="Medias"><img
								src="images/icons/web-app/24/Picture.png" width="24" height="24"></a></li>
						<li><a href="#tab-users" title="Users"><img
								src="images/icons/web-app/24/Profile.png" width="24" height="24"></a></li>
						<li><a href="#tab-infos" title="Informations"><img
								src="images/icons/web-app/24/Info.png" width="24" height="24"></a></li>
					</ul>

				</div>

				<form class="form" id="tab-stats" method="post" action="">

					<fieldset class="grey-bg">
						<legend>
							<a href="#">Options</a>
						</legend>

						<div class="float-left gutter-right">
							<label for="stats-period">Period</label> <span
								class="input-type-text"><input type="text"
								name="stats-period" id="stats-period" value=""><img
								src="images/icons/fugue/calendar-month.png" width="16"
								height="16"></span>
						</div>
						<div class="float-left gutter-right">
							<span class="label">Display</span>
							<p class="input-height grey-bg">
								<input type="checkbox" name="stats-display[]"
									id="stats-display-0" value="0">&nbsp;<label
									for="stats-display-0">Views</label> <input type="checkbox"
									name="stats-display[]" id="stats-display-1" value="1">&nbsp;<label
									for="stats-display-1">Unique visitors</label>
							</p>
						</div>
						<div class="float-left gutter-right">
							<span class="label">Sites</span>
							<p class="input-height grey-bg">
								<input type="radio" name="stats-sites" id="stats-sites-0"
									value="0">&nbsp;<label for="stats-sites-0">Group</label>
								<input type="radio" name="stats-sites" id="stats-sites-1"
									value="1">&nbsp;<label for="stats-sites-1">Separate</label>
							</p>
						</div>
						<div class="float-left">
							<span class="label">Mode</span> <select name="stats-sites"
								id="stats-sites-0">
								<option value="0">Bars</option>
								<option value="0">Lines</option>
							</select>
						</div>
					</fieldset>
					<div id="chart_div" style="height: 330px;"></div>

				</form>

				<div id="tab-comments" class="with-margin">
					<!-- Content is loaded dynamically at bottom in the javascript section -->
				</div>

				<div id="tab-medias" class="with-margin">
					<p>Medias</p>
				</div>

				<div id="tab-users" class="with-margin">
					<p>Users</p>
				</div>

				<div id="tab-infos" class="with-margin">
					<p>Infos</p>
				</div>

				<ul class="message no-margin">
					<li>This is an <strong>information message</strong>, inside a
						box
					</li>
				</ul>

			</div>
		</div>
	</section>

	<div class="clear"></div>

	<section class="grid_6">
		<div class="block-border">
			<div class="block-content">
				<h1>
					Planning <a href="#" onClick="openModal(); return false;"><img
						src="images/icons/fugue/cards-address.png" width="16" height="16">
						Open modal</a>
				</h1>

				<div class="block-controls">
					<ul class="controls-buttons">
						<li><a href="#" title="Yesterday"><img
								src="images/icons/fugue/navigation-180.png" width="16"
								height="16"></a></li>
						<li class="sep"></li>
						<li class="controls-block"><strong>Monday 10</strong></li>
						<li class="sep"></li>
						<li><a href="#" title="Tomorrow"><img
								src="images/icons/fugue/navigation.png" width="16" height="16"></a></li>
					</ul>
				</div>

				<ul class="planning no-margin">
					<li class="planning-header"><span><b>Users</b></span>
						<ul>
							<li class="at-8">8</li>
							<li class="at-9">9</li>
							<li class="at-10">10</li>
							<li class="at-11">11</li>
							<li class="at-12">12</li>
							<li class="at-13">1</li>
							<li class="at-14">2</li>
							<li class="at-15">3</li>
							<li class="at-16">4</li>
							<li class="at-17">5</li>
							<li class="at-18">6</li>
							<li class="at-19">7</li>
							<li class="at-20">8</li>
						</ul></li>

					<li><a href="#"><img src="images/icons/fugue/user-red.png"
							width="16" height="16"> John</a>
						<ul>
							<li class="lunch from-12 to-14"></li>
							<li class="zebras from-16 to-19"></li>
							<li class="current-time at-9-30"></li>
							<li class="from-8 to-12"><a href="#"
								title="Event description" class="with-tip">8:00 - 12:00<span
									class="event-blue" style="width: 38%">8:00 - 12:00</span></a></li>
							<li class="milestone at-15"><a href="#"
								title="Milestone description" class="with-tip"></a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-green.png" width="16" height="16">
							Sam</a>
						<ul>
							<li class="lunch from-12 to-14"></li>
							<li class="current-time at-9-30"></li>
							<li class="from-9 to-12"><a href="#"
								title="Event description" class="with-tip">9:00 - 12:00<span
									class="event-blue" style="width: 17%">9:00 - 12:00</span></a></li>
							<li class="milestone at-12"><a href="#"
								title="Milestone description" class="with-tip"></a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-gray-female.png" width="16"
							height="16"> Lena</a>
						<ul>
							<li class="lunch from-12 to-14"></li>
							<li class="current-time at-9-30"></li>
							<li class="event-orange from-8 to-10"><a href="#"
								title="Event description" class="with-tip">8:00 - 10:00</a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-gray.png" width="16" height="16">
							Marc</a>
						<ul>
							<li class="lunch from-12 to-14"></li>
							<li class="current-time at-9-30"></li>
							<li class="event-green from-8 to-12"><a href="#"
								title="Event description" class="with-tip">8:00 - 12:00</a></li>
							<li class="from-14 to-18"><a href="#"
								title="Event description" class="with-tip">2:00 - 6:00</a></li>
						</ul></li>
					<li><span><img src="images/icons/fugue/user-female.png"
							width="16" height="16"> Jane</span>
						<ul class="zebras"></ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-business-gray.png" width="16"
							height="16"> Erik</a>
						<ul>
							<li class="lunch from-12 to-14"></li>
							<li class="current-time at-9-30"></li>
							<li class="event-blue from-8-30 to-11-30"><a href="#"
								title="Event description" class="with-tip">8:30 - 11:30</a></li>
							<li class="event-blue from-16 to-18"><a href="#"
								title="Event description" class="with-tip">4:00 - 6:00</a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-business-boss.png" width="16"
							height="16"> George</a>
						<ul>
							<li class="lunch from-12 to-14"></li>
							<li class="current-time at-9-30"></li>
							<li class="event-purple from-8 to-11"><a href="#"
								title="Event description" class="with-tip">8:00 - 11:00</a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-business.png" width="16" height="16">
							James</a>
						<ul>
							<li class="lunch from-12 to-14"></li>
							<li class="current-time at-9-30"></li>
							<li class="milestone at-10"><a href="#"
								title="Milestone description" class="with-tip"></a></li>
							<li class="milestone at-11"><a href="#"
								title="Milestone description" class="with-tip"></a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-black.png" width="16" height="16">
							Nathan</a>
						<ul>
							<li class="lunch from-12 to-14"></li>
							<li class="current-time at-9-30"></li>
							<li class="event-blue from-8 to-12"><a href="#"
								title="Event description" class="with-tip">8:00 - 12:00</a></li>
							<li class="event-purple from-16 to-18"><a href="#"
								title="Event description" class="with-tip">4:00 - 6:00</a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-thief.png" width="16" height="16">
							Elwin</a>
						<ul>
							<li class="lunch from-12 to-14"></li>
							<li class="current-time at-9-30"></li>
							<li class="event-blue from-8 to-12"><a href="#"
								title="Event description" class="with-tip">8:00 - 12:00</a></li>
						</ul></li>
				</ul>

				<ul class="message no-margin">
					<li>10 users found</li>
				</ul>

			</div>
		</div>
	</section>

	<section class="grid_6">
		<div class="block-border">
			<div class="block-content">
				<h1>Control panel</h1>

				<h3>General options</h3>
				<ul class="shortcuts-list">
					<li><a href="#"> <img
							src="images/icons/web-app/48/Bar-Chart.png" width="48"
							height="48"> Stats
					</a></li>
					<li><a href="#"> <img
							src="images/icons/web-app/48/Comment.png" width="48" height="48">
							Comments
					</a></li>
					<li><a href="#"> <img
							src="images/icons/web-app/48/Email.png" width="48" height="48">
							Mail
					</a></li>
					<li><a href="#"> <img
							src="images/icons/web-app/48/Delete.png" width="48" height="48">
							Exit
					</a></li>
				</ul>

				<h3>Content management</h3>
				<ul class="shortcuts-list">
					<li><a href="#"> <img
							src="images/icons/web-app/48/Modify.png" width="48" height="48">
							Write
					</a></li>
					<li><a href="#"> <img
							src="images/icons/web-app/48/Profile.png" width="48" height="48">
							My profile
					</a></li>
					<li><a href="#"> <img
							src="images/icons/web-app/48/Search.png" width="48" height="48">
							Search
					</a></li>
					<li><a href="#"> <img
							src="images/icons/web-app/48/Add.png" width="48" height="48">
							Add post
					</a></li>
				</ul>

				<h3>System</h3>
				<ul class="shortcuts-list">
					<li><a href="#"> <img
							src="images/icons/web-app/48/Info.png" width="48" height="48">
							Settings
					</a></li>
					<li><a href="#"> <img
							src="images/icons/web-app/48/Loading.png" width="48" height="48">
							Monitoring
					</a></li>
					<li><a href="#"> <img
							src="images/icons/web-app/48/Picture.png" width="48" height="48">
							Images
					</a></li>
					<li><a href="#"> <img
							src="images/icons/web-app/48/Pie-Chart.png" width="48"
							height="48"> Usage
					</a></li>
					<li><a href="#"> <img
							src="images/icons/web-app/48/Print.png" width="48" height="48">
							Print report
					</a></li>
					<li><a href="#"> <img
							src="images/icons/web-app/48/Save.png" width="48" height="48">
							Backup
					</a></li>
				</ul>
			</div>
		</div>
	</section>

	<div class="clear"></div>

	<section class="grid_12">
		<div class="block-border">
			<div class="block-content">
				<h1>Month planning</h1>

				<div class="block-controls">
					<ul class="controls-buttons">
						<li><a href="#" title="Previous Month"><img
								src="images/icons/fugue/navigation-180.png" width="16"
								height="16"></a></li>
						<li class="sep"></li>
						<li class="controls-block"><strong>March</strong></li>
						<li class="sep"></li>
						<li><a href="#" title="Next Month"><img
								src="images/icons/fugue/navigation.png" width="16" height="16"></a></li>
					</ul>
				</div>

				<ul class="planning no-margin">
					<li class="planning-header"><span><b>Users</b></span>
						<ul>
							<li class="at-day-1">1</li>
							<li class="at-day-2">2</li>
							<li class="at-day-3">3</li>
							<li class="at-day-4">4</li>
							<li class="at-day-5">5</li>
							<li class="at-day-6">6</li>
							<li class="at-day-7">7</li>
							<li class="at-day-8">8</li>
							<li class="at-day-9">9</li>
							<li class="at-day-10">10</li>
							<li class="at-day-11">11</li>
							<li class="at-day-12">12</li>
							<li class="at-day-13">13</li>
							<li class="at-day-14">14</li>
							<li class="at-day-15">15</li>
							<li class="at-day-16">16</li>
							<li class="at-day-17">17</li>
							<li class="at-day-18">18</li>
							<li class="at-day-19">19</li>
							<li class="at-day-20">20</li>
							<li class="at-day-21">21</li>
							<li class="at-day-22">22</li>
							<li class="at-day-23">23</li>
							<li class="at-day-24">24</li>
							<li class="at-day-25">25</li>
							<li class="at-day-26">26</li>
							<li class="at-day-27">27</li>
							<li class="at-day-28">28</li>
							<li class="at-day-29">29</li>
							<li class="at-day-30">30</li>
							<li class="at-day-31">31</li>
						</ul></li>

					<li><a href="#"><img src="images/icons/fugue/user-red.png"
							width="16" height="16"> John</a>
						<ul>
							<li class="zebras from-day-15 to-day-21"></li>
							<li class="current-time at-day-9"></li>
							<li class="from-day-2 to-day-10"><a href="#"
								title="Event description" class="with-tip">Project name<span
									class="event-blue" style="width: 87.5%">Project name</span></a></li>
							<li class="milestone at-day-15"><a href="#"
								title="Milestone description" class="with-tip"></a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-green.png" width="16" height="16">
							Sam</a>
						<ul>
							<li class="current-time at-day-9"></li>
							<li class="from-day-7 to-day-12"><a href="#"
								title="Event description" class="with-tip">Project name<span
									class="event-blue" style="width: 40%">Project name</span></a></li>
							<li class="milestone at-day-12"><a href="#"
								title="Milestone description" class="with-tip"></a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-gray-female.png" width="16"
							height="16"> Lena</a>
						<ul>
							<li class="current-time at-day-9"></li>
							<li class="event-orange from-day-1 to-day-6"><a href="#"
								title="Event description" class="with-tip">Project name</a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-gray.png" width="16" height="16">
							Marc</a>
						<ul>
							<li class="current-time at-day-9"></li>
							<li class="event-green from-day-8 to-day-12"><a href="#"
								title="Event description" class="with-tip">Project name</a></li>
							<li class="from-day-18 to-day-21"><a href="#"
								title="Event description" class="with-tip">Project name</a></li>
						</ul></li>
					<li><span><img src="images/icons/fugue/user-female.png"
							width="16" height="16"> Jane</span>
						<ul class="zebras"></ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-business-gray.png" width="16"
							height="16"> Erik</a>
						<ul>
							<li class="current-time at-day-9"></li>
							<li class="event-blue from-day-3 to-day-15"><a href="#"
								title="Event description" class="with-tip">Project name</a></li>
							<li class="event-blue from-day-26 to-day-31"><a href="#"
								title="Event description" class="with-tip">Project name</a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-business-boss.png" width="16"
							height="16"> George</a>
						<ul>
							<li class="current-time at-day-9"></li>
							<li class="event-purple from-day-18 to-day-27"><a href="#"
								title="Event description" class="with-tip">Project name</a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-business.png" width="16" height="16">
							James</a>
						<ul>
							<li class="current-time at-day-9"></li>
							<li class="milestone at-day-8"><a href="#"
								title="Milestone description" class="with-tip"></a></li>
							<li class="milestone at-day-14"><a href="#"
								title="Milestone description" class="with-tip"></a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-black.png" width="16" height="16">
							Nathan</a>
						<ul>
							<li class="current-time at-day-9"></li>
							<li class="event-blue from-day-5 to-day-9"><a href="#"
								title="Event description" class="with-tip">Project name</a></li>
							<li class="event-purple from-day-17 to-day-21"><a href="#"
								title="Event description" class="with-tip">Project name</a></li>
						</ul></li>
					<li><a href="#"><img
							src="images/icons/fugue/user-thief.png" width="16" height="16">
							Elwin</a>
						<ul>
							<li class="current-time at-day-9"></li>
							<li class="event-blue from-day-14 to-day-25"><a href="#"
								title="Event description" class="with-tip">Project name</a></li>
						</ul></li>
				</ul>

				<ul class="message no-margin">
					<li>10 users found</li>
				</ul>

			</div>
		</div>
	</section>

	<ul class="message success grid_12">
		<li>This is a <strong>success message</strong>, out of any box
		</li>
		<li class="close-bt"></li>
	</ul>

	<section class="grid_4">
		<div class="block-border">
			<form class="block-content form" id="simple_form" method="post"
				action="">
				<h1>Simple form</h1>

				<fieldset class="grey-bg required">
					<legend>Fieldset with background</legend>
					<p>
						<label for="simple-required">Required input</label> <input
							type="text" name="simple-required" id="simple-required" value=""
							class="full-width">
					</p>
				</fieldset>

				<fieldset>
					<legend>Fieldset</legend>

					<ul class="message error no-margin">
						<li>This is an <strong>error message</strong>, inside a form
						</li>
					</ul>

					<p>
						<label for="simple-calendar">Date selector</label> <span
							class="input-type-text margin-right error relative"><input
							type="text" name="simple-calendar" id="simple-calendar" value=""
							class="datepicker"><img
							src="images/icons/fugue/calendar-month.png" width="16"
							height="16"><span class="check-error"></span></span>
						<button type="button" class="grey">Today</button>
					</p>
					<p>
						<span class="label">Inline checkable</span> <input type="checkbox"
							name="simple-checkbox[]" id="simple-checkbox-1" value="1">&nbsp;<label
							for="simple-checkbox-1">Views</label> <input type="checkbox"
							name="simple-checkbox[]" id="simple-checkbox-2" value="2">&nbsp;<label
							for="simple-checkbox-2">Unique visitors</label>
					</p>

					<div class="columns">
						<div class="colx2-left">
							<span class="label">Checkable list</span>
							<ul class="checkable-list">
								<li><input type="radio" name="simple-radio"
									id="simple-radio-1" value="1">&nbsp;<label
									for="simple-radio-1">Group</label></li>
								<li><input type="radio" name="simple-radio"
									id="simple-radio-2" value="2">&nbsp;<label
									for="simple-radio-2">Separate</label></li>
							</ul>
						</div>
						<p class="colx2-right">
							<label for="simple-select">Select</label> <select
								name="simple-select" id="simple-select" class="full-width">
								<option value="1">Option 1</option>
								<option value="2">Option 2</option>
								<option value="3">Option 3</option>
								<option value="4">Option 4</option>
							</select>
						</p>
					</div>

					<div class="columns">
						<div class="colx2-left">
							<label for="simple-switch-off">Switch off</label> <input
								type="checkbox" name="simple-switch-off" id="simple-switch-off"
								value="1" class="switch">
						</div>
						<p class="colx2-right">
							<label for="simple-switch-on">Switch on</label> <input
								type="checkbox" name="simple-switch-on" id="simple-switch-on"
								value="1" checked="checked" class="switch">
						</p>
					</div>

				</fieldset>

				<fieldset class="grey-bg no-margin">
					<legend>Action on create</legend>
					<p class="input-with-button">
						<label for="simple-action">Select action</label> <select
							name="simple-action" id="simple-action">
							<option value="1">Save and publish</option>
							<option value="2">Save only</option>
						</select>
						<button type="button">Create</button>
					</p>
				</fieldset>

			</form>
		</div>
	</section>

	<section class="grid_8">
		<div class="block-border">
			<form class="block-content form" id="complex_form" method="post"
				action="">
				<h1>Complex form</h1>

				<div class="block-controls">

					<ul class="controls-tabs js-tabs">
						<li class="current"><a href="#" title="Charts"><img
								src="images/icons/web-app/24/Bar-Chart.png" width="24"
								height="24"></a></li>
						<li><a href="#" title="Comments"><img
								src="images/icons/web-app/24/Comment.png" width="24" height="24"></a></li>
						<li><a href="#" title="Medias"><img
								src="images/icons/web-app/24/Picture.png" width="24" height="24"></a></li>
						<li><a href="#" title="Users"><img
								src="images/icons/web-app/24/Profile.png" width="24" height="24"></a></li>
						<li><a href="#" title="Informations"><img
								src="images/icons/web-app/24/Info.png" width="24" height="24"></a></li>
					</ul>

				</div>

				<ul class="message warning no-margin">
					<li>This is a <strong>warning message</strong>, inside a box
					</li>
					<li class="close-bt"></li>
				</ul>

				<div class="columns">
					<div class="col200pxL-left">

						<h2>Side tabs</h2>

						<ul class="side-tabs js-tabs same-height">
							<li><a href="#tab-global" title="Global properties">Global
									properties</a></li>
							<li><a href="#tab-settings" title="Language settings">Language
									settings</a></li>
							<li><a href="#tab-relations" title="Relations">Relations</a></li>
							<li><a href="#tab-history" title="History">History</a></li>
							<li><span>Advanced parameters</span></li>
							<li class="icon-tab with-margin"><a
								href="javascript:void(0)" title="Add tab"><img
									src="images/icons/add.png" width="16" height="16"></a></li>
						</ul>

					</div>
					<div class="col200pxL-right">

						<div id="tab-global" class="tabs-content">

							<ul class="tabs js-tabs same-height">
								<li class="current"><a href="#tab-locales" title="Locales">Locales</a></li>
								<li><a href="#tab-options" title="Options">Options</a></li>
								<li><span>Advanced</span></li>
								<li class="with-margin"><a href="javascript:void(0)"
									title="Add tab"><img src="images/icons/add.png" width="16"
										height="16"></a></li>
							</ul>

							<div class="tabs-content">

								<div id="tab-locales">

									<div class="infos">
										<h3>Locales edition</h3>
										<p>Choose a locale below and edit informations as needed</p>
									</div>

									<ul class="mini-tabs no-margin js-tabs same-height">
										<li><a href="#tab-en"><img
												src="images/icons/flags/us.png" width="16" height="11"
												alt="English" title="English"></a></li>
										<li class="current"><a href="#tab-fr"><img
												src="images/icons/flags/fr.png" width="16" height="11"
												alt="French" title="French"></a></li>
										<li><a href="#tab-de"><img
												src="images/icons/flags/de.png" width="16" height="11"
												alt="German" title="German"></a></li>
										<li><a href="#tab-es"><img
												src="images/icons/flags/es.png" width="16" height="11"
												alt="Spanish" title="Spanish"></a></li>
										<li><a href="#tab-ru"><img
												src="images/icons/flags/ru.png" width="16" height="11"
												alt="Russian" title="Russian"></a></li>
										<li><a href="#tab-jp"><img
												src="images/icons/flags/jp.png" width="16" height="11"
												alt="Japanese" title="Japanese"></a></li>
									</ul>

									<div id="tab-en">
										<fieldset class="grey-bg">
											<legend>Required fields</legend>
											<div class="colx3-left-double required">
												<label for="complex-title">Page title</label> <span
													class="relative"> <input type="text"
													name="complex-en-title" id="complex-en-title"
													value="English" class="full-width"> <span
													class="check-ok"></span>
												</span>
											</div>
											<div class="colx3-right">
												<span class="label required">Active</span>
												<p class="input-height grey-bg">
													<input type="radio" name="complex-en-active"
														id="complex-en-active-1" value="1" checked="checked">&nbsp;<label
														for="complex-en-active-1">Yes</label> <input type="radio"
														name="complex-en-active" id="complex-en-active-0"
														value="0">&nbsp;<label for="complex-en-active-0">No</label>
												</p>
											</div>
										</fieldset>

										<fieldset>
											<legend>Other informations</legend>

											<div class="columns">
												<p class="colx2-left">
													<label for="complex-en-url">Url</label> <span
														class="relative"> <input type="text"
														name="complex-en-url" id="complex-en-url" value=""
														class="full-width error"> <span
														class="check-error"></span>
													</span>
												</p>
												<p class="colx2-right">
													<label for="complex-en-subtitle">Subtitle</label> <input
														type="text" name="complex-en-subtitle"
														id="complex-en-subtitle" value="" class="full-width">
												</p>
											</div>

											<div class="columns">
												<p class="colx2-left">
													<span class="label">Access</span> <input type="checkbox"
														name="complex-en-checkbox[]" id="complex-en-checkbox-0"
														value="0">&nbsp;<label for="complex-en-checkbox-0">Everyone</label>
													<input type="checkbox" name="complex-en-checkbox[]"
														id="complex-en-checkbox-1" value="1">&nbsp;<label
														for="complex-en-checkbox-1">Logged users</label> <input
														type="checkbox" name="complex-en-checkbox[]"
														id="complex-en-checkbox-2" value="2">&nbsp;<label
														for="complex-en-checkbox-2">Site administrators</label>
												</p>
												<p class="colx2-right">
													<label for="complex-en-style">Style</label> <select
														name="complex-en-style" id="complex-en-style"
														class="full-width">
														<option value="1">Standard</option>
														<option value="1">Full-width</option>
														<option value="1">3 columns</option>
													</select>
												</p>
											</div>
										</fieldset>
									</div>

									<div id="tab-fr">
										<fieldset class="grey-bg">
											<legend>Required fields</legend>
											<div class="colx3-left-double required">
												<label for="complex-fr-title">Page title</label> <span
													class="relative"> <input type="text"
													name="complex-fr-title" id="complex-fr-title"
													value="Fran�ais" class="full-width"> <span
													class="check-ok"></span>
												</span>
											</div>
											<div class="colx3-right">
												<span class="label required">Active</span>
												<p class="input-height grey-bg">
													<input type="radio" name="complex-fr-active"
														id="complex-fr-active-1" value="1" checked="checked">&nbsp;<label
														for="complex-fr-active-1">Yes</label> <input type="radio"
														name="complex-fr-active" id="complex-fr-active-0"
														value="0">&nbsp;<label for="complex-fr-active-0">No</label>
												</p>
											</div>
										</fieldset>

										<fieldset>
											<legend>Other informations</legend>

											<div class="columns">
												<p class="colx2-left">
													<label for="complex-fr-url">Url</label> <span
														class="relative"> <input type="text"
														name="complex-fr-url" id="complex-fr-url" value=""
														class="full-width error"> <span
														class="check-error"></span>
													</span>
												</p>
												<p class="colx2-right">
													<label for="complex-fr-subtitle">Subtitle</label> <input
														type="text" name="complex-fr-subtitle"
														id="complex-fr-subtitle" value="" class="full-width">
												</p>
											</div>

											<div class="columns">
												<p class="colx2-left">
													<span class="label">Access</span> <input type="checkbox"
														name="complex-fr-checkbox[]" id="complex-fr-checkbox-0"
														value="0">&nbsp;<label for="complex-fr-checkbox-0">Everyone</label>
													<input type="checkbox" name="complex-fr-checkbox[]"
														id="complex-fr-checkbox-1" value="1">&nbsp;<label
														for="complex-fr-checkbox-1">Logged users</label> <input
														type="checkbox" name="complex-fr-checkbox[]"
														id="complex-fr-checkbox-2" value="2">&nbsp;<label
														for="complex-fr-checkbox-2">Site administrators</label>
												</p>
												<p class="colx2-right">
													<label for="complex-fr-style">Style</label> <select
														name="complex-fr-style" id="complex-fr-style"
														class="full-width">
														<option value="1">Standard</option>
														<option value="1">Full-width</option>
														<option value="1">3 columns</option>
													</select>
												</p>
											</div>
										</fieldset>
									</div>

									<div id="tab-de">
										<fieldset class="grey-bg">
											<legend>Required fields</legend>
											<div class="colx3-left-double required">
												<label for="complex-de-title">Page title</label> <span
													class="relative"> <input type="text"
													name="complex-de-title" id="complex-de-title"
													value="Deutsch" class="full-width"> <span
													class="check-ok"></span>
												</span>
											</div>
											<div class="colx3-right">
												<span class="label required">Active</span>
												<p class="input-height grey-bg">
													<input type="radio" name="complex-de-active"
														id="complex-de-active-1" value="1" checked="checked">&nbsp;<label
														for="complex-de-active-1">Yes</label> <input type="radio"
														name="complex-de-active" id="complex-de-active-0"
														value="0">&nbsp;<label for="complex-de-active-0">No</label>
												</p>
											</div>
										</fieldset>

										<fieldset>
											<legend>Other informations</legend>

											<div class="columns">
												<p class="colx2-left">
													<label for="complex-de-url">Url</label> <span
														class="relative"> <input type="text"
														name="complex-de-url" id="complex-de-url" value=""
														class="full-width error"> <span
														class="check-error"></span>
													</span>
												</p>
												<p class="colx2-right">
													<label for="complex-de-subtitle">Subtitle</label> <input
														type="text" name="complex-de-subtitle"
														id="complex-de-subtitle" value="" class="full-width">
												</p>
											</div>

											<div class="columns">
												<p class="colx2-left">
													<span class="label">Access</span> <input type="checkbox"
														name="complex-de-checkbox[]" id="complex-de-checkbox-0"
														value="0">&nbsp;<label for="complex-de-checkbox-0">Everyone</label>
													<input type="checkbox" name="complex-de-checkbox[]"
														id="complex-de-checkbox-1" value="1">&nbsp;<label
														for="complex-de-checkbox-1">Logged users</label> <input
														type="checkbox" name="complex-de-checkbox[]"
														id="complex-de-checkbox-2" value="2">&nbsp;<label
														for="complex-de-checkbox-2">Site administrators</label>
												</p>
												<p class="colx2-right">
													<label for="complex-de-style">Style</label> <select
														name="complex-de-style" id="complex-de-style"
														class="full-width">
														<option value="1">Standard</option>
														<option value="1">Full-width</option>
														<option value="1">3 columns</option>
													</select>
												</p>
											</div>
										</fieldset>
									</div>

									<div id="tab-es">
										<fieldset class="grey-bg">
											<legend>Required fields</legend>
											<div class="colx3-left-double required">
												<label for="complex-es-title">Page title</label> <span
													class="relative"> <input type="text"
													name="complex-es-title" id="complex-es-title"
													value="Espa�ol" class="full-width"> <span
													class="check-ok"></span>
												</span>
											</div>
											<div class="colx3-right">
												<span class="label required">Active</span>
												<p class="input-height grey-bg">
													<input type="radio" name="complex-es-active"
														id="complex-es-active-1" value="1" checked="checked">&nbsp;<label
														for="complex-es-active-1">Yes</label> <input type="radio"
														name="complex-es-active" id="complex-es-active-0"
														value="0">&nbsp;<label for="complex-es-active-0">No</label>
												</p>
											</div>
										</fieldset>

										<fieldset>
											<legend>Other informations</legend>

											<div class="columns">
												<p class="colx2-left">
													<label for="complex-es-url">Url</label> <span
														class="relative"> <input type="text"
														name="complex-es-url" id="complex-es-url" value=""
														class="full-width error"> <span
														class="check-error"></span>
													</span>
												</p>
												<p class="colx2-right">
													<label for="complex-es-subtitle">Subtitle</label> <input
														type="text" name="complex-es-subtitle"
														id="complex-es-subtitle" value="" class="full-width">
												</p>
											</div>

											<div class="columns">
												<p class="colx2-left">
													<span class="label">Access</span> <input type="checkbox"
														name="complex-es-checkbox[]" id="complex-es-checkbox-0"
														value="0">&nbsp;<label for="complex-es-checkbox-0">Everyone</label>
													<input type="checkbox" name="complex-es-checkbox[]"
														id="complex-es-checkbox-1" value="1">&nbsp;<label
														for="complex-es-checkbox-1">Logged users</label> <input
														type="checkbox" name="complex-es-checkbox[]"
														id="complex-es-checkbox-2" value="2">&nbsp;<label
														for="complex-es-checkbox-2">Site administrators</label>
												</p>
												<p class="colx2-right">
													<label for="complex-es-style">Style</label> <select
														name="complex-es-style" id="complex-es-style"
														class="full-width">
														<option value="1">Standard</option>
														<option value="1">Full-width</option>
														<option value="1">3 columns</option>
													</select>
												</p>
											</div>
										</fieldset>
									</div>

									<div id="tab-ru">
										<fieldset class="grey-bg">
											<legend>Required fields</legend>
											<div class="colx3-left-double required">
												<label for="complex-ru-title">Page title</label> <span
													class="relative"> <input type="text"
													name="complex-ru-title" id="complex-ru-title"
													value="data" class="full-width"> <span
													class="check-ok"></span>
												</span>
											</div>
											<div class="colx3-right">
												<span class="label required">Active</span>
												<p class="input-height grey-bg">
													<input type="radio" name="complex-ru-active"
														id="complex-ru-active-1" value="1" checked="checked">&nbsp;<label
														for="complex-ru-active-1">Yes</label> <input type="radio"
														name="complex-ru-active" id="complex-ru-active-0"
														value="0">&nbsp;<label for="complex-ru-active-0">No</label>
												</p>
											</div>
										</fieldset>

										<fieldset>
											<legend>Other informations</legend>

											<div class="columns">
												<p class="colx2-left">
													<label for="complex-ru-url">Url</label> <span
														class="relative"> <input type="text"
														name="complex-ru-url" id="complex-ru-url" value=""
														class="full-width error"> <span
														class="check-error"></span>
													</span>
												</p>
												<p class="colx2-right">
													<label for="complex-ru-subtitle">Subtitle</label> <input
														type="text" name="complex-ru-subtitle"
														id="complex-ru-subtitle" value="" class="full-width">
												</p>
											</div>

											<div class="columns">
												<p class="colx2-left">
													<span class="label">Access</span> <input type="checkbox"
														name="complex-ru-checkbox[]" id="complex-ru-checkbox-0"
														value="0">&nbsp;<label for="complex-ru-checkbox-0">Everyone</label>
													<input type="checkbox" name="complex-ru-checkbox[]"
														id="complex-ru-checkbox-1" value="1">&nbsp;<label
														for="complex-ru-checkbox-1">Logged users</label> <input
														type="checkbox" name="complex-ru-checkbox[]"
														id="complex-ru-checkbox-2" value="2">&nbsp;<label
														for="complex-ru-checkbox-2">Site administrators</label>
												</p>
												<p class="colx2-right">
													<label for="complex-ru-style">Style</label> <select
														name="complex-ru-style" id="complex-ru-style"
														class="full-width">
														<option value="1">Standard</option>
														<option value="1">Full-width</option>
														<option value="1">3 columns</option>
													</select>
												</p>
											</div>
										</fieldset>
									</div>

									<div id="tab-jp">
										<fieldset class="grey-bg">
											<legend>Required fields</legend>
											<div class="colx3-left-double required">
												<label for="complex-jp-title">Page title</label> <span
													class="relative"> <input type="text"
													name="complex-jp-title" id="complex-jp-title" value="jap"
													class="full-width"> <span class="check-ok"></span>
												</span>
											</div>
											<div class="colx3-right">
												<span class="label required">Active</span>
												<p class="input-height grey-bg">
													<input type="radio" name="complex-jp-active"
														id="complex-jp-active-1" value="1" checked="checked">&nbsp;<label
														for="complex-jp-active-1">Yes</label> <input type="radio"
														name="complex-jp-active" id="complex-jp-active-0"
														value="0">&nbsp;<label for="complex-jp-active-0">No</label>
												</p>
											</div>
										</fieldset>

										<fieldset>
											<legend>Other informations</legend>

											<div class="columns">
												<p class="colx2-left">
													<label for="complex-jp-url">Url</label> <span
														class="relative"> <input type="text"
														name="complex-jp-url" id="complex-jp-url" value=""
														class="full-width error"> <span
														class="check-error"></span>
													</span>
												</p>
												<p class="colx2-right">
													<label for="complex-jp-subtitle">Subtitle</label> <input
														type="text" name="complex-jp-subtitle"
														id="complex-jp-subtitle" value="" class="full-width">
												</p>
											</div>

											<div class="columns">
												<p class="colx2-left">
													<span class="label">Access</span> <input type="checkbox"
														name="complex-jp-checkbox[]" id="complex-jp-checkbox-0"
														value="0">&nbsp;<label for="complex-jp-checkbox-0">Everyone</label>
													<input type="checkbox" name="complex-jp-checkbox[]"
														id="complex-jp-checkbox-1" value="1">&nbsp;<label
														for="complex-jp-checkbox-1">Logged users</label> <input
														type="checkbox" name="complex-jp-checkbox[]"
														id="complex-jp-checkbox-2" value="2">&nbsp;<label
														for="complex-jp-checkbox-2">Site administrators</label>
												</p>
												<p class="colx2-right">
													<label for="complex-jp-style">Style</label> <select
														name="complex-jp-style" id="complex-jp-style"
														class="full-width">
														<option value="1">Standard</option>
														<option value="1">Full-width</option>
														<option value="1">3 columns</option>
													</select>
												</p>
											</div>
										</fieldset>
									</div>
								</div>

								<div id="tab-options">Options</div>

							</div>
						</div>

						<div id="tab-settings" class="tabs-content">Settings</div>

						<div id="tab-relations" class="tabs-content">Relations</div>

						<div id="tab-history" class="tabs-content">History</div>

					</div>

					<div class="col200pxL-bottom">
						<p class="one-line-input grey-bg small-margin">
							<label for="complex-switch-on" class="float-left">Small
								switch on</label> <input type="checkbox" name="complex-switch-on"
								id="complex-switch-on" value="1" class="mini-switch with-tip"
								title="Enable/disable switch" checked="checked">
						</p>
						<p class="one-line-input grey-bg clearfix">
							<label for="complex-switch-off" class="float-left">Small
								switch off</label> <input type="checkbox" name="complex-switch-off"
								id="complex-switch-off" value="1" class="mini-switch with-tip"
								title="Enable/disable switch">
						</p>
					</div>
				</div>

			</form>
		</div>
	</section>

	<div class="clear"></div>

	<section class="grid_12">
		<div class="block-border">
			<form class="block-content form" id="table_form" method="post"
				action="">
				<h1>Table</h1>

				<div class="block-controls">

					<ul class="controls-buttons">
						<li><a href="#" title="Previous"><img
								src="images/icons/fugue/navigation-180.png" width="16"
								height="16"> Prev</a></li>
						<li><a href="#" title="Page 1"><b>1</b></a></li>
						<li><a href="#" title="Page 2" class="current"><b>2</b></a></li>
						<li><a href="#" title="Page 3"><b>3</b></a></li>
						<li><a href="#" title="Page 4"><b>4</b></a></li>
						<li><a href="#" title="Page 5"><b>5</b></a></li>
						<li><a href="#" title="Next">Next <img
								src="images/icons/fugue/navigation.png" width="16" height="16"></a></li>
						<li class="sep"></li>
						<li><a href="#"><img
								src="images/icons/fugue/arrow-circle.png" width="16" height="16"></a></li>
					</ul>

				</div>

				<div class="no-margin">
					<table class="table" cellspacing="0" width="100%">

						<thead>
							<tr>
								<th class="black-cell"><span class="loading"></span></th>
								<th scope="col"><span class="column-sort"> <a
										href="#" title="Sort up" class="sort-up active"></a> <a
										href="#" title="Sort down" class="sort-down"></a>
								</span> Title</th>
								<th scope="col">Keywords</th>
								<th scope="col">Preview</th>
								<th scope="col"><span class="column-sort"> <a
										href="#" title="Sort up" class="sort-up"></a> <a href="#"
										title="Sort down" class="sort-down"></a>
								</span> Date</th>
								<th scope="col"><span class="column-sort"> <a
										href="#" title="Sort up" class="sort-up"></a> <a href="#"
										title="Sort down" class="sort-down"></a>
								</span> Size</th>
								<th scope="col" class="table-actions">Actions</th>
							</tr>
						</thead>

						<tbody>

							<tr>
								<th scope="row" class="table-check-cell"><input
									type="checkbox" name="selected[]" id="table-selected-1"
									value="1"></th>
								<td>Lorem ipsum sit amet</td>
								<td><ul class="keywords">
										<li><a href="#">Ocean</a></li>
										<li class="orange-keyword"><a href="#">Sun</a></li>
									</ul></td>
								<td><a href="#"><small><img
											src="images/icons/fugue/image.png" width="16" height="16"
											class="picto"> jpg | 12 Ko</small></a></td>
								<td>02-05-2010</td>
								<td>320 x 240</td>
								<td class="table-actions"><a href="#" title="Edit"
									class="with-tip"><img src="images/icons/fugue/pencil.png"
										width="16" height="16"></a> <a href="#" title="Delete"
									class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></td>
							</tr>

							<tr>
								<th scope="row" class="table-check-cell"><input
									type="checkbox" name="selected[]" id="table-selected-2"
									value="2"></th>
								<td>Consectetur adipisicing elit</td>
								<td><ul class="keywords">
										<li class="purple-keyword">People</li>
									</ul></td>
								<td><a href="#"><small><img
											src="images/icons/fugue/image.png" width="16" height="16"
											class="picto"> jpg | 14 Ko</small></a></td>
								<td>10-10-2010</td>
								<td>640 x 480</td>
								<td class="table-actions"><a href="#" title="Edit"
									class="with-tip"><img src="images/icons/fugue/pencil.png"
										width="16" height="16"></a> <a href="#" title="Delete"
									class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></td>
							</tr>

							<tr>
								<th scope="row" class="table-check-cell"><input
									type="checkbox" name="selected[]" id="table-selected-3"
									value="3"></th>
								<td>Sed do eiusmod tempor</td>
								<td><ul class="keywords">
										<li>Sea</li>
										<li>Fish</li>
										<li>Bubble</li>
									</ul></td>
								<td><a href="#"><small><img
											src="images/icons/fugue/image.png" width="16" height="16"
											class="picto"> jpg | 9 Ko</small></a></td>
								<td>24-03-2010</td>
								<td>320 x 240</td>
								<td class="table-actions"><a href="#" title="Edit"
									class="with-tip"><img src="images/icons/fugue/pencil.png"
										width="16" height="16"></a> <a href="#" title="Delete"
									class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></td>
							</tr>

							<tr>
								<th scope="row" class="table-check-cell"><input
									type="checkbox" name="selected[]" id="table-selected-4"
									value="4"></th>
								<td>Incididunt</td>
								<td class="empty">(none)</td>
								<td><a href="#"><small><img
											src="images/icons/fugue/image.png" width="16" height="16"
											class="picto"> jpg | 21 Ko</small></a></td>
								<td>02-10-2010</td>
								<td>320 x 240</td>
								<td class="table-actions"><a href="#" title="Edit"
									class="with-tip"><img src="images/icons/fugue/pencil.png"
										width="16" height="16"></a> <a href="#" title="Delete"
									class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></td>
							</tr>

							<tr>
								<th scope="row" class="table-check-cell"><input
									type="checkbox" name="selected[]" id="table-selected-5"
									value="5"></th>
								<td>Ut labore et dolore magna</td>
								<td><ul class="keywords">
										<li>Ocean</li>
									</ul></td>
								<td><a href="#"><small><img
											src="images/icons/fugue/image.png" width="16" height="16"
											class="picto"> jpg | 20 Ko</small></a></td>
								<td>21-07-2010</td>
								<td>320 x 240</td>
								<td class="table-actions"><a href="#" title="Edit"
									class="with-tip"><img src="images/icons/fugue/pencil.png"
										width="16" height="16"></a> <a href="#" title="Delete"
									class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></td>
							</tr>

						</tbody>

					</table>
				</div>

				<ul class="message no-margin">
					<li>Results 1 - 5 out of 23</li>
				</ul>

				<div class="block-footer">
					<div class="float-right">
						<label for="table-display" style="display: inline">Display
							mode</label> <select name="table-display" id="table-display"
							class="small">
							<option value="table">Table</option>
							<option value="grid">Grid</option>
						</select>
					</div>

					<img src="images/icons/fugue/arrow-curve-000-left.png" width="16"
						height="16" class="picto"> <a href="#" class="button">Select
						All</a> <a href="#" class="button">Unselect All</a> <span class="sep"></span>
					<select name="table-action" id="table-action" class="small">
						<option value="">Action for selected...</option>
						<option value="validate">Validate</option>
						<option value="delete">Delete</option>
					</select>
					<button type="submit" class="small">Ok</button>
				</div>

			</form>
		</div>
	</section>

	<section class="grid_12">
		<div class="block-border">
			<form class="block-content form" id="table_form" method="post"
				action="">
				<h1>Sortable table</h1>

				<table class="table sortable no-margin" cellspacing="0" width="100%">

					<thead>
						<tr>
							<th class="black-cell"><span class="loading"></span></th>
							<th scope="col"><span class="column-sort"> <a
									href="#" title="Sort up" class="sort-up"></a> <a href="#"
									title="Sort down" class="sort-down"></a>
							</span> Title</th>
							<th scope="col">Keywords</th>
							<th scope="col"><span class="column-sort"> <a
									href="#" title="Sort up" class="sort-up"></a> <a href="#"
									title="Sort down" class="sort-down"></a>
							</span> Preview</th>
							<th scope="col"><span class="column-sort"> <a
									href="#" title="Sort up" class="sort-up"></a> <a href="#"
									title="Sort down" class="sort-down"></a>
							</span> Date</th>
							<th scope="col"><span class="column-sort"> <a
									href="#" title="Sort up" class="sort-up"></a> <a href="#"
									title="Sort down" class="sort-down"></a>
							</span> Size</th>
							<th scope="col" class="table-actions">Actions</th>
						</tr>
					</thead>

					<tbody>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-1" value="1"></td>
							<td>Lorem ipsum sit amet</td>
							<td><ul class="keywords">
									<li><a href="#">Ocean</a></li>
									<li class="orange-keyword"><a href="#">Sun</a></li>
								</ul></td>
							<td>12</td>
							<td>2010-05-02</td>
							<td>320.240</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-2" value="2"></td>
							<td>Consectetur adipisicing elit</td>
							<td><ul class="keywords">
									<li class="purple-keyword">People</li>
								</ul></td>
							<td>14</td>
							<td>2010-10-10</td>
							<td>640.480</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-3" value="3"></td>
							<td>Sed do eiusmod tempor</td>
							<td><ul class="keywords">
									<li>Sea</li>
									<li>Fish</li>
									<li>Bubble</li>
								</ul></td>
							<td>9</td>
							<td>2010-03-24</td>
							<td>320.240</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-4" value="4"></td>
							<td>Incididunt</td>
							<td class="empty">(none)</td>
							<td>21</td>
							<td>2010-10-02</td>
							<td>320.240</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-5" value="5"></td>
							<td>Ut labore et dolore magna</td>
							<td><ul class="keywords">
									<li>Ocean</li>
								</ul></td>
							<td>20</td>
							<td>2010-07-21</td>
							<td>320.240</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-1" value="1"></td>
							<td>Aliqua</td>
							<td><ul class="keywords">
									<li><a href="#">Ocean</a></li>
									<li class="orange-keyword"><a href="#">Sun</a></li>
								</ul></td>
							<td>12</td>
							<td>2010-08-17</td>
							<td>640.480</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-2" value="2"></td>
							<td>Ut enim ad minim</td>
							<td><ul class="keywords">
									<li class="purple-keyword">People</li>
								</ul></td>
							<td>15</td>
							<td>2010-04-14</td>
							<td>320.240</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-3" value="3"></td>
							<td>Veniam</td>
							<td><ul class="keywords">
									<li>Sea</li>
									<li>Fish</li>
								</ul></td>
							<td>18</td>
							<td>2010-02-02</td>
							<td>320.240</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-4" value="4"></td>
							<td>Quis nostrud exercitation ullamco</td>
							<td class="empty">(none)</td>
							<td>9</td>
							<td>2010-09-07</td>
							<td>320.240</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-5" value="5"></td>
							<td>Laboris nisi ut aliquip</td>
							<td><ul class="keywords">
									<li>Ocean</li>
									<li>Bubble</li>
								</ul></td>
							<td>8</td>
							<td>2010-03-12</td>
							<td>320.240</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-2" value="2"></td>
							<td>Ex ea commodo consequat</td>
							<td><ul class="keywords">
									<li class="purple-keyword">People</li>
									<li>Fish</li>
								</ul></td>
							<td>14</td>
							<td>2010-03-14</td>
							<td>640.480</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-3" value="3"></td>
							<td>Duis aute irure</td>
							<td><ul class="keywords">
									<li>Sea</li>
									<li>Bubble</li>
								</ul></td>
							<td>14</td>
							<td>2010-05-01</td>
							<td>640.480</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-4" value="4"></td>
							<td>Dolor in reprehenderit</td>
							<td class="empty">(none)</td>
							<td>54</td>
							<td>2010-06-18</td>
							<td>1024.768</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-5" value="5"></td>
							<td>In voluptate velit</td>
							<td><ul class="keywords">
									<li>Ocean</li>
								</ul></td>
							<td>22</td>
							<td>2010-06-30</td>
							<td>320.240</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-1" value="1"></td>
							<td>Esse cillum</td>
							<td><ul class="keywords">
									<li><a href="#">Ocean</a></li>
									<li class="orange-keyword"><a href="#">Sun</a></li>
								</ul></td>
							<td>12</td>
							<td>2010-02-27</td>
							<td>640.480</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-2" value="2"></td>
							<td>Dolore eu fugiat nulla pariatur</td>
							<td><ul class="keywords">
									<li class="purple-keyword">People</li>
								</ul></td>
							<td>16</td>
							<td>2010-04-14</td>
							<td>640.480</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-3" value="3"></td>
							<td>Excepteur sint occaecat</td>
							<td><ul class="keywords">
									<li>Sea</li>
									<li>Fish</li>
									<li>Bubble</li>
								</ul></td>
							<td>19</td>
							<td>2010-07-12</td>
							<td>320.240</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-4" value="4"></td>
							<td>Cupidatat non proident</td>
							<td class="empty">(none)</td>
							<td>18</td>
							<td>2010-08-21</td>
							<td>320.240</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

						<tr>
							<td class="th table-check-cell"><input type="checkbox"
								name="selected[]" id="table-selected-5" value="5"></td>
							<td>Sunt in culpa</td>
							<td><ul class="keywords">
									<li>Ocean</li>
								</ul></td>
							<td>17</td>
							<td>2010-10-04</td>
							<td>640.480</td>
							<td class="table-actions"><a href="#" title="Edit"
								class="with-tip"><img src="images/icons/fugue/pencil.png"
									width="16" height="16"></a> <a href="#" title="Delete"
								class="with-tip"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"></a></td>
						</tr>

					</tbody>

				</table>

			</form>
		</div>
	</section>

	<section class="grid_12">
		<div class="block-border">
			<form class="block-content form" name="table_form" id="table_form"
				method="post" action="">
				<h1>
					Grid view <a href="#"><img
						src="images/icons/fugue/plus-circle-blue.png" width="16"
						height="16"> add</a>
				</h1>

				<div class="block-controls">

					<ul class="controls-buttons">
						<li><a href="#" title="Previous"><img
								src="images/icons/fugue/navigation-180.png" width="16"
								height="16"> Prev</a></li>
						<li><a href="#" title="Page 1"><b>1</b></a></li>
						<li><a href="#" title="Page 2" class="current"><b>2</b></a></li>
						<li><a href="#" title="Page 3"><b>3</b></a></li>
						<li><a href="#" title="Page 4"><b>4</b></a></li>
						<li><a href="#" title="Page 5"><b>5</b></a></li>
						<li><a href="#" title="Next">Next <img
								src="images/icons/fugue/navigation.png" width="16" height="16"></a></li>
						<li class="sep"></li>
						<li><a href="#"><img
								src="images/icons/fugue/arrow-circle.png" width="16" height="16"></a></li>
					</ul>

				</div>

				<div class="with-head no-margin">

					<div class="head">
						<div class="black-cell with-gap">
							<span class="success"></span>
						</div>
						<div class="black-cell">Sort by</div>
						<div>
							<span class="column-sort"> <a href="#" title="Sort up"
								class="sort-up active"></a> <a href="#" title="Sort down"
								class="sort-down"></a>
							</span> Name
						</div>
						<div>
							<span class="column-sort"> <a href="#" title="Sort up"
								class="sort-up"></a> <a href="#" title="Sort down"
								class="sort-down"></a>
							</span> Date
						</div>
						<div>
							<span class="column-sort"> <a href="#" title="Sort up"
								class="sort-up"></a> <a href="#" title="Sort down"
								class="sort-down"></a>
							</span> Status
						</div>
					</div>

					<ul class="grid dark-grey-gradient">

						<li>
							<div class="grid-picto user">
								<small>Administrator</small>
								<p class="grid-name">John Doe</p>
								<p class="grid-details">
									Age: <b>28</b><br> Gender: <b>male</b><br> Country: <b>USA</b>
								</p>
							</div>
							<ul class="grid-actions">
								<li><a href="#" title="Edit" class="with-tip"><img
										src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
								<li><a href="#" title="Delete" class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></li>
								<li><input type="checkbox" name="selected[]"
									id="grid-selected-1" value="1"></li>
							</ul>
						</li>

						<li>
							<div class="grid-picto user">
								<small>Administrator</small>
								<p class="grid-name">John Doe</p>
								<p class="grid-details">
									Age: <b>28</b><br> Gender: <b>male</b><br> Country: <b>USA</b>
								</p>
							</div>
							<ul class="grid-actions">
								<li><a href="#" title="Edit" class="with-tip"><img
										src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
								<li><a href="#" title="Delete" class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></li>
								<li><input type="checkbox" name="selected[]"
									id="grid-selected-2" value="2"></li>
							</ul>
						</li>

						<li>
							<div class="grid-picto user">
								<small>Administrator</small>
								<p class="grid-name">John Doe</p>
								<p class="grid-details">
									Age: <b>28</b><br> Gender: <b>male</b><br> Country: <b>USA</b>
								</p>
							</div>
							<ul class="grid-actions">
								<li><a href="#" title="Edit" class="with-tip"><img
										src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
								<li><a href="#" title="Delete" class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></li>
								<li><input type="checkbox" name="selected[]"
									id="grid-selected-3" value="3"></li>
							</ul>
						</li>

						<li>
							<div class="grid-picto user">
								<small>Administrator</small>
								<p class="grid-name">John Doe</p>
								<p class="grid-details">
									Age: <b>28</b><br> Gender: <b>male</b><br> Country: <b>USA</b>
								</p>
							</div>
							<ul class="grid-actions">
								<li><a href="#" title="Edit" class="with-tip"><img
										src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
								<li><a href="#" title="Delete" class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></li>
								<li><input type="checkbox" name="selected[]"
									id="grid-selected-4" value="4"></li>
							</ul>
						</li>

						<li>
							<div class="grid-picto user">
								<small>Administrator</small>
								<p class="grid-name">John Doe</p>
								<p class="grid-details">
									Age: <b>28</b><br> Gender: <b>male</b><br> Country: <b>USA</b>
								</p>
							</div>
							<ul class="grid-actions">
								<li><a href="#" title="Edit" class="with-tip"><img
										src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
								<li><a href="#" title="Delete" class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></li>
								<li><input type="checkbox" name="selected[]"
									id="grid-selected-5" value="5"></li>
							</ul>
						</li>

						<li>
							<div class="grid-picto user">
								<small>Administrator</small>
								<p class="grid-name">John Doe</p>
								<p class="grid-details">
									Age: <b>28</b><br> Gender: <b>male</b><br> Country: <b>USA</b>
								</p>
							</div>
							<ul class="grid-actions">
								<li><a href="#" title="Edit" class="with-tip"><img
										src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
								<li><a href="#" title="Delete" class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></li>
								<li><input type="checkbox" name="selected[]"
									id="grid-selected-6" value="6"></li>
							</ul>
						</li>

						<li>
							<div class="grid-picto user">
								<small>Administrator</small>
								<p class="grid-name">John Doe</p>
								<p class="grid-details">
									Age: <b>28</b><br> Gender: <b>male</b><br> Country: <b>USA</b>
								</p>
							</div>
							<ul class="grid-actions">
								<li><a href="#" title="Edit" class="with-tip"><img
										src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
								<li><a href="#" title="Delete" class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></li>
								<li><input type="checkbox" name="selected[]"
									id="grid-selected-7" value="7"></li>
							</ul>
						</li>

						<li>
							<div class="grid-picto user">
								<small>Administrator</small>
								<p class="grid-name">John Doe</p>
								<p class="grid-details">
									Age: <b>28</b><br> Gender: <b>male</b><br> Country: <b>USA</b>
								</p>
							</div>
							<ul class="grid-actions">
								<li><a href="#" title="Edit" class="with-tip"><img
										src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
								<li><a href="#" title="Delete" class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></li>
								<li><input type="checkbox" name="selected[]"
									id="grid-selected-8" value="8"></li>
							</ul>
						</li>

						<li>
							<div class="grid-picto user">
								<small>Administrator</small>
								<p class="grid-name">John Doe</p>
								<p class="grid-details">
									Age: <b>28</b><br> Gender: <b>male</b><br> Country: <b>USA</b>
								</p>
							</div>
							<ul class="grid-actions">
								<li><a href="#" title="Edit" class="with-tip"><img
										src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
								<li><a href="#" title="Delete" class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></li>
								<li><input type="checkbox" name="selected[]"
									id="grid-selected-9" value="9"></li>
							</ul>
						</li>

						<li>
							<div class="grid-picto user">
								<small>Administrator</small>
								<p class="grid-name">John Doe</p>
								<p class="grid-details">
									Age: <b>28</b><br> Gender: <b>male</b><br> Country: <b>USA</b>
								</p>
							</div>
							<ul class="grid-actions">
								<li><a href="#" title="Edit" class="with-tip"><img
										src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
								<li><a href="#" title="Delete" class="with-tip"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"></a></li>
								<li><input type="checkbox" name="selected[]"
									id="grid-selected-10" value="10"></li>
							</ul>
						</li>

					</ul>
				</div>

				<ul class="message no-margin">
					<li>Results 1 - 10 out of 47</li>
				</ul>

				<div class="block-footer">
					<div class="float-right">
						<label for="table-display" style="display: inline">Display
							mode</label> <select name="table-display" id="table-display"
							class="small">
							<option value="table">Table</option>
							<option value="grid" selected="selected">Grid</option>
						</select>
					</div>

					<img src="images/icons/fugue/arrow-curve-000-left.png" width="16"
						height="16" class="picto"> <a href="#" class="button">Select
						All</a> <a href="#" class="button">Unselect All</a> <span class="sep"></span>
					<select name="table-action" id="table-action" class="small">
						<option value="">Action for selected...</option>
						<option value="validate">Validate</option>
						<option value="delete">Delete</option>
					</select>
					<button type="submit" class="small">Ok</button>
				</div>

			</form>
		</div>
	</section>

	<section class="grid_12">
		<div class="block-border">
			<div class="block-content">
				<h1>Arbo &amp; icon view</h1>

				<div class="block-controls">

					<ul class="controls-buttons">
						<li>Occupied space <meter class="progress-bar">
								<span style="width: 68%">68%</span>
							</meter>
						</li>
						<li class="sep"></li>
						<li><a href="#"><img
								src="images/icons/fugue/arrow-circle.png" width="16" height="16"></a></li>
					</ul>

				</div>

				<div class="content-columns left30">

					<div class="content-columns-sep"></div>

					<div class="content-left">

						<div class="with-head">
							<div class="head">
								<div class="black-cell">
									<span class="error"></span>
								</div>
								<div>
									<div class="button menu-opener">
										Actions
										<div class="menu-arrow">
											<img src="images/menu-open-arrow.png" width="16" height="16">
										</div>
										<div class="menu">
											<ul>
												<li class="icon_export"><a href="#">Choose folder</a>
													<ul>
														<li class="icon_network"><a href="#">Website</a></li>
														<li class="icon_server"><a href="#">Server root</a></li>
													</ul></li>
												<li class="icon_refresh"><a href="#">Reload</a></li>
												<li class="icon_search"><a href="#">Search</a></li>
												<li class="sep"></li>
												<li class="icon_terminal"><a href="#">Custom search</a></li>
											</ul>
										</div>
									</div>
									<div class="button menu-opener">
										Filters
										<div class="menu-arrow">
											<img src="images/menu-open-arrow.png" width="16" height="16">
										</div>
										<div class="menu">
											<ul>
												<li class="icon_doc_image"><a href="#">Images only</a></li>
												<li class="icon_computer"><a href="#">System files</a></li>
												<li class="sep"></li>
												<li class="icon_terminal"><a href="#">Custom filter</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>

							<div class="dark-grey-gradient with-padding"
								style="height: 300px; overflow: auto">

								<ul class="arbo with-title">
									<li><a href="#" class="title-computer toggle">My
											documents</a>
										<ul>
											<li class="close"><span class="toggle"></span> <a
												href="#" class="folder"><span>Templates</span></a>
												<ul>
													<li><a href="#" class="document-web"><span>File
																1</span></a></li>
													<li><a href="#" class="document-web"><span>File
																2</span></a></li>
													<li><a href="#" class="document-web"><span>File
																3</span></a></li>
												</ul></li>
											<li class="close"><span class="toggle"></span> <a
												href="#" class="folder"><span>Archives</span></a>
												<ul>
													<li><a href="#" class="document-excel"><span>File
																1</span></a></li>
													<li><a href="#" class="document-web"><span>File
																2</span></a></li>
													<li><a href="#" class="document-flash"><span>File
																3</span></a></li>
												</ul></li>
											<li><span class="toggle"></span> <a href="#"
												class="current folder"><span>Documents</span></a>
												<ul>
													<li class="close"><span class="toggle"></span> <a
														href="#" class="folder-bookmark"><span>Favourites</span></a>
														<ul>
															<li><a href="#" class="document-illustrator"><span>File
																		1</span></a></li>
															<li><a href="#" class="document"><span>File
																		2</span></a></li>
															<li><a href="#" class="document"><span>File
																		3</span></a></li>
														</ul></li>
													<li class="close"><span class="toggle"></span> <a
														href="#" class="folder-image"><span>Images</span></a>
														<ul>
															<li><a href="#" class="document-image"><span>File
																		1</span></a></li>
															<li><a href="#" class="document-image"><span>File
																		2</span></a></li>
															<li><a href="#" class="document-music"><span>File
																		3</span></a></li>
														</ul></li>
													<li><a href="#" class="document-photoshop"><span>Layout.psd</span></a></li>
													<li><a href="#" class="document-pdf"><span>Instructions.pdf</span></a></li>
												</ul></li>
											<li><span class="toggle"></span> <a href="#"
												class="folder"><span>Loading folder</span></a>
												<ul>
													<li><span class="loading">Loading...</span></li>
												</ul></li>
											<li><span class="toggle"></span> <a href="#"
												class="folder"><span>Empty folder</span></a>
												<ul>
													<li><span class="empty">Empty</span></li>
												</ul></li>
										</ul></li>
								</ul>

							</div>
						</div>

						<ul class="message">
							<li>Error while refreshing data</li>
						</ul>

					</div>

					<div class="content-right">

						<div class="with-head">
							<div class="head">
								<div class="black-cell with-gap">
									<span class="success"></span>
								</div>
								<div class="black-cell">Sort by</div>
								<div>
									<span class="column-sort"> <a href="#" title="Sort up"
										class="sort-up active"></a> <a href="#" title="Sort down"
										class="sort-down"></a>
									</span> Name
								</div>
								<div>
									<span class="column-sort"> <a href="#" title="Sort up"
										class="sort-up"></a> <a href="#" title="Sort down"
										class="sort-down"></a>
									</span> Date
								</div>
								<div>
									<span class="column-sort"> <a href="#" title="Sort up"
										class="sort-up"></a> <a href="#" title="Sort down"
										class="sort-down"></a>
									</span> Filesize
								</div>
								<a class="button" href="#">Upload</a>
							</div>

							<div class="dark-grey-gradient with-padding"
								style="height: 300px; overflow: auto">

								<div class="loading-tab stick-to-top">
									<span class="button">File1.zip <img
										src="images/icons/fugue/tick-circle-blue.png" width="16"
										height="16"></span>&nbsp; <span class="button">File2.zip
										<img src="images/icons/fugue/cross-circle.png" width="16"
										height="16">
									</span>&nbsp; <span class="button"> File3.zip <span
										class="progress-bar"><span style="width: 50%">50%</span></span>
										<small>1.74 Mo / 2.75 Mo</small>
									</span>&nbsp; <span class="button"> File4.zip <span
										class="progress-bar"><span class="orange with-stripes"></span></span>
									</span>
								</div>

								<ul class="files">
									<li><a href="#"> <span><img
												src="images/demo/files/file1-mini.png" width="64"
												height="45" class="thumb"></span> Concept car.jpg
									</a></li>
									<li><a href="#"> <span><img
												src="images/demo/files/file2-mini.png" width="64"
												height="45" class="thumb"></span> Concept car 2.jpg
									</a></li>
									<li><a href="#"> <span><img
												src="images/demo/files/file3-mini.png" width="64"
												height="45" class="thumb"></span> Concept car 3.jpg
									</a></li>
									<li><a href="#"> <span><img
												src="images/demo/files/file4-mini.png" width="64"
												height="45" class="thumb"></span> Concept car 4.jpg
									</a></li>
									<li><a href="#"> <span><img
												src="images/icons/finefiles/64/excel.png" width="64"
												height="64"></span> Example.xls
									</a></li>
									<li><a href="#"> <span><img
												src="images/demo/files/file5-mini.png" width="64"
												height="45" class="thumb"></span> Concept car 5.jpg
									</a></li>
									<li><a href="#"> <span><img
												src="images/demo/files/file6-mini.png" width="64"
												height="45" class="thumb"></span> Concept car 6.jpg
									</a></li>
									<li><a href="#"> <span><img
												src="images/icons/finefiles/64/text.png" width="64"
												height="64"></span> Readme.txt
									</a></li>
									<li><a href="#"> <span><img
												src="images/icons/finefiles/64/swf.png" width="64"
												height="64"></span> Animation.swf
									</a></li>
									<li><a href="#"> <span><img
												src="images/demo/files/file7-mini.png" width="64"
												height="45" class="thumb"></span> Concept car 7.jpg
									</a></li>
									<li><a href="#"> <span><img
												src="images/demo/files/file8-mini.png" width="64"
												height="45" class="thumb"></span> Concept car 8.jpg
									</a></li>
									<li><a href="#"> <span><img
												src="images/demo/files/file9-mini.png" width="64"
												height="45" class="thumb"></span> Inside view.jpg
									</a></li>
									<li><a href="#"> <span><img
												src="images/icons/finefiles/64/pdf.png" width="64"
												height="64"></span> Instructions.pdf
									</a></li>
									<li><a href="#"> <span><img
												src="images/icons/finefiles/64/mp3.png" width="64"
												height="64"></span> My_favorite_song.mp3
									</a></li>
									<li><a href="#"> <span><img
												src="images/icons/finefiles/64/text.png" width="64"
												height="64"></span> Copyright.txt
									</a></li>
								</ul>

							</div>
						</div>

						<ul class="message">
							<li>15 files found</li>
						</ul>

					</div>
				</div>

				<div class="block-footer">
					<span class="float-right">24 folders, 248 files</span> 24.5 Mo
					total
				</div>

			</div>
		</div>
	</section>

	<section class="grid_4">
		<div class="block-border">
			<div class="block-content">
				<h1>Tiny and medium calendars</h1>

				<div class="fieldset with-legend grey-bg clearfix">
					<div class="legend">Tiny calendar</div>

					<div class="mini-calendar float-right">
						<div class="calendar-controls">
							<a href="#" class="calendar-prev" title="Previous month"><img
								src="images/cal-arrow-left.png" width="16" height="16"></a> <a
								href="#" class="calendar-next" title="Next month"><img
								src="images/cal-arrow-right.png" width="16" height="16"></a>
							Apr 2010
						</div>

						<table cellspacing="0">
							<thead>
								<tr>
									<th scope="col" class="week-end">S</th>
									<th scope="col">M</th>
									<th scope="col">T</th>
									<th scope="col">W</th>
									<th scope="col">T</th>
									<th scope="col">F</th>
									<th scope="col" class="week-end">S</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="week-end other-month">28</td>
									<td class="other-month">29</td>
									<td class="other-month">30</td>
									<td class="other-month">31</td>
									<td><a href="#">1</a></td>
									<td><a href="#">2</a></td>
									<td class="week-end"><a href="#">3</a></td>
								</tr>
								<tr>
									<td class="week-end"><a href="#">4</a></td>
									<td><a href="#">5</a></td>
									<td><a href="#">6</a></td>
									<td><a href="#">7</a></td>
									<td><a href="#">8</a></td>
									<td class="today"><a href="#">9</a></td>
									<td class="week-end"><a href="#">10</a></td>
								</tr>
								<tr>
									<td class="week-end"><a href="#">11</a></td>
									<td><a href="#">12</a></td>
									<td><a href="#">13</a></td>
									<td><a href="#">14</a></td>
									<td><a href="#">15</a></td>
									<td><a href="#">16</a></td>
									<td class="week-end"><a href="#">17</a></td>
								</tr>
								<tr>
									<td class="week-end"><a href="#">18</a></td>
									<td><a href="#">19</a></td>
									<td><a href="#">20</a></td>
									<td><a href="#">21</a></td>
									<td><a href="#">22</a></td>
									<td><a href="#">23</a></td>
									<td class="week-end"><a href="#">24</a></td>
								</tr>
								<tr>
									<td class="week-end"><a href="#">25</a></td>
									<td class="unavailable">26</td>
									<td class="unavailable">27</td>
									<td class="unavailable">28</td>
									<td><a href="#">29</a></td>
									<td><a href="#">30</a></td>
									<td class="week-end other-month">1</td>
								</tr>
							</tbody>
						</table>
					</div>

					<p class="next-to-mini-calendar">Small calendar ideal for quick
						date selection</p>

				</div>

				<hr class="no-margin">

				<div class="box">
					<p class="mini-infos">
						<strong>Medium calendar</strong>
					</p>
				</div>

				<div class="medium-calendar">
					<div class="calendar-controls">
						<a href="#" class="calendar-prev" title="Previous month"><img
							src="images/cal-arrow-left.png" width="16" height="16"></a> <a
							href="#" class="calendar-next" title="Next month"><img
							src="images/cal-arrow-right.png" width="16" height="16"></a>
						Apr 2010
					</div>

					<table cellspacing="0">
						<thead>
							<tr>
								<th scope="col" class="week-end">Sun</th>
								<th scope="col">Mon</th>
								<th scope="col">Tue</th>
								<th scope="col">Wed</th>
								<th scope="col">Thu</th>
								<th scope="col">Fri</th>
								<th scope="col" class="week-end">Sat</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="week-end other-month">28</td>
								<td class="other-month">29</td>
								<td class="other-month">30</td>
								<td class="other-month">31</td>
								<td><a href="#">1</a></td>
								<td><a href="#"><span class="blue-corner">2</span></a></td>
								<td class="week-end"><a href="#">3</a></td>
							</tr>
							<tr>
								<td class="week-end"><a href="#">4</a></td>
								<td><a href="#">5<span class="nb-events">54</span></a></td>
								<td><a href="#">6</a></td>
								<td><a href="#">7<span class="nb-events">1</span></a></td>
								<td><a href="#"><span class="red-corner"><span
											class="blue-corner">8</span></span></a></td>
								<td><a href="#"><span class="today">9</span></a></td>
								<td class="week-end"><a href="#">10</a></td>
							</tr>
							<tr>
								<td class="week-end"><a href="#">11</a></td>
								<td><a href="#">12</a></td>
								<td><a href="#">13</a></td>
								<td><a href="#">14<span class="nb-events">1</span></a></td>
								<td><a href="#"><span class="red-corner">15</span><span
										class="nb-events">1</span></a></td>
								<td><a href="#">16</a></td>
								<td class="week-end"><a href="#">17</a></td>
							</tr>
							<tr>
								<td class="week-end"><a href="#">18</a></td>
								<td><a href="#">19</a></td>
								<td><a href="#">20<span class="nb-events">1</span></a></td>
								<td><a href="#">21</a></td>
								<td><a href="#">22<span class="nb-events">1</span></a></td>
								<td><a href="#"><span class="blue-corner">23</span></a></td>
								<td class="week-end"><a href="#"><span
										class="blue-corner">24</span></a></td>
							</tr>
							<tr>
								<td class="week-end"><a href="#">25</a></td>
								<td class="unavailable">26</td>
								<td class="unavailable">27</td>
								<td class="unavailable">28</td>
								<td><a href="#">29</a></td>
								<td><a href="#">30</a></td>
								<td class="week-end other-month"><div>
										<span class="blue-corner">1</span><span class="nb-events">2</span>
									</div></td>
								<!-- div required to position elements -->
							</tr>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</section>

	<section class="grid_8">
		<div class="block-border">
			<div class="block-content">
				<h1>Large calendar</h1>

				<div class="block-controls">
					<ul class="controls-buttons">
						<li><a href="#" title="Previous month"><img
								src="images/icons/fugue/navigation-180.png" width="16"
								height="16"></a></li>
						<li class="sep"></li>
						<li class="controls-block"><strong>June 2010</strong></li>
						<li class="sep"></li>
						<li><a href="#" title="Next month"><img
								src="images/icons/fugue/navigation.png" width="16" height="16"></a></li>
					</ul>
				</div>

				<div class="no-margin">
					<table cellspacing="0" class="calendar">
						<thead>
							<tr>
								<th scope="col" class="black-cell"><span class="success"></span></th>
								<th scope="col" class="week-end">Sunday</th>
								<th scope="col">Monday</th>
								<th scope="col">Tuesday</th>
								<th scope="col">Wednesday</th>
								<th scope="col">Thursday</th>
								<th scope="col">Friday</th>
								<th scope="col" class="week-end">Saturday</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">13</th>
								<td class="week-end other-month"><span class="day">28</span>
								</td>
								<td class="other-month"><span class="day">29</span></td>
								<td class="other-month"><span class="day">30</span></td>
								<td class="other-month"><span class="day">31</span></td>
								<td><a href="#" class="day">1</a> <a href="#"
									class="add-event">Add</a></td>
								<td><a href="#" class="day">2</a>
									<ul class="dot-events with-children-tip">
										<li><a href="#">Lena's birthday</a></li>
										<li><a href="#">Replace server hard drive</a></li>
										<li><a href="#">Max's birthday</a></li>
									</ul> <a href="#" class="add-event">Add</a></td>
								<td class="week-end"><a href="#" class="day">3</a> <a
									href="#" class="add-event">Add</a></td>
							</tr>
							<tr>
								<th scope="row">14</th>
								<td class="week-end"><a href="#" class="day">4</a> <a
									href="#" class="add-event">Add</a></td>
								<td><a href="#" class="day">5</a> <a href="#"
									class="add-event">Add</a>
									<ul class="events">
										<li><a href="#"><b>9:00</b> Meeting</a></li>
										<li><a href="#"><b>11:00</b> Meeting with D.H.</a></li>
									</ul>
									<div class="more-events">
										3 more events
										<ul>
											<li><a href="#"><b>14:00</b> Meeting</a></li>
											<li><a href="#"><b>17:00</b> Soccer</a></li>
											<li><a href="#"><b>21:00</b> Diner with Jane</a></li>
										</ul>
									</div></td>
								<td><a href="#" class="day">6</a> <a href="#"
									class="add-event">Add</a></td>
								<td><a href="#" class="day">7</a> <a href="#"
									class="add-event">Add</a>
									<ul class="events">
										<li><a href="#"><b>9:00</b> Meeting</a></li>
									</ul></td>
								<td><a href="#" class="day">8</a>
									<ul class="dot-events with-children-tip">
										<li class="red">Tax payment limit date</li>
										<li><a href="#">Check server hard drive logs</a></li>
									</ul> <a href="#" class="add-event">Add</a></td>
								<td><a href="#" class="day today">9</a> <a href="#"
									class="add-event">Add</a></td>
								<td class="week-end"><a href="#" class="day">10</a> <a
									href="#" class="add-event">Add</a></td>
							</tr>
							<tr>
								<th scope="row">15</th>
								<td class="week-end"><a href="#" class="day">11</a> <a
									href="#" class="add-event">Add</a></td>
								<td><a href="#" class="day">12</a> <a href="#"
									class="add-event">Add</a></td>
								<td><a href="#" class="day">13</a> <a href="#"
									class="add-event">Add</a></td>
								<td><a href="#" class="day">14</a> <a href="#"
									class="add-event">Add</a>
									<ul class="events">
										<li class="red"><b>17:00</b> Meeting</li>
									</ul></td>
								<td><a href="#" class="day">15</a>
									<ul class="dot-events with-children-tip">
										<li class="red">John's birthday</li>
									</ul> <a href="#" class="add-event">Add</a>
									<ul class="events">
										<li><a href="#"><b>17:00</b> Soccer</a></li>
									</ul></td>
								<td><a href="#" class="day">16</a> <a href="#"
									class="add-event">Add</a></td>
								<td class="week-end"><a href="#" class="day">17</a> <a
									href="#" class="add-event">Add</a></td>
							</tr>
							<tr>
								<th scope="row">16</th>
								<td class="week-end"><a href="#" class="day">18</a> <a
									href="#" class="add-event">Add</a></td>
								<td><a href="#" class="day">19</a> <a href="#"
									class="add-event">Add</a></td>
								<td><a href="#" class="day">20</a> <a href="#"
									class="add-event">Add</a></td>
								<td><a href="#" class="day">21</a> <a href="#"
									class="add-event">Add</a>
									<ul class="events">
										<li><a href="#"><b>8:00</b> Meeting</a></li>
									</ul></td>
								<td><a href="#" class="day">22</a> <a href="#"
									class="add-event">Add</a>
									<ul class="events">
										<li><a href="#"><b>17:00</b> Soccer</a></li>
									</ul></td>
								<td><a href="#" class="day">23</a>
									<ul class="dot-events with-children-tip">
										<li><a href="#">Check server hard drive logs</a></li>
									</ul> <a href="#" class="add-event">Add</a></td>
								<td class="week-end"><a href="#" class="day">24</a>
									<ul class="dot-events with-children-tip">
										<li><a href="#">Send final report</a></li>
									</ul> <a href="#" class="add-event">Add</a></td>
							</tr>
							<tr>
								<th scope="row">17</th>
								<td class="week-end"><a href="#" class="day">25</a> <a
									href="#" class="add-event">Add</a></td>
								<td class="unavailable"><span class="day">26</span></td>
								<td class="unavailable"><span class="day">27</span></td>
								<td class="unavailable"><span class="day">28</span></td>
								<td><a href="#" class="day">29</a> <a href="#"
									class="add-event">Add</a></td>
								<td><a href="#" class="day">30</a> <a href="#"
									class="add-event">Add</a></td>
								<td class="week-end other-month"><span class="day">1</span>
									<ul class="dot-events with-children-tip">
										<li>Tom's birthday</li>
									</ul></td>
							</tr>
						</tbody>
					</table>
				</div>

				<ul class="message no-margin">
					<li>18 events found</li>
				</ul>

			</div>
		</div>
	</section>

	<div class="clear"></div>

	<section class="grid_12">
		<div class="block-border">
			<div class="block-content">
				<h1>Week calendar</h1>

				<div class="block-controls">
					<ul class="controls-buttons">
						<li><a href="#" title="Previous week"><img
								src="images/icons/fugue/navigation-180.png" width="16"
								height="16"></a></li>
						<li class="sep"></li>
						<li class="controls-block">Week 27</li>
						<li class="sep"></li>
						<li><a href="#" title="Next week"><img
								src="images/icons/fugue/navigation.png" width="16" height="16"></a></li>
					</ul>
				</div>

				<ul class="week-calendar no-margin">
					<li class="week-cal-hours">
						<div>
							<span class="day">&nbsp;</span>
						</div>
						<ul>
							<li><span>08:00</span></li>
							<li><span>09:00</span></li>
							<li><span>10:00</span></li>
							<li><span>11:00</span></li>
							<li><span>12:00</span></li>
							<li><span>01:00</span></li>
							<li><span>02:00</span></li>
							<li><span>03:00</span></li>
							<li><span>04:00</span></li>
							<li><span>05:00</span></li>
							<li><span>06:00</span></li>
							<li><span>07:00</span></li>
							<li><span>08:00</span></li>
						</ul>
					</li>

					<li class="day1 weekend">
						<div class="day">Sunday</div>
						<ul>
							<li class="lunch from-12 to-14"></li>
						</ul>
					</li>

					<li class="day2">
						<div class="day">
							<ul class="dot-events with-children-tip">
								<li class="red">Tax payment limit date</li>
								<li><a href="#">Check server hard drive logs</a></li>
							</ul>
							Monday
						</div>
						<ul>
							<li class="lunch from-12 to-14"></li>
							<li class="from-10-15 to-11-45">
								<ul class="mini-menu">
									<li><a href="#" title="Edit"><img
											src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
									<li><a href="#" title="Delete"><img
											src="images/icons/fugue/cross-circle.png" width="16"
											height="16"></a></li>
								</ul> <span class="event-time">10:15 - 11:45</span> Event description
							</li>
							<li class="from-14 to-17 purple">
								<ul class="mini-menu">
									<li><a href="#" title="Edit"><img
											src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
									<li><a href="#" title="Delete"><img
											src="images/icons/fugue/cross-circle.png" width="16"
											height="16"></a></li>
								</ul> <span class="event-time">14:00 - 17:00</span> Event description
							</li>
						</ul>
					</li>

					<li class="day3">
						<div class="day">Tuesday</div>
						<ul>
							<li class="lunch from-12 to-14"></li>
							<li class="from-9 to-11-30 half-left">
								<ul class="mini-menu">
									<li><a href="#" title="Edit"><img
											src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
									<li><a href="#" title="Delete"><img
											src="images/icons/fugue/cross-circle.png" width="16"
											height="16"></a></li>
								</ul> <span class="event-time">09:00 - 11:30</span> Event description
							</li>
							<li class="from-10-30 to-12 half-right blue">
								<ul class="mini-menu">
									<li><a href="#" title="Edit"><img
											src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
									<li><a href="#" title="Delete"><img
											src="images/icons/fugue/cross-circle.png" width="16"
											height="16"></a></li>
								</ul> <span class="event-time">10:30 - 12:00</span> Event description
							</li>
							<li class="from-16 to-17-30 orange">
								<ul class="mini-menu">
									<li><a href="#" title="Edit"><img
											src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
									<li><a href="#" title="Delete"><img
											src="images/icons/fugue/cross-circle.png" width="16"
											height="16"></a></li>
								</ul> <span class="event-time">16:00 - 17:30</span> Event description
							</li>
						</ul>
					</li>

					<li class="day4">
						<div class="day">Wednesday</div>
						<ul>
							<li class="unavailable"></li>
						</ul>
					</li>

					<li class="day5">
						<div class="day">Thursday</div>
						<ul>
							<li class="unavailable from-9 to-11"></li>
							<li class="lunch from-12 to-14"></li>
							<li class="from-14-15 to-17-45 green">
								<ul class="mini-menu">
									<li><a href="#" title="Edit"><img
											src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
									<li><a href="#" title="Delete"><img
											src="images/icons/fugue/cross-circle.png" width="16"
											height="16"></a></li>
								</ul> <span class="event-time">14:15 - 17:45</span> Event description
							</li>
						</ul>
					</li>

					<li class="day6">
						<div class="day">Friday</div>
						<ul>
							<li class="lunch from-12 to-14"></li>
							<li class="from-10-15 to-11-45">
								<ul class="mini-menu">
									<li><a href="#" title="Edit"><img
											src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
									<li><a href="#" title="Delete"><img
											src="images/icons/fugue/cross-circle.png" width="16"
											height="16"></a></li>
								</ul> <span class="event-time">10:15 - 11:45</span> Event description
							</li>
						</ul>
					</li>

					<li class="day7 weekend">
						<div class="day">Saturday</div>
						<ul>
							<li class="lunch from-12 to-14"></li>
						</ul>
					</li>

				</ul>
			</div>
		</div>
	</section>

	<section class="grid_4">
		<div class="block-border">
			<div class="block-content">
				<h1>List calendar</h1>

				<div class="block-controls">
					<ul class="controls-buttons">
						<li><label for="show-empty">Show empty days</label> <input
							type="checkbox" name="show-empty" id="show-empty" value="1"
							class="mini-switch" checked="checked"></li>
					</ul>
				</div>

				<ul class="message no-margin">
					<li>12 events found</li>
				</ul>

				<div class="no-margin">
					<table cellspacing="0" class="list-calendar">
						<tbody>
							<tr class="empty">
								<th scope="row">01</th>
								<td>
									<ul class="mini-menu">
										<li><a href="#" title="Add event"><img
												src="images/icons/add.png" width="16" height="16"> Add
												event</a></li>
									</ul> No events
								</td>
							</tr>
							<tr>
								<th scope="row">02</th>
								<td>
									<ul class="mini-menu">
										<li><a href="#" title="Add event"><img
												src="images/icons/add.png" width="16" height="16"> Add
												event</a></li>
									</ul>
									<ul class="events-dots-list">
										<li><a href="#"><span></span> Lena's birthday</a></li>
										<li><a href="#"><span></span> Replace server hard
												drive</a></li>
										<li><a href="#"><span></span> Max's birthday</a></li>
									</ul>
								</td>
							</tr>
							<tr class="empty">
								<th scope="row">03</th>
								<td>
									<ul class="mini-menu">
										<li><a href="#" title="Add event"><img
												src="images/icons/add.png" width="16" height="16"> Add
												event</a></li>
									</ul> No events
								</td>
							</tr>
							<tr class="empty">
								<th scope="row">04</th>
								<td>
									<ul class="mini-menu">
										<li><a href="#" title="Add event"><img
												src="images/icons/add.png" width="16" height="16"> Add
												event</a></li>
									</ul> No events
								</td>
							</tr>
							<tr>
								<th scope="row">05</th>
								<td>
									<ul class="mini-menu">
										<li><a href="#" title="Add event"><img
												src="images/icons/add.png" width="16" height="16"> Add
												event</a></li>
									</ul>
									<ul class="events">
										<li><a href="#"><b>9:00</b> Meeting</a></li>
										<li><a href="#"><b>11:00</b> Meeting with D.H.</a></li>
										<li><a href="#"><b>14:00</b> Meeting</a></li>
									</ul>
									<div class="more-events">
										2 more events
										<ul>
											<li><a href="#"><b>17:00</b> Soccer</a></li>
											<li><a href="#"><b>21:00</b> Diner with Jane</a></li>
										</ul>
									</div>
								</td>
							</tr>
							<tr class="empty">
								<th scope="row">06</th>
								<td>
									<ul class="mini-menu">
										<li><a href="#" title="Add event"><img
												src="images/icons/add.png" width="16" height="16"> Add
												event</a></li>
									</ul> No events
								</td>
							</tr>
							<tr>
								<th scope="row">07</th>
								<td>
									<ul class="mini-menu">
										<li><a href="#" title="Add event"><img
												src="images/icons/add.png" width="16" height="16"> Add
												event</a></li>
									</ul>
									<ul class="events">
										<li><a href="#"><b>9:00</b> Meeting</a></li>
									</ul>
								</td>
							</tr>
							<tr>
								<th scope="row">08</th>
								<td>
									<ul class="mini-menu">
										<li><a href="#" title="Add event"><img
												src="images/icons/add.png" width="16" height="16"> Add
												event</a></li>
									</ul>
									<ul class="events-dots-list">
										<li class="red"><span></span> Tax payment limit date</li>
										<li><a href="#"><span></span> Check server hard drive
												logs</a></li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</section>

	<section class="grid_4">
		<div class="block-border">
			<div class="block-content">
				<h1>Tasks list</h1>

				<div class="task with-legend">
					<div class="legend">
						<img src="images/icons/fugue/status.png" width="16" height="16">
						Standard task
					</div>

					<div class="task-description">
						<ul class="floating-tags">
							<li class="tag-time">5 days remain.</li>
							<li class="tag-tags">Server, disk</li>
							<li class="tag-user">You, Marc</li>
						</ul>

						<h3>Task name</h3>
						Small task description Lorem ipsum
					</div>

					<ul class="task-dialog">
						<li class="auto-hide">
							<form name="task-1-comment" method="post" action=""
								class="form input-with-button">
								<input type="text" name="comment" id="task-1-comment" value=""
									title="Enter comment...">
								<button type="submit">Add</button>
							</form>
						</li>
					</ul>
				</div>

				<div class="task with-legend">
					<div class="legend">
						<img src="images/icons/fugue/status-away.png" width="16"
							height="16"> Soon overdue task
					</div>

					<div class="task-description">
						<ul class="floating-tags">
							<li class="tag-time">Today</li>
							<li class="tag-tags">Website</li>
							<li class="tag-user">You</li>
						</ul>

						<h3>Task name</h3>
						Small task description Lorem ipsum
					</div>

					<ul class="task-dialog">
						<li class="auto-hide">
							<form name="task-1-comment" method="post" action=""
								class="form input-with-button">
								<input type="text" name="comment" id="task-1-comment" value=""
									title="Enter comment...">
								<button type="submit">Add</button>
							</form>
						</li>
					</ul>
				</div>

				<div class="task with-legend">
					<div class="legend">
						<img src="images/icons/fugue/flag.png" width="16" height="16">
						Overdue task
					</div>

					<div class="task-description">
						<ul class="floating-tags">
							<li class="tag-time">5 days ago</li>
							<li class="tag-user">You</li>
						</ul>

						<h3>Task name</h3>
						Small task description Lorem ipsum
					</div>

					<ul class="task-dialog">
						<li><strong>Marc:</strong> Don't forget to tell the client <em>-
								Yesterday</em>
							<ul class="mini-menu">
								<li><a href="#" title="Send mail"><img
										src="images/icons/fugue/mail.png" width="16" height="16"></a></li>
								<li><a href="#" title="Delete comment"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"> Delete</a></li>
							</ul></li>
						<li><strong>John:</strong> I suggest you could ask Dan or
							Sandy for a little help <em>- 2 hours ago</em>
							<ul class="mini-menu">
								<li><a href="#" title="Send mail"><img
										src="images/icons/fugue/mail.png" width="16" height="16"></a></li>
								<li><a href="#" title="Delete comment"><img
										src="images/icons/fugue/cross-circle.png" width="16"
										height="16"> Delete</a></li>
							</ul></li>
						<li class="auto-hide">
							<form name="task-1-comment" method="post" action=""
								class="form input-with-button">
								<input type="text" name="comment" id="task-1-comment" value=""
									title="Enter comment...">
								<button type="submit">Add</button>
							</form>
						</li>
					</ul>
				</div>

				<ul class="message no-margin">
					<li>3 tasks found</li>
				</ul>
			</div>
		</div>
	</section>

	<section class="grid_4">
		<div class="block-border">
			<div class="block-content">
				<h1>Blocks &amp; mini-blocks lists</h1>

				<ul class="blocks-list">
					<li><a href="#" class="float-left"><img
							src="images/icons/fugue/status.png" width="16" height="16">
							Task name</a>
						<ul class="tags float-right">
							<li class="tag-time">5 days</li>
							<li class="tag-tags">Server</li>
							<li class="tag-user">You</li>
						</ul></li>
					<li><a href="#" class="float-left"><img
							src="images/icons/fugue/status.png" width="16" height="16">
							Task name</a>
						<ul class="tags float-right">
							<li class="tag-time">5 days</li>
							<li class="tag-user">You</li>
						</ul></li>
					<li><a href="#" class="float-left"><img
							src="images/icons/fugue/status.png" width="16" height="16">
							Task name</a>
						<ul class="tags float-right">
							<li class="tag-time">5 days</li>
							<li class="tag-tags">Server</li>
						</ul></li>
					<li><a href="#" class="float-left"><img
							src="images/icons/fugue/status.png" width="16" height="16">
							Task name</a>
						<ul class="tags float-right">
							<li class="tag-time">5 days</li>
							<li class="tag-tags">Server</li>
							<li class="tag-user">You</li>
						</ul></li>
					<li><a href="#" class="float-left"><img
							src="images/icons/fugue/status.png" width="16" height="16">
							Task name</a>
						<ul class="tags float-right">
							<li class="tag-tags">Server</li>
							<li class="tag-user">You</li>
						</ul></li>
				</ul>

				<h2>Mini blocks</h2>

				<ul class="mini-blocks-list">
					<li><a href="#" class="float-left"><img
							src="images/icons/fugue/status.png" width="16" height="16">
							Task name</a>
						<ul class="tags float-right">
							<li class="tag-time">5 days</li>
							<li class="tag-user">You</li>
						</ul></li>
					<li><a href="#" class="float-left"><img
							src="images/icons/fugue/status.png" width="16" height="16">
							Task name</a>
						<ul class="tags float-right">
							<li class="tag-time">5 days</li>
							<li class="tag-user">You</li>
						</ul></li>
					<li><a href="#" class="float-left"><img
							src="images/icons/fugue/status.png" width="16" height="16">
							Task name</a>
						<ul class="tags float-right">
							<li class="tag-time">5 days</li>
							<li class="tag-user">You</li>
						</ul></li>
					<li><a href="#" class="float-left"><img
							src="images/icons/fugue/status.png" width="16" height="16">
							Task name</a>
						<ul class="tags float-right">
							<li class="tag-time">5 days</li>
							<li class="tag-tags">Server</li>
						</ul></li>
					<li><a href="#" class="float-left"><img
							src="images/icons/fugue/status.png" width="16" height="16">
							Task name</a>
						<ul class="tags float-right">
							<li class="tag-time">5 days</li>
							<li class="tag-user">You</li>
						</ul></li>
					<li><a href="#" class="float-left"><img
							src="images/icons/fugue/status.png" width="16" height="16">
							Task name</a>
						<ul class="tags float-right">
							<li class="tag-time">5 days</li>
							<li class="tag-user">You</li>
						</ul></li>
				</ul>

				<ul class="message no-margin">
					<li>11 tasks found</li>
				</ul>
			</div>
		</div>
	</section>

	<div class="clear"></div>

	<section class="grid_6">
		<div class="block-border">
			<div class="block-content no-padding">
				<h1>Toolbar</h1>

				<div class="block-controls">

					<ul class="controls-buttons">
						<li><a href="#"><img
								src="images/icons/fugue/control-skip-180.png" width="16"
								height="16"></a></li>
						<li><a href="#"><img
								src="images/icons/fugue/control-double-180.png" width="16"
								height="16"></a></li>
						<li class="sep"></li>
						<li><a href="#"><img
								src="images/icons/fugue/control-180.png" width="16" height="16"></a></li>
						<li><a href="#"><img
								src="images/icons/fugue/control-pause.png" width="16"
								height="16"></a></li>
						<li><a href="#"><img
								src="images/icons/fugue/control-stop-square.png" width="16"
								height="16"></a></li>
						<li><a href="#"><img src="images/icons/fugue/control.png"
								width="16" height="16"></a></li>
						<li class="sep"></li>
						<li><a href="#"><img
								src="images/icons/fugue/control-double.png" width="16"
								height="16"></a></li>
						<li><a href="#"><img
								src="images/icons/fugue/control-skip.png" width="16" height="16"></a></li>
						<li class="sep"></li>
						<li><a href="#"><img
								src="images/icons/fugue/control-eject.png" width="16"
								height="16"></a></li>
						<li><a href="#"><img
								src="images/icons/fugue/control-power.png" width="16"
								height="16"></a></li>
					</ul>

				</div>

			</div>
		</div>
	</section>

	<div class="clear"></div>

	<section class="grid_6">
		<div class="block-border">
			<div class="block-content">
				<h1>Icon list</h1>

				<ul class="icon-list icon-user">
					<li><a href="#"> <span class="icon"></span> John Doe<br>
							<small>Male, 28</small>
					</a></li>
					<li><a href="#"> <span class="icon"></span> John Doe<br>
							<small>Male, 28</small>
					</a></li>
					<li><a href="#"> <span class="icon"></span> John Doe<br>
							<small>Male, 28</small>
					</a></li>
					<li><a href="#"> <span class="icon"></span> John Doe<br>
							<small>Male, 28</small>
					</a></li>
					<li><a href="#"> <span class="icon"></span> John Doe<br>
							<small>Male, 28</small>
					</a></li>
					<li><a href="#"> <span class="icon"></span> John Doe<br>
							<small>Male, 28</small>
					</a></li>
					<li class="icon-warning"><a href="#"> <span class="icon"></span>
							John Doe<br> <small>Male, 28</small>
					</a></li>
					<li><a href="#"> <span class="icon"></span> John Doe<br>
							<small>Male, 28</small>
					</a></li>
					<li><a href="#"> <span class="icon"></span> John Doe<br>
							<small>Male, 28</small>
					</a></li>
					<li><a href="#"> <span class="icon"></span> John Doe<br>
							<small>Male, 28</small>
					</a></li>
				</ul>

				<ul class="message no-margin">
					<li>10 users found</li>
				</ul>
			</div>
		</div>
	</section>

	<section class="grid_6">
		<div class="block-border">
			<div class="block-content">
				<h1>Extended list</h1>

				<ul class="extended-list no-margin icon-user">
					<li><a href="#"> <span class="icon"></span> John Doe<br>
							<small>Male, 28</small>
					</a>

						<ul class="mini-menu">
							<li><a href="#" title="Edit"><img
									src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
							<li><a href="#" title="Send mail"><img
									src="images/icons/fugue/mail.png" width="16" height="16"></a></li>
							<li><a href="#" title="Delete"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"> Delete</a></li>
						</ul>

						<ul class="extended-options">
							<li>Tasks: <strong>5/9</strong><br> <span
								class="progress-bar"><span style="width: 56%"></span></span>
							</li>
							<li>Rating: <strong>3.4</strong><br> <img
								src="images/icons/fugue/star.png" width="16" height="16"><img
								src="images/icons/fugue/star.png" width="16" height="16"><img
								src="images/icons/fugue/star.png" width="16" height="16"><img
								src="images/icons/fugue/star-half.png" width="16" height="16"><img
								src="images/icons/fugue/star-empty.png" width="16" height="16">
							</li>
						</ul></li>
					<li><a href="#"> <span class="icon"></span> John Doe<br>
							<small>Male, 28</small>
					</a>

						<ul class="mini-menu">
							<li><a href="#" title="Edit"><img
									src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
							<li><a href="#" title="Send mail"><img
									src="images/icons/fugue/mail.png" width="16" height="16"></a></li>
							<li><a href="#" title="Delete"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"> Delete</a></li>
						</ul>

						<ul class="extended-options">
							<li>Tasks: <strong>5/9</strong><br> <span
								class="progress-bar"><span style="width: 56%"></span></span>
							</li>
							<li>Rating: <strong>3.4</strong><br> <img
								src="images/icons/fugue/star.png" width="16" height="16"><img
								src="images/icons/fugue/star.png" width="16" height="16"><img
								src="images/icons/fugue/star.png" width="16" height="16"><img
								src="images/icons/fugue/star-half.png" width="16" height="16"><img
								src="images/icons/fugue/star-empty.png" width="16" height="16">
							</li>
						</ul></li>
					<li><a href="#"> <span class="icon"></span> John Doe<br>
							<small>Male, 28</small>
					</a>

						<ul class="mini-menu">
							<li><a href="#" title="Edit"><img
									src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
							<li><a href="#" title="Send mail"><img
									src="images/icons/fugue/mail.png" width="16" height="16"></a></li>
							<li><a href="#" title="Delete"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"> Delete</a></li>
						</ul>

						<ul class="extended-options">
							<li>Tasks: <strong>5/9</strong><br> <span
								class="progress-bar"><span style="width: 56%"></span></span>
							</li>
							<li>Rating: <strong>3.4</strong><br> <img
								src="images/icons/fugue/star.png" width="16" height="16"><img
								src="images/icons/fugue/star.png" width="16" height="16"><img
								src="images/icons/fugue/star.png" width="16" height="16"><img
								src="images/icons/fugue/star-half.png" width="16" height="16"><img
								src="images/icons/fugue/star-empty.png" width="16" height="16">
							</li>
						</ul></li>
					<li><a href="#"> <span class="icon"></span> John Doe<br>
							<small>Male, 28</small>
					</a>

						<ul class="mini-menu">
							<li><a href="#" title="Edit"><img
									src="images/icons/fugue/pencil.png" width="16" height="16"></a></li>
							<li><a href="#" title="Send mail"><img
									src="images/icons/fugue/mail.png" width="16" height="16"></a></li>
							<li><a href="#" title="Delete"><img
									src="images/icons/fugue/cross-circle.png" width="16"
									height="16"> Delete</a></li>
						</ul>

						<ul class="extended-options">
							<li>Tasks: <strong>5/9</strong><br> <span
								class="progress-bar"><span style="width: 56%"></span></span>
							</li>
							<li>Rating: <strong>3.4</strong><br> <img
								src="images/icons/fugue/star.png" width="16" height="16"><img
								src="images/icons/fugue/star.png" width="16" height="16"><img
								src="images/icons/fugue/star.png" width="16" height="16"><img
								src="images/icons/fugue/star-half.png" width="16" height="16"><img
								src="images/icons/fugue/star-empty.png" width="16" height="16">
							</li>
						</ul></li>
				</ul>

				<ul class="message no-margin">
					<li>4 users found</li>
				</ul>
			</div>
		</div>
	</section>

	<div class="clear"></div>

	<div class="grid_4">

		<section class="with-margin">
			<div class="block-border">
				<form class="block-content form" id="simple-list-form" method="post"
					action="">
					<h1>Simple list</h1>

					<p class="input-type-text">
						<input type="text" name="simple-search" id="simple-search"
							value="" style="width: 90%" title="Filter results"> <img
							src="images/icons/fugue/magnifier.png" width="16" height="16"
							class="float-right">
					</p>

					<ul class="simple-list with-icon icon-info">
						<li><a href="#">Lorem ipsum</a></li>
						<li><a href="#">Lorem ipsum</a></li>
						<li><a href="#">Lorem ipsum</a></li>
						<li><a href="#">Lorem ipsum</a></li>
						<li><a href="#">Lorem ipsum</a></li>
					</ul>

				</form>

				<div class="block-content no-title dark-bg">
					<p class="mini-infos">
						Not found? Try <a href="#">advanced search &raquo;</a>
					</p>
				</div>
			</div>
		</section>

		<section>
			<div class="block-border">
				<div class="block-content no-title">

					<ul class="simple-list with-icon">
						<li class="icon-date"><span>Lorem ipsum</span></li>
						<li class="icon-file"><span>Lorem ipsum</span></li>
						<li class="icon-tags"><span>Lorem ipsum</span></li>
						<li class="icon-group"><span>Lorem ipsum</span></li>
					</ul>

				</div>
			</div>
		</section>

	</div>

	<section class="grid_8">
		<div class="block-border">
			<div class="block-content">
				<h1>Help</h1>

				<div class="block-controls">
					<ul class="controls-buttons">
						<li><a href="#" title="Previous page"><img
								src="images/icons/fugue/navigation-180.png" width="16"
								height="16"></a></li>
						<li class="sep"></li>
						<li><a href="#"><strong>Topics list</strong></a></li>
						<li class="sep"></li>
						<li><a href="#" title="Next page"><img
								src="images/icons/fugue/navigation.png" width="16" height="16"></a></li>
					</ul>
				</div>

				<div class="infos">
					<small>Help > CSS</small>
					<h2 class="bigger">Create a new block</h2>
				</div>

				<p class="grey">Lorem ipsum dolor sit amet, consectetur
					adipisicing elit, sed do eiusmod tempor incididunt ut labore et
					dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
					exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate
					velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
					occaecat cupidatat non proident, sunt in culpa qui officia deserunt
					mollit anim id est laborum.</p>

				<p>
					<strong>Follow these steps:</strong>
				</p>

				<dl class="accordion">
					<dt>
						<span class="number">1</span> Insert a block div
					</dt>
					<dd>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex.</p>
						<p>Duis aute irure dolor in reprehenderit in voluptate velit
							esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
							occaecat cupidatat non proident, sunt in culpa qui officia
							deserunt mollit anim id est laborum.</p>
					</dd>

					<dt>
						<span class="number">2</span> Add title
					</dt>
					<dd>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex.</p>
						<p>Duis aute irure dolor in reprehenderit in voluptate velit
							esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
							occaecat cupidatat non proident, sunt in culpa qui officia
							deserunt mollit anim id est laborum.</p>
					</dd>

					<dt>
						<span class="number">3</span> Add navigation or pagination
					</dt>
					<dd>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex.</p>
						<p>Duis aute irure dolor in reprehenderit in voluptate velit
							esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
							occaecat cupidatat non proident, sunt in culpa qui officia
							deserunt mollit anim id est laborum.</p>
					</dd>

					<dt>
						<span class="number">4</span> Insert elements
					</dt>
					<dd>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex.</p>
						<p>Duis aute irure dolor in reprehenderit in voluptate velit
							esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
							occaecat cupidatat non proident, sunt in culpa qui officia
							deserunt mollit anim id est laborum.</p>
					</dd>

					<dt>
						<span class="number">5</span> Adding/removing block paddings
					</dt>
					<dd>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex.</p>
						<p>Duis aute irure dolor in reprehenderit in voluptate velit
							esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
							occaecat cupidatat non proident, sunt in culpa qui officia
							deserunt mollit anim id est laborum.</p>
					</dd>
				</dl>

			</div>
		</div>
	</section>

	<div class="clear"></div>

	<section class="grid_4">
		<div class="block-border">
			<div class="block-content">
				<h1>Arbo list</h1>

				<div class="block-controls">
					<ul class="controls-buttons">
						<li><a href="#"><strong>Expand all</strong></a></li>
						<li class="sep"></li>
						<li><a href="#" title="Refesh"><img
								src="images/icons/fugue/arrow-circle.png" width="16" height="16"></a></li>
					</ul>
				</div>

				<ul class="collapsible-list with-bg">
					<li><b class="toggle"></b> <span>Expanded element</span>
						<ul class="with-icon icon-group">
							<li class="close"><span>Administrators</span>
								<ul class="icon-user">
									<li><a href="#">Jane</a></li>
									<li><a href="#">George</a></li>
								</ul></li>
							<li class="close"><span>Authors</span>
								<ul class="icon-user">
									<li><a href="#">Erik</a></li>
									<li><a href="#">James</a></li>
									<li><a href="#">Nathan</a></li>
									<li><a href="#">Elwin</a></li>
								</ul></li>
							<li><span>Product managers</span>
								<ul class="icon-user">
									<li><a href="#">John</a></li>
									<li><a href="#">Sam</a></li>
									<li><a href="#">Lena</a></li>
									<li><a href="#">Marc</a></li>
								</ul></li>
							<li class="close"><span>Users</span>
								<ul>
									<li class="empty">No user</li>
								</ul></li>
						</ul></li>
					<li class="close"><b class="toggle"></b> <span>Closed
							element</span>
						<ul class="with-icon icon-user">
							<li><a href="#">Erik</a></li>
							<li><a href="#">James</a></li>
							<li><a href="#">Nathan</a></li>
							<li><a href="#">Elwin</a></li>
						</ul></li>
					<li class="close"><b class="toggle"></b> <span>Closed
							element</span>
						<ul class="with-icon icon-user">
							<li><a href="#">Erik</a></li>
							<li><a href="#">James</a></li>
							<li><a href="#">Nathan</a></li>
							<li><a href="#">Elwin</a></li>
						</ul></li>
					<li class="close"><b class="toggle"></b> <span>Closed
							element</span>
						<ul class="with-icon icon-user">
							<li><a href="#">Erik</a></li>
							<li><a href="#">James</a></li>
							<li><a href="#">Nathan</a></li>
							<li><a href="#">Elwin</a></li>
						</ul></li>
				</ul>

			</div>
		</div>
	</section>

	<section class="grid_8">
		<div class="block-border">
			<div class="block-content">
				<h1>Wizard &amp; image gallery</h1>

				<div class="block-controls">
					<ul class="controls-buttons">
						<li><a href="#" title="Previous step"><img
								src="images/icons/fugue/navigation-180.png" width="16"
								height="16"></a></li>
						<li><a href="#" title="Next step"><img
								src="images/icons/fugue/navigation.png" width="16" height="16"></a></li>
					</ul>
				</div>

				<ol class="wizard-steps">
					<li><a href="#"> <span class="number">1<span
								class="status-ok"></span></span> Page title
					</a></li>
					<li><a href="#"> <span class="number">2</span> Image
					</a></li>
					<li class="disabled"><span class="number">3</span> Publish</li>
				</ol>

				<span class="number bigger">2</span> <small>Add new page</small>
				<h2 class="bigger">Choose image</h2>

				<div class="gallery-preview no-margin">
					<a href="#" class="prev"><img
						src="images/icons/fugue/navigation-180.png" width="16" height="16"></a>
					<a href="#" class="next"><img
						src="images/icons/fugue/navigation.png" width="16" height="16"></a>
					<a href="#"><img src="images/demo/files/file1-medium.jpg"
						width="400" height="281"></a>
				</div>

				<ul class="gallery with-padding lite-grey-gradient no-margin">
					<li><a href="#"><img
							src="images/demo/files/file1-mini.png" width="64" height="45"></a></li>
					<li><a href="#"><img
							src="images/demo/files/file2-mini.png" width="64" height="36"></a></li>
					<li><a href="#"><img
							src="images/demo/files/file3-mini.png" width="64" height="43"></a></li>
					<li><a href="#"><img
							src="images/demo/files/file4-mini.png" width="64" height="45"></a></li>
					<li><a href="#"><img
							src="images/demo/files/file5-mini.png" width="64" height="50"></a></li>
					<li><a href="#"><img
							src="images/demo/files/file6-mini.png" width="64" height="48"></a></li>
				</ul>

			</div>
		</div>
	</section>

	<div class="clear"></div>

</article>