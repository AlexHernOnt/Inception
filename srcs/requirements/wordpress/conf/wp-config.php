<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_database' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '123456' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

define('AUTH_KEY',         '|9,_Oz#8&E9U^oJKe}E^n2<#PuCMji#2CYa<1b+sX+}W(7KP~1&hE<vt!iy{pP*+');
define('SECURE_AUTH_KEY',  '3}JjVmcV[u~a:*}s, mK^kwB|Iu-r6o5.:[7C@{0#A8@J<N-6v<ET39oAz?G23l=');
define('LOGGED_IN_KEY',    'G+;Ld^!ulzW-bZyTO%/5eFU|zvJs?LxMITWhV_.GzF7mmLhaUX3p`@h1G,*I}F}P');
define('NONCE_KEY',        '8YUvTp+6d(yB&DG! V-zt0g8KguMiu=hV5Z.9UD55%S.q^-|}Ld3wZE)f3$ubiI9');
define('AUTH_SALT',        '>S}aAYmNqt/G-qTzX-/r- Z<eYHI/f#752}}.eD=nXMeRkL-KG3(8`Xw2Ub:p6jw');
define('SECURE_AUTH_SALT', '+85|JX?+:$9j$=Cul3^`+f 21(m,(zZsMlR2?$!A/gg8-MY!K2I#Q/.@t0=mG4LD');
define('LOGGED_IN_SALT',   '6pR#R$X)(|q Ypb%Nf{&3COavzs(D8`;cuK3$s-+v$mD>/_zHhq36qK^aA<IJp,L');
define('NONCE_SALT',       '6w@g8u~J|CCR>B26_9GS,I|<b.$fq;J!N_kqF!&%Pu}[VCNzQ8PW%fw{0Ts&*DRg');

/**#@-*/

/**
 * WordPress database table prefix.
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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';