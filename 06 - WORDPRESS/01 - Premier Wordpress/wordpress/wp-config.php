<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'wordpress1' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'maximecgn' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', 'Cm89914081**' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'N59uU1bAhAh;{~jHAFcE$@|2rc#dehcB%9i@@<:9Jl{S/BG>+(F!u7wA1qoDAg!f' );
define( 'SECURE_AUTH_KEY',  'hc2Y.*68cj^]b!.[cWO3Ctw:@L>!waA1cvB/hO;OX0z8So8vsCbH0M(4+:CakbO9' );
define( 'LOGGED_IN_KEY',    '%!n@KI[+(B(DS(oE`b@42.owTqSwP[ZjC)-@)/w?ZDCMZN,z-[@)JJvT?&8G*)@M' );
define( 'NONCE_KEY',        '(Ss;q80[`],(M!qHXl,~p]iBQhV>u, z7Fvl6#l4!|l21;kCbZMP[RaFB_Gm.FR}' );
define( 'AUTH_SALT',        '/jPgSX#)k(].y0;735$$G*[c!RI.$V&Q(6;5nL5QB(j0f+VXlt`w7T1?gsVGQ)!~' );
define( 'SECURE_AUTH_SALT', 'mILZ%L]nIg}(~n+[+s@Q;6`tEu*ZO%#egiE|lBP8k#/N{xi6-I^F[NfgL$u.dmKL' );
define( 'LOGGED_IN_SALT',   't&K20IE#02Neh^[!lK.65S@+o<;pV_A|-#b}l:Ebet4BCXA,U7ij-k)rp~uQ77,)' );
define( 'NONCE_SALT',       '.Mzt_R14.v]u?{]r5i7eb9/{]+4z<RZa-gK4:#QQytq8EaxHo3x4zs.ddDVr9V7w' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortement recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );
