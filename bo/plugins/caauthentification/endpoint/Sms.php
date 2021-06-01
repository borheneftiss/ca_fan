<?php

/**
 * Access Sms
 */
class WP_REST_Sms_Controller extends WP_REST_Controller {

    public function __construct() {
        $this->namespace = 'caauth';
        $this->rest_base = 'Sms';
        $this->meta = new WP_REST_User_Meta_Fields();
    }

    /**
     * Register the routes for the objects of the controller.
     */
    public function register_routes() {
        
        
        /**
         * Route web service verification ca user .
         */
        register_rest_route( $this->namespace, '/verifmobile', array(
            
            
            array(
                'methods'         => 'POST',
                'callback'        => array( $this, 'get_item' ),
                'permission_callback' => array( $this, 'get_items_permissions_check' ),
                'args'            => $this->get_collection_params(),
            ),
            
            
            'schema' => array( $this, 'get_public_item_schema' ),
         ) );
         /**
         * Route web service sendSMS to CA mobile phonenumber .
         */
        register_rest_route( $this->namespace, '/sendsms', array(  
            array(
                'methods'         => 'POST',
                'callback'        => array( $this, 'send_item_sms' ),
                'permission_callback' => array( $this, 'get_items_permissions_check' ),
                'args'            => $this->get_collection_params(),
            ),
            
            
            'schema' => array( $this, 'get_public_item_schema' ),
         ) );
         /**
         * Route web service Verification de code CA mobile phonenumber .
         */
        register_rest_route( $this->namespace, '/verifcode', array(  
            array(
                'methods'         => 'POST',
                'callback'        => array( $this, 'check_item_code' ),
                'permission_callback' => array( $this, 'get_items_permissions_check' ),
                'args'            => $this->get_collection_params(),
            ),
            
            
            'schema' => array( $this, 'get_public_item_schema' ),
         ) );
         }

    /**
     * Permissions check for getting all users.
     *
     * @param WP_REST_Request $request Full details about the request.
     * @return WP_Error|boolean
     */
    public function get_items_permissions_check( $request ) {
        // Check if roles is specified in GET request and if user can list users.
        if ( ! empty( $request['roles'] ) && ! current_user_can( 'list_users' ) ) {
            return new WP_Error( 'rest_user_cannot_view', __( 'Sorry, you cannot filter by role.' ), array( 'status' => rest_authorization_required_code() ) );
        }

        if ( 'edit' === $request['context'] && ! current_user_can( 'list_users' ) ) {
            return new WP_Error( 'rest_forbidden_context', __( 'Sorry, you cannot view this resource with edit context.' ), array( 'status' => rest_authorization_required_code() ) );
        }

        if ( in_array( $request['orderby'], array( 'email', 'registered_date' ), true ) && ! current_user_can( 'list_users' ) ) {
            return new WP_Error( 'rest_forbidden_orderby', __( 'Sorry, you cannot order by this parameter.' ), array( 'status' => rest_authorization_required_code() ) );
        }

        return true;
    }

   
   
    /**
     * Check phonenumber informations
     *
     * @param WP_REST_Request $request Full details about the request.
     * @return WP_Error|WP_REST_Response
     */
    public function get_item( $request ) {
        
       
        $parameters = $request->get_params();
        $sms=new SmsEntity();
        $smsCaVerif=$sms->check_phonenumber_ca($parameters);
        return $smsCaVerif;
        
    }
    /**
     * SEND sms
     *
     * @param WP_REST_Request $request Full details about the request.
     * @return WP_Error|WP_REST_Response
     */
    public function send_item_sms( $request ) {
        
        
        $parameters = $request->get_params();
        $sms=new SmsEntity();
        $smsCaVerif=$sms->send_sms_verif($parameters);
        return $smsCaVerif;
        
    }
    /**
     * verification code sms
     *
     * @param WP_REST_Request $request Full details about the request.
     * @return WP_Error|WP_REST_Response
     */
    public function check_item_code( $request ) {   
        $parameters = $request->get_params();
        $sms=new SmsEntity();
        $smsCacheck=$sms->check_sms_code($parameters);
        return $smsCacheck;
        
    }
	
    
    
    /**
     * Check if a given request has access to read a user
     *
     * @param  WP_REST_Request $request Full details about the request.
     * @return WP_Error|boolean
     */
    public function get_item_permissions_check( $request ) {
        
		
        $id = (int) $request['id'];
        $user = get_userdata( $id );
        $types = get_post_types( array( 'show_in_rest' => true ), 'names' );

        if ( empty( $id ) || empty( $user->ID ) ) {
            return new WP_Error( 'rest_user_invalid_id', __( 'Invalid resource id.' ), array( 'status' => 404 ) );
        }

        if ( get_current_user_id() === $id ) {
            return true;
        }

        if ( 'edit' === $request['context'] && ! current_user_can( 'list_users' ) ) {
            return new WP_Error( 'rest_user_cannot_view', __( 'Sorry, you cannot view this resource with edit context.' ), array( 'status' => rest_authorization_required_code() ) );
        } else if ( ! count_user_posts( $id, $types ) && ! current_user_can( 'edit_user', $id ) && ! current_user_can( 'list_users' ) ) {
            return new WP_Error( 'rest_user_cannot_view', __( 'Sorry, you cannot view this resource.' ), array( 'status' => rest_authorization_required_code() ) );
        }

        return true;
    }

    

    /**
     * Get the current user
     *
     * @param WP_REST_Request $request Full details about the request.
     * @return WP_Error|WP_REST_Response
     */
    public function get_current_item( $request ) {
        $current_user_id = get_current_user_id();
        if ( empty( $current_user_id ) ) {
            return new WP_Error( 'rest_not_logged_in', __( 'You are not currently logged in.' ), array( 'status' => 401 ) );
        }

        $user = wp_get_current_user();
        $response = $this->prepare_item_for_response( $user, $request );
        $response = rest_ensure_response( $response );
        $response->header( 'Location', rest_url( sprintf( '%s/%s/%d', $this->namespace, $this->rest_base, $current_user_id ) ) );
        $response->set_status( 302 );

        return $response;
    }

    /**
     * Check if a given request has access create users
     *
     * @param  WP_REST_Request $request Full details about the request.
     * @return boolean
     */
    public function create_item_permissions_check( $request ) {

        if ( ! current_user_can( 'create_users' ) ) {
            return new WP_Error( 'rest_cannot_create_user', __( 'Sorry, you are not allowed to create resource.' ), array( 'status' => rest_authorization_required_code() ) );
        }

        return true;
    }

    /**
     * Create a single user
     *
     * @param WP_REST_Request $request Full details about the request.
     * @return WP_Error|WP_REST_Response
     */
    public function create_item( $request ) {

        if ( ! empty( $request['id'] ) ) {
            return new WP_Error( 'rest_user_exists', __( 'Cannot create existing resource.' ), array( 'status' => 400 ) );
        }

        $schema = $this->get_item_schema();

        if ( ! empty( $request['roles'] ) && ! empty( $schema['properties']['roles'] ) ) {
            $check_permission = $this->check_role_update( $request['id'], $request['roles'] );
            if ( is_wp_error( $check_permission ) ) {
                return $check_permission;
            }
        }

        $user = $this->prepare_item_for_database( $request );

        if ( is_multisite() ) {
            $ret = wpmu_validate_user_signup( $user->user_login, $user->user_email );
            if ( is_wp_error( $ret['errors'] ) && ! empty( $ret['errors']->errors ) ) {
                return $ret['errors'];
            }
        }

        if ( is_multisite() ) {
            $user_id = wpmu_create_user( $user->user_login, $user->user_pass, $user->user_email );
            if ( ! $user_id ) {
                return new WP_Error( 'rest_user_create', __( 'Error creating new resource.' ), array( 'status' => 500 ) );
            }
            $user->ID = $user_id;
            $user_id = wp_update_user( $user );
            if ( is_wp_error( $user_id ) ) {
                return $user_id;
            }
        } else {
            $user_id = wp_insert_user( $user );
            if ( is_wp_error( $user_id ) ) {
                return $user_id;
            }
        }

        $user = get_user_by( 'id', $user_id );
        if ( ! empty( $request['roles'] ) && ! empty( $schema['properties']['roles'] ) ) {
            array_map( array( $user, 'add_role' ), $request['roles'] );
        }

        if ( ! empty( $schema['properties']['meta'] ) && isset( $request['meta'] ) ) {
            $meta_update = $this->meta->update_value( $request['meta'], $user_id );
            if ( is_wp_error( $meta_update ) ) {
                return $meta_update;
            }
        }

        $fields_update = $this->update_additional_fields_for_object( $user, $request );
        if ( is_wp_error( $fields_update ) ) {
            return $fields_update;
        }

        /**
         * Fires after a user is created or updated via the REST API.
         *
         * @param WP_User         $user      Data used to create the user.
         * @param WP_REST_Request $request   Request object.
         * @param boolean         $creating  True when creating user, false when updating user.
         */
        do_action( 'rest_insert_user', $user, $request, true );

        $request->set_param( 'context', 'edit' );
        $response = $this->prepare_item_for_response( $user, $request );
        $response = rest_ensure_response( $response );
        $response->set_status( 201 );
        $response->header( 'Location', rest_url( sprintf( '%s/%s/%d', $this->namespace, $this->rest_base, $user_id ) ) );

        return $response;
    }

    /**
     * Check if a given request has access update a user
     *
     * @param  WP_REST_Request $request Full details about the request.
     * @return boolean
     */
    public function update_item_permissions_check( $request ) {

        $id = (int) $request['id'];

        if ( ! current_user_can( 'edit_user', $id ) ) {
            return new WP_Error( 'rest_cannot_edit', __( 'Sorry, you are not allowed to edit resource.' ), array( 'status' => rest_authorization_required_code() ) );
        }

        if ( ! empty( $request['roles'] ) && ! current_user_can( 'edit_users' ) ) {
            return new WP_Error( 'rest_cannot_edit_roles', __( 'Sorry, you are not allowed to edit roles of this resource.' ), array( 'status' => rest_authorization_required_code() ) );
        }

        return true;
    }

    
    /**
     * Check if a given request has access delete item
     *
     * @param  WP_REST_Request $request Full details about the request.
     * @return boolean
     */
    public function delete_item_permissions_check( $request ) {

        $id = (int) $request['id'];

        if ( ! current_user_can( 'delete_user', $id ) ) {
            return new WP_Error( 'rest_user_cannot_delete', __( 'Sorry, you are not allowed to delete this resource.' ), array( 'status' => rest_authorization_required_code() ) );
        }

        return true;
    }

    
    

    /**
     * Prepare a single user output for response
     *
     * @param object $user User object.
     * @param WP_REST_Request $request Request object.
     * @return WP_REST_Response $response Response data.
     */
    public function prepare_item_for_response( $user, $request ) {

        $data = array();
        $schema = $this->get_item_schema();
        if ( ! empty( $schema['properties']['id'] ) ) {
            $data['id'] = $user->ID;
        }

        if ( ! empty( $schema['properties']['username'] ) ) {
            $data['username'] = $user->user_login;
        }

        if ( ! empty( $schema['properties']['name'] ) ) {
            $data['name'] = $user->display_name;
        }

        if ( ! empty( $schema['properties']['first_name'] ) ) {
            $data['first_name'] = $user->first_name;
        }

        if ( ! empty( $schema['properties']['last_name'] ) ) {
            $data['last_name'] = $user->last_name;
        }

        if ( ! empty( $schema['properties']['email'] ) ) {
            $data['email'] = $user->user_email;
        }

        if ( ! empty( $schema['properties']['url'] ) ) {
            $data['url'] = $user->user_url;
        }

        if ( ! empty( $schema['properties']['description'] ) ) {
            $data['description'] = $user->description;
        }

        if ( ! empty( $schema['properties']['link'] ) ) {
            $data['link'] = get_author_posts_url( $user->ID, $user->user_nicename );
        }

        if ( ! empty( $schema['properties']['nickname'] ) ) {
            $data['nickname'] = $user->nickname;
        }

        if ( ! empty( $schema['properties']['slug'] ) ) {
            $data['slug'] = $user->user_nicename;
        }

        if ( ! empty( $schema['properties']['roles'] ) ) {
            // Defensively call array_values() to ensure an array is returned.
            $data['roles'] = array_values( $user->roles );
        }

        if ( ! empty( $schema['properties']['registered_date'] ) ) {
            $data['registered_date'] = date( 'c', strtotime( $user->user_registered ) );
        }

        if ( ! empty( $schema['properties']['capabilities'] ) ) {
            $data['capabilities'] = (object) $user->allcaps;
        }

        if ( ! empty( $schema['properties']['extra_capabilities'] ) ) {
            $data['extra_capabilities'] = (object) $user->caps;
        }

        if ( ! empty( $schema['properties']['avatar_urls'] ) ) {
            $data['avatar_urls'] = rest_get_avatar_urls( $user->user_email );
        }

        if ( ! empty( $schema['properties']['meta'] ) ) {
            $data['meta'] = $this->meta->get_value( $user->ID, $request );
        }

        $context = ! empty( $request['context'] ) ? $request['context'] : 'embed';

        $data = $this->add_additional_fields_to_object( $data, $request );
        $data = $this->filter_response_by_context( $data, $context );

        // Wrap the data in a response object
        $response = rest_ensure_response( $data );

        $response->add_links( $this->prepare_links( $user ) );

        /**
         * Filter user data returned from the REST API.
         *
         * @param WP_REST_Response $response  The response object.
         * @param object           $user      User object used to create response.
         * @param WP_REST_Request  $request   Request object.
         */
        return apply_filters( 'rest_prepare_user', $response, $user, $request );
    }

    /**
     * Prepare links for the request.
     *
     * @param WP_Post $user User object.
     * @return array Links for the given user.
     */
    protected function prepare_links( $user ) {
        $links = array(
            'self' => array(
                'href' => rest_url( sprintf( '%s/%s/%d', $this->namespace, $this->rest_base, $user->ID ) ),
            ),
            'collection' => array(
                'href' => rest_url( sprintf( '%s/%s', $this->namespace, $this->rest_base ) ),
            ),
        );

        return $links;
    }

    /**
     * Prepare a single user for create or update
     *
     * @param WP_REST_Request $request Request object.
     * @return object $prepared_user User object.
     */
    protected function prepare_item_for_database( $request ) {
        $prepared_user = new stdClass;

        $schema = $this->get_item_schema();

        // required arguments.
        if ( isset( $request['email'] ) && ! empty( $schema['properties']['email'] ) ) {
            $prepared_user->user_email = $request['email'];
        }
        if ( isset( $request['username'] ) && ! empty( $schema['properties']['username'] ) ) {
            $prepared_user->user_login = $request['username'];
        }
        if ( isset( $request['password'] ) && ! empty( $schema['properties']['password'] ) ) {
            $prepared_user->user_pass = $request['password'];
        }

        // optional arguments.
        if ( isset( $request['id'] ) ) {
            $prepared_user->ID = absint( $request['id'] );
        }
        if ( isset( $request['name'] ) && ! empty( $schema['properties']['name'] ) ) {
            $prepared_user->display_name = $request['name'];
        }
        if ( isset( $request['first_name'] ) && ! empty( $schema['properties']['first_name'] ) ) {
            $prepared_user->first_name = $request['first_name'];
        }
        if ( isset( $request['last_name'] ) && ! empty( $schema['properties']['last_name'] ) ) {
            $prepared_user->last_name = $request['last_name'];
        }
        if ( isset( $request['nickname'] ) && ! empty( $schema['properties']['nickname'] ) ) {
            $prepared_user->nickname = $request['nickname'];
        }
        if ( isset( $request['slug'] ) && ! empty( $schema['properties']['slug'] ) ) {
            $prepared_user->user_nicename = $request['slug'];
        }
        if ( isset( $request['description'] ) && ! empty( $schema['properties']['description'] ) ) {
            $prepared_user->description = $request['description'];
        }

        if ( isset( $request['url'] ) && ! empty( $schema['properties']['url'] ) ) {
            $prepared_user->user_url = $request['url'];
        }

        // setting roles will be handled outside of this function.
        if ( isset( $request['roles'] ) ) {
            $prepared_user->role = false;
        }

        /**
         * Filter user data before inserting user via the REST API.
         *
         * @param object          $prepared_user User object.
         * @param WP_REST_Request $request       Request object.
         */
        return apply_filters( 'rest_pre_insert_user', $prepared_user, $request );
    }

    /**
     * Determine if the current user is allowed to make the desired roles change.
     *
     * @param integer $user_id
     * @param array   $roles
     * @return WP_Error|boolean
     */
    protected function check_role_update( $user_id, $roles ) {
        global $wp_roles;

        foreach ( $roles as $role ) {

            if ( ! isset( $wp_roles->role_objects[ $role ] ) ) {
                return new WP_Error( 'rest_user_invalid_role', sprintf( __( 'The role %s does not exist.' ), $role ), array( 'status' => 400 ) );
            }

            $potential_role = $wp_roles->role_objects[ $role ];
            // Don't let anyone with 'edit_users' (admins) edit their own role to something without it.
            // Multisite super admins can freely edit their blog roles -- they possess all caps.
            if ( ! ( is_multisite() && current_user_can( 'manage_sites' ) ) && get_current_user_id() === $user_id && ! $potential_role->has_cap( 'edit_users' ) ) {
                return new WP_Error( 'rest_user_invalid_role', __( 'You cannot give resource that role.' ), array( 'status' => rest_authorization_required_code() ) );
            }

            // The new role must be editable by the logged-in user.

            /** Include admin functions to get access to get_editable_roles() */
            require_once ABSPATH . 'wp-admin/includes/admin.php';

            $editable_roles = get_editable_roles();
            if ( empty( $editable_roles[ $role ] ) ) {
                return new WP_Error( 'rest_user_invalid_role', __( 'You cannot give resource that role.' ), array( 'status' => 403 ) );
            }
        }

        return true;

    }

    /**
     * Get the User's schema, conforming to JSON Schema
     *
     * @return array
     */
    public function get_item_schema() {
        $schema = array(
            '$schema'    => 'http://json-schema.org/draft-04/schema#',
            'title'      => 'user',
            'type'       => 'object',
            'properties' => array(
                'id'          => array(
                    'description' => __( 'Unique identifier for the resource.' ),
                    'type'        => 'integer',
                    'context'     => array( 'embed', 'view', 'edit' ),
                    'readonly'    => true,
                ),
                'username'    => array(
                    'description' => __( 'Login name for the resource.' ),
                    'type'        => 'string',
                    'context'     => array( 'edit' ),
                    'required'    => true,
                    'arg_options' => array(
                        'sanitize_callback' => 'sanitize_user',
                    ),
                ),
                'name'        => array(
                    'description' => __( 'Display name for the resource.' ),
                    'type'        => 'string',
                    'context'     => array( 'embed', 'view', 'edit' ),
                    'arg_options' => array(
                        'sanitize_callback' => 'sanitize_text_field',
                    ),
                ),
                'first_name'  => array(
                    'description' => __( 'First name for the resource.' ),
                    'type'        => 'string',
                    'context'     => array( 'edit' ),
                    'arg_options' => array(
                        'sanitize_callback' => 'sanitize_text_field',
                    ),
                ),
                'last_name'   => array(
                    'description' => __( 'Last name for the resource.' ),
                    'type'        => 'string',
                    'context'     => array( 'edit' ),
                    'arg_options' => array(
                        'sanitize_callback' => 'sanitize_text_field',
                    ),
                ),
                'email'       => array(
                    'description' => __( 'The email address for the resource.' ),
                    'type'        => 'string',
                    'format'      => 'email',
                    'context'     => array( 'edit' ),
                    'required'    => true,
                ),
                'url'         => array(
                    'description' => __( 'URL of the resource.' ),
                    'type'        => 'string',
                    'format'      => 'uri',
                    'context'     => array( 'embed', 'view', 'edit' ),
                ),
                'description' => array(
                    'description' => __( 'Description of the resource.' ),
                    'type'        => 'string',
                    'context'     => array( 'embed', 'view', 'edit' ),
                    'arg_options' => array(
                        'sanitize_callback' => 'wp_filter_post_kses',
                    ),
                ),
                'link'        => array(
                    'description' => __( 'Author URL to the resource.' ),
                    'type'        => 'string',
                    'format'      => 'uri',
                    'context'     => array( 'embed', 'view', 'edit' ),
                    'readonly'    => true,
                ),
                'nickname'    => array(
                    'description' => __( 'The nickname for the resource.' ),
                    'type'        => 'string',
                    'context'     => array( 'edit' ),
                    'arg_options' => array(
                        'sanitize_callback' => 'sanitize_text_field',
                    ),
                ),
                'slug'        => array(
                    'description' => __( 'An alphanumeric identifier for the resource.' ),
                    'type'        => 'string',
                    'context'     => array( 'embed', 'view', 'edit' ),
                    'arg_options' => array(
                        'sanitize_callback' => array( $this, 'sanitize_slug' ),
                    ),
                ),
                'registered_date' => array(
                    'description' => __( 'Registration date for the resource.' ),
                    'type'        => 'string',
                    'format'      => 'date-time',
                    'context'     => array( 'edit' ),
                    'readonly'    => true,
                ),
                'roles'           => array(
                    'description' => __( 'Roles assigned to the resource.' ),
                    'type'        => 'array',
                    'context'     => array( 'edit' ),
                ),
                'password'        => array(
                    'description' => __( 'Password for the resource (never included).' ),
                    'type'        => 'string',
                    'context'     => array(), // Password is never displayed
                    'required'    => true,
                ),
                'capabilities'    => array(
                    'description' => __( 'All capabilities assigned to the resource.' ),
                    'type'        => 'object',
                    'context'     => array( 'edit' ),
                    'readonly'    => true,
                ),
                'extra_capabilities' => array(
                    'description' => __( 'Any extra capabilities assigned to the resource.' ),
                    'type'        => 'object',
                    'context'     => array( 'edit' ),
                    'readonly'    => true,
                ),
            ),
        );

        if ( get_option( 'show_avatars' ) ) {
            $avatar_properties = array();

            $avatar_sizes = rest_get_avatar_sizes();
            foreach ( $avatar_sizes as $size ) {
                $avatar_properties[ $size ] = array(
                    'description' => sprintf( __( 'Avatar URL with image size of %d pixels.' ), $size ),
                    'type'        => 'string',
                    'format'      => 'uri',
                    'context'     => array( 'embed', 'view', 'edit' ),
                );
            }

            $schema['properties']['avatar_urls']  = array(
                'description' => __( 'Avatar URLs for the resource.' ),
                'type'        => 'object',
                'context'     => array( 'embed', 'view', 'edit' ),
                'readonly'    => true,
                'properties'  => $avatar_properties,
            );
        }

        $schema['properties']['meta'] = $this->meta->get_field_schema();

        return $this->add_additional_fields_schema( $schema );
    }

    /**
     * Get the query params for collections
     *
     * @return array
     */
    public function get_collection_params() {
        $query_params = parent::get_collection_params();

        $query_params['context']['default'] = 'view';

        $query_params['exclude'] = array(
            'description'        => __( 'Ensure result set excludes specific ids.' ),
            'type'               => 'array',
            'default'            => array(),
            'sanitize_callback'  => 'wp_parse_id_list',
        );
        $query_params['include'] = array(
            'description'        => __( 'Limit result set to specific ids.' ),
            'type'               => 'array',
            'default'            => array(),
            'sanitize_callback'  => 'wp_parse_id_list',
        );
        $query_params['offset'] = array(
            'description'        => __( 'Offset the result set by a specific number of items.' ),
            'type'               => 'integer',
            'sanitize_callback'  => 'absint',
            'validate_callback'  => 'rest_validate_request_arg',
        );
        $query_params['order'] = array(
            'default'            => 'asc',
            'description'        => __( 'Order sort attribute ascending or descending.' ),
            'enum'               => array( 'asc', 'desc' ),
            'sanitize_callback'  => 'sanitize_key',
            'type'               => 'string',
            'validate_callback'  => 'rest_validate_request_arg',
        );
        $query_params['orderby'] = array(
            'default'            => 'name',
            'description'        => __( 'Sort collection by object attribute.' ),
            'enum'               => array(
                'id',
                'include',
                'name',
                'registered_date',
                'slug',
                'email',
                'url',
            ),
            'sanitize_callback'  => 'sanitize_key',
            'type'               => 'string',
            'validate_callback'  => 'rest_validate_request_arg',
        );
        $query_params['slug']    = array(
            'description'        => __( 'Limit result set to resources with a specific slug.' ),
            'type'               => 'string',
            'validate_callback'  => 'rest_validate_request_arg',
        );
        $query_params['roles']   = array(
            'description'        => __( 'Limit result set to resources matching at least one specific role provided. Accepts csv list or single role.' ),
            'type'               => 'array',
            'sanitize_callback'  => 'wp_parse_slug_list',
        );
        return $query_params;
    }
}
