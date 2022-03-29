##          ver dispositivos de video
#ls /dev/video*

##          verificaremos los atributos USB de la cámara (/dev/video2)
#udevadm info --name=/dev/video2 --attribute-walk

##          Info que queremos:
#ATTRS{idProduct}=="xxxx"
#ATTRS{idVendor}=="xxxx"

##          creando el archivo de configuración
#sudo nano /etc/udev/rules.d/99-uvc.rules
##          agregando la siguiente linea de confi de la cam (ejemplo)
#SUBSYSTEMS=="usb", ENV{DEVTYPE}=="usb_device", ATTRS{idVendor}=="xxxx", ATTRS{idProduct}=="xxxx", MODE="0666"
##          webcam interna
#SUBSYSTEMS=="usb", ENV{DEVTYPE}=="usb_device", ATTRS{idVendor}=="1bcf", ATTRS{idProduct}=="28c4", MODE="0666"
##          webcam externa
#SUBSYSTEMS=="usb", ENV{DEVTYPE}=="usb_device", ATTRS{idVendor}=="1bcf", ATTRS{idProduct}=="2b96", MODE="0666"

##          recargar las reglas de Udev
#sudo udevadm control --reload-rules

##          Info de la camara para llenar el .launch
#v4l2-ctl --list-formats-ext -d /dev/video2

##          Para obtener calibraciones de la camara .yaml
##          ejecutamos el script de calibracion
#rosrun camera_calibration cameracalibrator.py --size 6x7 --square 0.0495 image:=/image_raw camera:=/
##          Calibramos, y obtenemos el .yaml, despues lo movemos a la carpeta de config/ de nuestro package