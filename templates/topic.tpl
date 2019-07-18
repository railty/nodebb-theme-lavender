<div class="topic">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<div component="topic/deleted/message" class="alert alert-warning<!-- IF !deleted --> hidden<!-- ENDIF !deleted -->">[[topic:deleted_message]]</div>

	<ul component="topic" id="post-container" class="posts" data-tid="{tid}">
		<!-- BEGIN posts -->
			<li component="post" class="<!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
				<a component="post/anchor" data-index="{posts.index}" name="{posts.index}"></a>
				<div class="post-row">

					<meta itemprop="datePublished" content="{posts.timestampISO}">
					<meta itemprop="dateModified" content="{posts.editedISO}">

					<div class="topic-item">
						<div class="topic-body">
							<div class="row">
								<div class="col-md-12">
									<div class="topic-profile-pic hidden-xs text-center">
										<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
											<!-- IF posts.user.picture -->
											<img itemprop="image" component="user/picture" data-uid="{posts.user.uid}" src="{posts.user.picture}" align="left" class="img-thumbnail" />
											<!-- ELSE -->
											<div class="user-icon" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</div>
											<!-- ENDIF posts.user.picture -->
										</a>
										<small class="username" title="{posts.user.username}"><a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">{posts.user.username}</a></small>

										<!-- IF posts.user.banned -->
										<div class="text-center">
											<span class="label label-danger">[[user:banned]]</span>
										</div>
										<!-- ENDIF posts.user.banned -->

										<!-- IMPORT partials/topic/badge.tpl -->
									</div>
									<div class="topic-text">
										<!-- IF @first -->
										<h1 class="topic-title">
											<p component="post/header" class="topic-title" itemprop="name"><i class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"></i> <i class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->"></i> <span component="topic/title">{title}</span></p>
											<hr>
										</h1>
										<!-- ENDIF @first -->
										<div component="post/content" class="post-content" itemprop="text">{posts.content}</div>
										<!-- IF posts.user.signature -->
										<div class="post-signature">{posts.user.signature}</div>
										<!-- ENDIF posts.user.signature -->
									</div>
								</div>
							</div>
						</div>
						<div class="topic-footer">
							<div class="row">
								<div class="">
									<small class="pull-right">
										<span class="timeago" title="{posts.timestampISO}"></span>
									</small>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- IF !posts.index -->
				<div class="post-bar-placeholder"></div>
				<!-- ENDIF !posts.index -->
			</li>
		<!-- END posts -->
	</ul>

	<div class="post-bar col-xs-12">
		<!-- IMPORT partials/post_bar.tpl -->
	</div>

	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->

	<div class="visible-xs visible-sm pagination-block text-center">
		<div class="progress-bar"></div>
		<div class="wrapper">
			<i class="fa fa-2x fa-angle-double-up pointer fa-fw pagetop"></i>
			<i class="fa fa-2x fa-angle-up pointer fa-fw pageup"></i>
			<span class="pagination-text"></span>
			<i class="fa fa-2x fa-angle-down pointer fa-fw pagedown"></i>
			<i class="fa fa-2x fa-angle-double-down pointer fa-fw pagebottom"></i>
		</div>
	</div>


</div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->

