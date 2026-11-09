qemu-system-x86_64 \
        -enable-kvm -cpu host -smp 4 -m 4G \
        -cdrom out/$1.iso -boot d \
        -vga virtio \
        -nic user,model=virtio-net-pci,hostfwd=tcp::60022-:22 \
        -monitor stdio
