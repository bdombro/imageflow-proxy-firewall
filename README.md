# Imageflow Node Proxy with Firewall

This app proxies to an imageflow service if requests come from a whitelisted domain. It also acts as an easy way to get a vanity URL for imageflow with HTTPS in Plesk.

In the future, it may be nicer to implement this in NGINX instead of Node for performance reasons. The following article may be a good starting point, but would need to still figure out allowlisting 

This repo also contains the means to build a docker image for imageflow_server: see Dockerfile for more info.

If using with Plesk, the only way to block imageflow_server from the internet is with a cloud firewall (ie can't do it with UFW). See https://askubuntu.com/questions/652556/uncomplicated-firewall-ufw-is-not-blocking-anything-when-using-docker#652572
