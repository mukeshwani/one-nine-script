#!/bin/bash
#wpConfPath='wp-config.php'
wpConfPath='/usr/local/lsws/wordpress/wp-config.php'

#if ( defined( 'WP_CLI' ) ) {
#        $_SERVER['HTTP_HOST'] = '127.0.0.1';
#}

#define( 'WP_HOME', 'http://' . $_SERVER['HTTP_HOST'] . '/' );
#define( 'WP_SITEURL', 'http://' . $_SERVER['HTTP_HOST'] . '/' );
protocolCode="\$protocol = (!empty(\$_SERVER['HTTPS']) && \$_SERVER['HTTPS'] !== 'off' || \$_SERVER['SERVER_PORT'] == 443) ? 'https' : 'http';"
serverHost="\$hostName = isset( \$_SERVER['HTTP_HOST'] ) ? \$_SERVER['HTTP_HOST'] : \$_SERVER['SERVER_NAME'];"
sed -i.bak "/.*That's all, stop editing! Happy publishing.*/i \\
$serverHost \\
$protocolCode \\
// Set SITEURL and HOME using a dynamic protocol. \\
define('WP_SITEURL', \$protocol . '://' . \$hostName; \\
define('WP_HOME', \$protocol . '://' . \$hostName); \\
" $wpConfPath
