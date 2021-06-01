<?php
    /**
        * Plugin Name: Games

        * Description:  Games
        * Version:     1.0
        * Author:      Chifco


        * @package   Games
        * @version   1.0.
        * @author    Chifco <contact@chifco.com>
        * @copyright Copyright (c) Chifco
    */

    function initGames()
    {
        add_menu_page('Games', 'Games', 'manage_options', 'Games', 'render_games', '', '80.025');
        add_submenu_page('Games', 'Levels', 'Levels', 'manage_options', 'levels', 'render_games_levels');
				add_submenu_page('Games', 'Questions', 'Questions', 'manage_options', 'questions', 'render_games_questions');

			}


    add_action('admin_menu', 'initGames', 1);

    function games_add_scripts_styles()
    {
        wp_enqueue_script('jquery-2.2.4.min', plugin_dir_url(__FILE__) . 'js/jquery-2.2.4.min.js', array(), false, false);
        wp_enqueue_script('jquery.dataTables.min', plugin_dir_url(__FILE__) . 'js/jquery.dataTables.min.js', array(), false, false);
        wp_enqueue_script('materialize.min', plugin_dir_url(__FILE__) . 'js/materialize.min.js', array(), false, false);
        wp_enqueue_script('dataTables.material.min', plugin_dir_url(__FILE__) . 'js/dataTables.material.min.js', array(), false, false);
        wp_enqueue_script('Games', plugin_dir_url(__FILE__) . 'js/game-grid.js', array(), false, false);
        wp_enqueue_script('sweetalert-js', plugin_dir_url(__FILE__).'js/sweetalert.min.js', null, null);
        
		wp_enqueue_style('datatable-responsive', '//cdn.datatables.net/responsive/2.2.3/css/dataTables.responsive.css', array(), false, false);
        wp_enqueue_script('datatable-responsive', '//cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.js', array(), false, false);
		
		$current_user = wp_get_current_user();
        wp_localize_script('hoteliers', 'MyAjax', array( 'ajaxurl' => site_url(),'current_user_id' => get_current_user_id(),'current_user_name' => $current_user->user_email,'current_user_pass'=> $current_user->user_pass,'role'=> $current_user->roles[0] ));


        wp_enqueue_style('materialize.min', plugin_dir_url(__FILE__) . 'css/materialize.min.css');
        wp_enqueue_style('material.min', plugin_dir_url(__FILE__) . 'css/material.min.css');
        wp_enqueue_style('icon', plugin_dir_url(__FILE__) . 'css/icon.css');
        wp_enqueue_style('gamecss', plugin_dir_url(__FILE__) . 'css/game-grid.css');
    }


      function games_addlevel_scripts_styles()
      {
          wp_enqueue_script('jquery-2.2.4.min', plugin_dir_url(__FILE__) . 'js/jquery-2.2.4.min.js', array(), false, false);
          wp_enqueue_script('jquery.dataTables.min', plugin_dir_url(__FILE__) . 'js/jquery.dataTables.min.js', array(), false, false);
          wp_enqueue_script('materialize.min', plugin_dir_url(__FILE__) . 'js/materialize.min.js', array(), false, false);
          wp_enqueue_script('dataTables.material.min', plugin_dir_url(__FILE__) . 'js/dataTables.material.min.js', array(), false, false);
          wp_enqueue_script('levels', plugin_dir_url(__FILE__) . 'js/level-grid.js', array(), false, false);
          wp_enqueue_script('sweetalert-js', plugin_dir_url(__FILE__).'js/sweetalert.min.js', null, null);
          $current_user = wp_get_current_user();
          wp_localize_script('hoteliers', 'MyAjax', array( 'ajaxurl' => site_url(),'current_user_id' => get_current_user_id(),'current_user_name' => $current_user->user_email,'current_user_pass'=> $current_user->user_pass,'role'=> $current_user->roles[0] ));


          wp_enqueue_style('materialize.min', plugin_dir_url(__FILE__) . 'css/materialize.min.css');
          wp_enqueue_style('material.min', plugin_dir_url(__FILE__) . 'css/material.min.css');
          wp_enqueue_style('icon', plugin_dir_url(__FILE__) . 'css/icon.css');
          wp_enqueue_style('levelcss', plugin_dir_url(__FILE__) . 'css/level-grid.css');
      }




    function render_games()
    {
        games_add_scripts_styles(); ?>

	<!DOCTYPE html>
	<html>
		<title>Games</title>
		<head>
			<meta charset="UTF-8">
		</head>
		<body>
		
    <div id="loader" class="preloader-wrapper big active" style="margin-left: 42%;margin-top: 20%;margin-bottom: 20%;">
    <div class="spinner-layer spinner-red-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
      </div>
    </div>
  </div>		
		
<div id="hidedcontent" style="display:none;">
<div id="activatemodal" class="modal " style="width:30%!important;">
    <div class="modal-content ">
      <h4>Change Game status </h4>
      <div class="row">
        <h6>Are you sure ?</h6>
      </div>
    </div>
    <div class="modal-footer">

	<button class="btn  red modal-close" onclick="changestatclose()">
    <i class="material-icons">close</i>
    </button>
	<button class="btn  green modal-close" onclick="changestat()" >
    <i class="material-icons">save</i>
    </button>
    </div>
  </div>
<div class="hide">
<label for="changestatid">contains the row id to delete</label>
<input type="text" readonly class="form-control" id="changestatid">
</div>
<div class="hide">
<label for="editgameid">contains the row id to delete</label>
<input type="text" readonly class="form-control" id="editgameid">
</div>
			<div id="modal1" class="modal ">
				<div id="adddiv" class="modal-content ">
					<h4>Add new game</h4>





					<div class="row">
						<div class="input-field col s12">
							<input id="title" type="text" class="validate">
							<label for="title">Title</label>
						</div>
					</div>
					<div class="row">
						<div class="row">
							<div class="input-field col s12">
								<textarea id="description" class="materialize-textarea"></textarea>
								<label for="description">Description</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="switch">
							<label>
								disabled
								<input id="active" type="checkbox">
								<span class="lever"></span>
								enabled
							</label>
						</div>
					</div>
					<div class="row">
						<div class="row">
							<div class="input-field col s12">
								<select id="status" class="materialize-textarea">
								<option value="new">New</option>
								<option value="inprogress">In progress</option>
								<option value="confirmed">Confirmed</option>
								<option value="cancelled" >Cancelled</option>
								</select>
								<label for="status">Status</label>
							</div>
						</div>
					</div>


					<div class="row">
					<div class="file-field input-field col s12">
					  <div class="btn">
						<span>Image</span>
						<input id="upload_file" type="file" >
						</div>
					  <div class="file-path-wrapper">
						<input  id="imgvalidate" class="file-path validate" type="text">
					  </div>
					</div>
					<div class="file-field input-field col s12">
					  <div class="btn">
						<span>game</span>
						<input id="game_file" type="file" >
						</div>
					  <div class="file-path-wrapper">
						<input id="gamevalidate" class="file-path validate" type="text">
					  </div>
					</div>

					</div>
				</div>

				<div class="modal-footer">
					<a class="modal-action modal-close  btn-flat btn-border">Cancel</a>
					<button class="btn" onclick="adddata()">Validate</button>
				</div>
			 </div>


			<!-- ************************************************************************** -->






			<div id="editmodal" class="modal ">
				<div id="adddiv" class="modal-content ">
					<h4>Edit game</h4>
					<div class="row">
						<div class="input-field col s12">
							<input id="edittitle" type="text" class="validate">
							<label for="edittitle">Title</label>
						</div>
					</div>
					<div class="row">
						<div class="row">
							<div class="input-field col s12">
								<textarea id="editdescription" class="materialize-textarea"></textarea>
								<label for="editdescription">Description</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="row">
							<div class="input-field col s12">
								<select id="editstatus" class="materialize-textarea">
								<option value="new" selected>New</option>
								<option value="inprogress">In progress</option>
								<option value="confirmed">Confirmed</option>
								<option value="cancelled" >Cancelled</option>
								</select>
								<label for="editstatus">Status</label>
							</div>
						</div>
					</div>

					<div class="row ">
					<div class="file-field input-field col s12">
					  <div class="btn">
						<span>Image</span>
						<input id="up_upload_file" type="file">
						</div>
					  <div class="file-path-wrapper">
						<input class="file-path validate" type="text">
					  </div>
					</div>


					</div>
				</div>

				<div class="modal-footer">
					<a class="modal-action modal-close btn-flat btn-border">Cancel</a>
					<button class="btn  modal-close" onclick="editdata()">Validate</button>
				</div>
			 </div>
			 <div id="deletegamemodal" class="modal" style="width: 30% !important;height: 230px;">
									<div id="deletediv" class="modal-content">

                    <h4>Delete game</h4>
                    <div class="row">
                      <h6>Are you sure ?</h6>
											<input type="hidden" value="" id="delete_gameid">
                    </div>
                    </div>
											<div class="modal-footer">
                        <a class="modal-action modal-close  btn-flat btn-border">Cancel</a>
    										<button class="btn   modal-close" onclick="deletedatagame()">Validate</button>
                      </div>
				          </div>
				</div>


			<!-- ************************************************************************** -->

			<div style="margin:1%;" class="" >
				<table id="games-grid"  class="table striped highlight " cellspacing="0" width="100%" >

					<thead>
						<tr>
							<th>ID</th>
							<th>Title</th>
							<th>Description</th>
							<th>Etat</th>
							<th>Status</th>
							<th>Image</th>
							<th>Link</th>
							<th>Action</th>

						</tr>
					</thead>
				</table>
			</div>
	</div>
			<script>
				var plugin_dir_url="<?php echo(plugins_url()); ?>";
			</script>

		</body>
	</html>
	<?php
    }

    function render_games_levels()
    {
        games_addlevel_scripts_styles(); ?>

	<!DOCTYPE html>
	<html>
	<title>levels</title>

	<head>
	<meta charset="UTF-8">
	</head>

	<body>
    <div id="loader" class="preloader-wrapper big active" style="margin-left: 42%;margin-top: 20%;margin-bottom: 20%;">
    <div class="spinner-layer spinner-red-only">
      <div class="circle-clipper left">
        <div class="circle"></div>
      </div><div class="gap-patch">
        <div class="circle"></div>
      </div><div class="circle-clipper right">
        <div class="circle"></div>
      </div>
    </div>
  </div>

<div id="hidedcontent" style="display:none;">
		<div id="modal1" class="modal">
			<div id="adddiv" class="modal-content">
				<h4>Add new level</h4>
      <div class="row">
		<div class="input-field col s12">
	    <select id="gamesselect">

	    </select>
	    <label>Game</label>
	  </div>
    </div>

				<div class="row">
					<div class="input-field col s12">
						<input id="level" type="number" min=0 class="validate">
						<label for="level">level</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<input id="maxscore" type="number" min=0 class="validate">
						<label for="maxscore">Max score</label>
					</div>
				</div>
							</div>

							<div class="modal-footer">
								<a class="modal-action modal-close btn-flat btn-border">Cancel</a>
								<button class="btn  " onclick="adddata()">Validate</button>
							</div>
						</div>


						<!-- ************************************************************************** -->
						<div class="hide">
							<label for="editlvlid">contains the row id to delete</label>
							<input type="text" readonly class="form-control" id="editlvlid">
						</div>

						<div id="editmodal" class="modal">
							<div id="editdiv" class="modal-content">
								<h4>Edit level</h4>
                <div class="row">
              <div class="input-field col s12">
                <select id="editgamesselect">

                </select>
                <label>Game</label>
              </div>
              </div>
								<div class="row">
									<div class="input-field col s12">
										<input id="editlevel" type="number" min=0 class="validate">
										<label for="editlevel">level</label>
									</div>
								</div>
								<div class="row">
									<div class="input-field col s12">
										<input id="editmaxscore" type="number" min=0 class="validate">
										<label for="editmaxscore">Max score</label>
									</div>
								</div>
									</div>

									<div class="modal-footer">
										<a class="modal-action modal-close  btn-flat btn-border">Cancel</a>
										<button class="btn   modal-close" onclick="editdata()">Validate</button>
									</div>
								</div>


								<div class="hide">
									<label for="editlvlid">contains the row id to delete</label>
									<input type="text" readonly class="form-control" id="deletelvlid">
								</div>

								<div id="deletemodal" class="modal" style="width: 30% !important;height: 230px;">
									<div id="deletediv" class="modal-content">

                    <h4>Delete traduction</h4>
                    <div class="row">
                      <h6>Are you sure ?</h6>
                    </div>
                    </div>
											<div class="modal-footer">
                        <a class="modal-action modal-close  btn-flat btn-border">Cancel</a>
    										<button class="btn   modal-close" onclick="deletedata()">Validate</button>
                        </div>
											</div>



								<!-- ************************************************************************** -->

								<div style="margin:1%;">
									<table id="level-grid" class="table striped highlight responsive-table" cellspacing="0" width="100%">

										<thead>
											<tr>
												<th>ID</th>
												<th>Game</th>
												<th>Level</th>
												<th>MAX score</th>
												<th>Action</th>


											</tr>
										</thead>
									</table>
								</div>
								</div>
								<script>
									var plugin_dir_url = "<?php echo(plugins_url()); ?>";
								</script>

	</body>

	</html>
<?php
    }
?>
