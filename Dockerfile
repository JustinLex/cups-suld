FROM jacobalberty/cups

RUN apt-get update && apt-get install curl gnupg -y

RUN curl -sSkL -o /tmp/suldr-keyring_2_all.deb http://www.bchemnet.com/suldr/pool/debian/extra/su/suldr-keyring_2_all.deb \
&& dpkg -i /tmp/suldr-keyring_2_all.deb \
&& bash -c 'echo "deb http://www.bchemnet.com/suldr/ debian extra" >> /etc/apt/sources.list'

RUN apt-get update && apt-get install suld-driver2-1.00.36 -y
