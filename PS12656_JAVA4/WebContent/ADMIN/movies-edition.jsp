<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%> --%>

<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h3 class="page-header">
					<i class="fa fa-file-text-o"></i> Movies - Edition
				</h3>
				<ol class="breadcrumb">
					<li><i class="fa fa-home"></i><a href="AdminIndex.jsp">Home</a></li>
					<li><i class="icon_document_alt"></i>Movies</li>
					<li><i class="fa fa-file-text-o"></i>Movies - Edition</li>
				</ol>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading"> Form Elements </header>
					<div class="panel-body">

						<c:url var="url" value="/video-edition" />
						<form class="form-horizontal" action="${url}/video-edition"
							method="post" enctype="multipart/form-data">
							<mark>${message}</mark>
							<div class="form-group">
								<%-- <!--  upload poster-->
								<div class="form-group">
									<label class="col-sm-2 control-label">Poster</label>
									<div class="container">
										<div class="row">
											<div
												class="col-xs-12 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
												<!-- image-preview-filename input [CUT FROM HERE]-->
												<div class="input-group image-preview">
													<input type="text" name="poster"
														value="${formvideo.poster}"
														class="form-control image-preview-filename"
														disabled="disabled">
													<!-- don't give a name === doesn't send on POST/GET -->
													<span class="input-group-btn"> <!-- image-preview-clear button -->
														<button type="button"
															class="btn btn-default image-preview-clear"
															style="display: none;">
															<span class="glyphicon glyphicon-remove"></span> Clear
														</button> <!-- image-preview-input -->
														<div class="btn btn-default image-preview-input">
															<span class="glyphicon glyphicon-folder-open"></span> <span
																class="image-preview-input-title">Browse</span> <input
																type="file" accept="image/png, image/jpeg, image/gif"
																name="input-file-preview" value="${formvideo.poster}" />
															<!-- rename it -->
														</div>

													</span>
												</div>
												<!-- /input-group image-preview [TO HERE]-->
											</div>
										</div>
									</div>
								</div>
							</div> --%>

							
							<div class="form-group">
								<label class="col-sm-2 control-label">Poster</label>
								<div class="col-sm-10">									
										
										<img alt="" src="/PS12656_JAVA4/images/${formvideo.poster}" name="poster">
								</div>
							</div>
							
							
							<div class="form-group">
								<label class="col-sm-2 control-label">YouTube ID</label>
								<div class="col-sm-10">
									<input type="text" value="${formvideo.id}" name="id" id="videoid"
										class="form-control" placeholder="Youtube ID?">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">Video Title</label>
								<div class="col-sm-10">
									<input type="text" value="${formvideo.title}" name="title"
										class="form-control" placeholder="Video Title?">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">View count</label>
								<div class="col-sm-10">
									<input type="number" value="${formvideo.views}" name="views"
										class="form-control" placeholder="View count">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-sm-2">Status?</label>
								<div class="col-sm-10">
									<input ${formvideo.active?'checked':''} name="active"
										type="radio" value="true"> &nbsp; Active &nbsp; &nbsp;
									&nbsp; &nbsp; <input ${formvideo.active?'':'checked'}
										name="active" type="radio" value="false">
									&nbsp;Inactive<br>
								</div>
							</div>


							<div class="form-group">
								<label class="control-label col-sm-2">Description?</label>
								<div class="col-sm-10">
									<textarea class="form-control ckeditor" name="description"
										rows="6">${formvideo.description}</textarea>
								</div>
							</div>


							<!--Button  -->
							<!--modal start-->
							<section class="panel">
								<c:url var="url" value="/admin" />
								
								<button formaction="${url}/video-create" type="submit" class="btn btn-primary">Create</button>
								<button formaction="${url}/video-update" type="submit" class="btn btn-primary">Update</button>
								<button formaction="${url}/video-delete" type="submit" class="btn btn-primary">Delete</button>
								 <a	class="btn btn-danger" type="reset" data-toggle="modal"
									href="${url}/video-edition"> Reset </a>
							</section>
							<!-- Modal -->
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<h4 class="modal-title">Create</h4>
										</div>
										<div class="modal-body">Do you want create this movies?

										</div>
										<div class="modal-footer">
											<button data-dismiss="modal" class="btn btn-default"
												type="button">Close</button>
											<button class="btn btn-success" type="button">Create</button>
										</div>
									</div>
								</div>
							</div>
							<!--modal  -->
							<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<h4 class="modal-title">Update</h4>
										</div>
										<div class="modal-body">Do you want update this movies?

										</div>
										<div class="modal-footer">
											<button data-dismiss="modal" class="btn btn-default"
												type="button">Close</button>
											<button class="btn btn-success" type="button">Save
												update</button>
										</div>
									</div>
								</div>
							</div>
							<!-- modal -->
							<!-- Modal -->
							<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<h4 class="modal-title">Delete</h4>
										</div>
										<div class="modal-body">Do you want delete this movies?

										</div>
										<div class="modal-footer">
											<button data-dismiss="modal" class="btn btn-default"
												type="button">Close</button>
											<button class="btn btn-warning" type="button">
												Confirm</button>
										</div>
									</div>
								</div>
							</div>
							<!-- modal -->
							<!-- Modal -->
							<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<h4 class="modal-title">Modal Tittle</h4>
										</div>
										<div class="modal-body">Body goes here...</div>
										<div class="modal-footer">
											<button class="btn btn-danger" type="button">Ok</button>
										</div>
									</div>
								</div>
							</div>

							<!-- modal -->

						</form>

						<!-- page end-->
				</section>
			</div>
		</div>
	</section>
</section>

<!-- container section end -->