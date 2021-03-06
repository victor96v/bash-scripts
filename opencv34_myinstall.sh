sudo apt-get update
sudo apt-get upgrade -y

## Pyton installation ##
sudo apt-get install -y python3.5
sudo apt-get install -y python3-pipsudo
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip

## OpenCV 3.4 Installation ##
# The source files would be downloaded to ~/opencv
cd ~/
mkdir opencv
cd ~/opencv

sudo apt-get install -y build-essential 
sudo apt-get install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install -y python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y libgtk-3-dev
sudo apt-get install -y libatlas-base-dev gfortran pylint
sudo apt-get install -y python2.7-dev python3.5-dev
sudo apt-get install -y unzip wget

if [ -e opencv-3.4.0.zip ];	then
	echo "ya te has descargado opencv 3.4.0"
else
	wget https://github.com/opencv/opencv/archive/3.4.0.zip -O opencv-3.4.0.zip
fi
if [ -e opencv_contrib-3.4.0.zip ];	then
	echo "ya te has descargado opencv contrib 3.4.0"
else
	wget https://github.com/opencv/opencv_contrib/archive/3.4.0.zip -O opencv_contrib-3.4.0.zip
fi

unzip opencv-3.4.0.zip
unzip opencv_contrib-3.4.0.zip
rm opencv-3.4.0.zip
rm opencv_contrib-3.4.0.zip 

cd  opencv-3.4.0
mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_EXAMPLES=OFF -DWITH_GTK=ON -DCMAKE_INSTALL_PREFIX=/usr/local -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-3.4.0/modules -DOPENCV_ENABLE_NONFREE=True ..
make -j$(nproc)
sudo make install
sudo ldconfig
