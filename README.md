ubuntify
========

Run its scripts and your ubuntu will have puhitaku-flavored environment.

*Be ubuntified.* Just saying.

###Proxy

If you're accessing the internet via proxy, execute below before cloning:

    echo 'export http_proxy=http://your.proxy.com:port/' | sudo tee -a /etc/profile > /dev/null
    echo 'export https_proxy=https://your.proxy.com:port/' | sudo tee -a /etc/profile > /dev/null
    git config --global http.proxy http://your.proxy.com:port
    git config --global https.proxy http://your.proxy.com:port
    git config --global url."https://".insteadOf git://
