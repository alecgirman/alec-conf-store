### things to check:


sys.platform == 'linux'

sys.version: starts with python version number

`os.cpu_count`

### ls = os.listdir():

    * returns list of str

    * '.' can be used for current directory

### cd = os.chdir()

### ln = `os.symlink(src, dest, target_is_dir=False, *, dir_fd=None)`

    * In the event that ashe doesn't have a filename but has a descriptor,

    * then that descriptor can be passed as the last arg, `dir_fd`

### rm -r = os.rmdir()

### os.scandir() - more informative than listdir()

	* Returns posix.DirEntry object

	
Help on class DirEntry in posix:

```
		posix.DirEntry = class DirEntry(builtins.object)
		 |  Methods defined here:
		 |  
		 |  __fspath__(self, /)
		 |      Returns the path for the entry.
		 |  
		 |  __repr__(self, /)
		 |      Return repr(self).
		 |  
		 |  inode(self, /)
		 |      Return inode of the entry; cached per entry.
		 |  
		 |  is_dir(self, /, *, follow_symlinks=True)
		 |      Return True if the entry is a directory; cached per entry.
		 |  
		 |  is_file(self, /, *, follow_symlinks=True)
		 |      Return True if the entry is a file; cached per entry.
		 |  
		 |  is_symlink(self, /)
		 |      Return True if the entry is a symbolic link; cached per entry.
		 |  
		 |  stat(self, /, *, follow_symlinks=True)
		 |      Return stat_result object for the entry; cached per entry.
		 |  
		 |  ----------------------------------------------------------------------
		 |  Data descriptors defined here:
		 |  
		 |  name
		 |      the entry's base filename, relative to scandir() "path" argument
		 |  
		 |  path
		 |      the entry's full path name; equivalent to os.path.join(scandir_path, entry.name)
```

## The difference between this and listdir is not only does it give a summary, but calling its stat() function gives alot more details:

## The stat structure
All of these system calls return a stat structure, which contains the following fields:


The fields in the stat structure are as follows:

**st\_dev** This field describes the device on which this file resides.  (The major(3) and minor(3) macros may be useful to decompose the  device  ID  in
		this field.)

**st\_ino** This field contains the file's inode number.

**st\_mode**
This field contains the file type and mode.  See inode(7) for further information.

**st\_nlink**
This field contains the number of hard links to the file.

**st\_uid** This field contains the user ID of the owner of the file.

**st\_gid** This field contains the ID of the group owner of the file.

~~st\_rdev~~
~~This field describes the device that this file (inode) represents.~~
Note: this member is not in the stat() result in python but may be elsewhere.

**st\_size**
This  field  gives  the size of the file (if it is a regular file or a symbolic link) in bytes.  The size of a symbolic link is the length of
the pathname it contains, without a terminating null byte.

**st\_blksize**
This field gives the "preferred" block size for efficient filesystem I/O.

**st\_blocks**
This field indicates the number of blocks allocated to the file, in 512-byte units.  (This may be smaller than st\_size/512 when the file  has holes.)

**st\_atime**
This is the file's last access timestamp.

**st\_mtime**
This is the file's last modification timestamp.

**st\_ctime**
This is the file's last status change timestamp.


## Some other useful functions from posixpath

**I kept only the functions that I could likely end up using, however, the full
documentation can be accessed with `pydoc posixpath` or by going to the link below.**

[Full Docs](https://docs.python.org/3.7/library/posixpath)

**abspath(path)**
	Return an absolute path.

**basename(p)**
	Returns the final component of a pathname

**commonpath(paths)**
	Given a sequence of path names, returns the longest common sub-path.

**commonprefix(m)**
	Given a list of pathnames, returns the longest common leading component

**dirname(p)**
	Returns the directory component of a pathname

**exists(path)**
	Test whether a path exists.  Returns False for broken symbolic links

**expanduser(path)**
	Expand ~ and ~user constructions.  If user or $HOME is unknown,
	do nothing.

**expandvars(path)**
	Expand shell variables of form $var and ${var}.  Unknown variables
	are left unchanged.

**isabs(s)**
	Test whether a path is absolute

**isdir(s)**
	Return true if the pathname refers to an existing directory.

**isfile(path)**
	Test whether a path is a regular file

**islink(path)**
	Test whether a path is a symbolic link

**ismount(path)**
	Test whether a path is a mount point

**join(a, p)**
	Join two or more pathname components, inserting '/' as needed.
	If any component is an absolute path, all previous path components
	will be discarded.  An empty last part will result in a path that
	ends with a separator.

**lexists(path)**
	Test whether a path exists.  Returns True for broken symbolic links

**normcase(s)**
	Normalize case of pathname.  Has no effect under Posix

**normpath(path)**
	Normalize path, eliminating double slashes, etc.

**realpath(filename)**
	Return the canonical path of the specified filename, eliminating any
	symbolic links encountered in the path.

**relpath(path, start=None)**
	Return a relative version of a path

**split(p)**
	Split a pathname.  Returns tuple "(head, tail)" where "tail" is
	everything after the final slash.  Either part may be empty.

**splitext(p)**
	Split the extension from a pathname.

	Extension is everything from the last dot to the end, ignoring
	leading dots.  Returns "(root, ext)"; ext may be empty.
