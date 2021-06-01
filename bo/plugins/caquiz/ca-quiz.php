<?php
/**
 * Plugin Name:  CA-Quiz

 * Description:   CA-Quiz

 * Version:     1.0
 * Author:      Chifco
 * Text Domain: CA-Quiz

 * @package   CA-Quiz
 * @version   1.0.
 * @author    Chifco <contact@chifco.com>
 * @copyright Copyright (c) Chifco
 */

function init_quiz()
{

    $labels = array(
        'name' => __('Quiz', 'caquiz'),
        'singular_name' => __('Advanced Custom Fields', 'caquiz'),
        'add_new' => __('Add New', 'caquiz'),
        'add_new_item' => __('Add New Quiz', 'caquiz'),
        'edit_item' => __('Edit Quiz', 'caquiz'),
        'new_item' => __('New Quiz', 'caquiz'),
        'view_item' => __('View Quiz', 'caquiz'),
        'search_items' => __('Search Quiz', 'caquiz'),
        'not_found' => __('Quiz not found', 'caquiz'),
        'not_found_in_trash' => __('Quiz not found in Trash', 'caquiz'),
    );

    register_post_type('caquiz', array(
        'labels' => $labels,
        'public' => false,
        'show_ui' => true,
        '_builtin' => false,
        'capability_type' => 'page',
        'hierarchical' => true,
        'rewrite' => false,
        'query_var' => "caquiz",
        'supports' => array(
            'title',
        ),
        'show_in_menu' => false,

    ));

    $labels2 = array(
        'name' => __('Question', 'caquiz'),
        'singular_name' => __('Advanced Custom Fields', 'caquiz'),
        'add_new' => __('Add Question', 'caquiz'),
        'add_new_item' => __('Add New Question', 'caquiz'),
        'edit_item' => __('Edit Question', 'caquiz'),
        'new_item' => __('New Question', 'caquiz'),
        'view_item' => __('View Question', 'caquiz'),
        'search_items' => __('Search Question', 'caquiz'),
        'not_found' => __('Program not found', 'caquiz'),
        'not_found_in_trash' => __('Question not found in Trash', 'caquiz'),
    );

    register_post_type('caquestion', array(
        'labels' => $labels2,
        'public' => false,
        'show_ui' => true,
        '_builtin' => false,
        'capability_type' => 'page',
        'hierarchical' => true,
        'rewrite' => false,
        'query_var' => "caquestion",
        'supports' => array(
            'title',
        ),
        'show_in_menu' => false,

    ));

}

function addquiz_to_menu()
{
    add_menu_page(__("Quiz", 'caquiz'), __("Quiz", 'caquiz'), 'manage_options', 'edit.php?post_type=caquiz', false, plugins_url('/img/sessions.png', __FILE__), '80.025');
    add_menu_page(__("Questions", 'caquiz'), __("Questions", 'caquiz'), 'manage_options', 'edit.php?post_type=caquestion', false, plugins_url('/img/programs.png', __FILE__), '80.025');

}

add_action('init', 'init_quiz', 1);
add_action('admin_menu', 'addquiz_to_menu', 2);
