<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp-house' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Je98@CHosP> D,I{&8I3:tmTwLoE{mV^XP<^n*#Gc.[~khcTzdL(&r2pda`$[b?a' );
define( 'SECURE_AUTH_KEY',  'B$m=F`W4E5@8(gNxkD xoD;4y*G.(nnd;Hrgl!Ubw5eOr%MS!ez{,C$oTQK-LX(V' );
define( 'LOGGED_IN_KEY',    'KmICLa<BT$pHY>oLtdG!`MI0N4ecvtk1A(l#UW@l0cudwKdr*JQcC]Zex=klFH?/' );
define( 'NONCE_KEY',        '|mv,VJ>]AeK]zad?_I!>Ur.4Jo)Q=U^k;HKa5hQPIu15rX*!RtZQj];thb;+0P!6' );
define( 'AUTH_SALT',        'tR5d$A,]3aFc{,Co!+eDVRBaJhXf_{ua)BeE}Ao5:fB9DJ1]H]it=X6#S8{s{>i%' );
define( 'SECURE_AUTH_SALT', 'z+I=9Pta~Z<t3P D.b,(%*v,Q)@(jexY-y(46]FE~%B?`]=On!V EF!|De`Dk10V' );
define( 'LOGGED_IN_SALT',   '@$uylIYY%5g4lTXne..o#.6<~1I2+ AjT(d(MBqF=~|YnVj1iAS8-3!{JC+Lf]/;' );
define( 'NONCE_SALT',       'MESfphXrVf|fz:_P]=5uoom~=:W :-VV=[73OSg=V9/mYL3y|}wLrjVKB2yRiDDt' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
