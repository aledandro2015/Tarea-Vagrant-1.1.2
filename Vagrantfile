Vagrant.configure("2") do |config|

# Configuramos que la máquina virtual va a ser Debian 12 (compatible con VMware) lo podemos comprobar con `cat /etc/os-release`

config.vm.box = "generic/debian12"

# Asignamos nuestro nombre a la máquina, lo podemos comprobar con `hostname`

config.vm.hostname = "debian-alejandro"

# Esto es una configuración específica para VMware, desactiva clones enlazados para evitar errores de snapshots

config.vm.provider "vmware_desktop" do |v|
  v.linked_clone = false
end

# La interfaz 1, Vagrant configura una red NAT por defecto para salida a Internet y SSH.
# la interfaz 2, Red privada(Host-only) con IP estática como nos pide la practica, lo podemos comprobar con `ip a` 

config.vm.network "private_network", ip: "192.168.56.10" 

# Aquí configuramos el reenvío de puertos, del 80 (invitado) al 8080 (host), limitado a localhost, lo podemos comprobar accediendo a la web desde el host usando el puerto :8080

config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

# Aquí indicamos la ruta de nuestro script de aprovisionamiento, lo podemos comprobar con el `systemctl status apache2`

config.vm.provision "shell", path: "instalar_apache.sh"
end
