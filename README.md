To build the container:
```
sudo docker build -t monero_minner .
```
Remove the image:
sudo docker rmi monero_minner


To execute bash from the image
```
sudo docker run --rm -it --entrypoint bash monero_minner

#utils to install
apt-get install procps
apt install iproute2
apt install nano


#to starat mining with xmrig
./xmrig pool.supportxmr.com:3333 -u 8ByvfLw6fv7hanUoQoSiHQCjsuJzdYqFpP1DJ1T6s8EaWVGbxrL1S21e9frGszkdV9FDiqtopfACgBecKimPcAbt2oJrKfp -p MyWorker1

```


To execute container and execute te CMD entry point
