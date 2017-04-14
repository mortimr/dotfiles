function fuse
	vmhgfs-fuse -o allow_other -o auto_unmount .host:/Shared /share
end
