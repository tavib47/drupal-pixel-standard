<?php
/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */

use Drupal\node\Entity\Node;

/**
 * Implements hook_install().
 *
 * Create the homepage node.
 */
function pixel_standard_install() {
  $node = Node::create([
    'type' => 'page',
    'title' => 'Homepage',
    'status' => 1,
    'body' => [
      'value' => '<p>Welcome to the homepage!</p>',
      'format' => 'full_html',
    ],
    'alias' => [
      'path' => '/homepage',
    ],
  ]);
  $node->save();
  $node->path->pathauto = 0;
  $node->save();
}
