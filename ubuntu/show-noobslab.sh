awk '$1 == "Package:" { if (a[$2]++ == 0) print $2; }' /var/lib/apt/lists/*noobslab***Packages
