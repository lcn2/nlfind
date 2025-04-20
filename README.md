# nlfind

find files with a newline in their name


# nonlfind

find files without a newline in their name


# To install

```sh
sudo make install
```


# Examples

```sh
$ mkdir -p foo
$ mkdir -p 'foo/bar
'
$ mkdir -p 'foo/fu
bar'
$ date > 'foo/the
date'
$ touch foo/normal
$ pwd > foo/file

$ ls -lRa foo
foo:
total 8
drwxr-xr-x  7 chongo 224 Apr 19 19:57  .
drwxr-xr-x 15 chongo 480 Apr 19 19:58  ..
drwxr-xr-x  2 chongo  64 Apr 19 19:57 'bar'$'\n'
-rw-r--r--  1 chongo  26 Apr 19 19:57  file
drwxr-xr-x  2 chongo  64 Apr 19 19:57 'fu'$'\n''bar'
-rw-r--r--  1 chongo   0 Apr 19 19:57  normal
-rw-r--r--  1 chongo  29 Apr 19 19:57 'the'$'\n''date'

'foo/bar'$'\n':
total 0
drwxr-xr-x 2 chongo  64 Apr 19 19:57 .
drwxr-xr-x 7 chongo 224 Apr 19 19:57 ..

'foo/fu'$'\n''bar':
total 0
drwxr-xr-x 2 chongo  64 Apr 19 19:57 .
drwxr-xr-x 7 chongo 224 Apr 19 19:57 ..

$ /usr/local/bin/nlfind foo
foo/bar

foo/the
date
foo/fu
bar

$ /usr/local/bin/nonlfind foo
foo
foo/file
foo/normal

$ /usr/local/bin/nlfind -l foo
'foo/bar'$'\n'
'foo/fu'$'\n''bar'
'foo/the'$'\n''date'
```


# To use

```
/usr/local/bin/nlfind [-h] [-v level] [-V] [-n] [-N] [-l] dir [find_args ...]

    -h          print help message and exit
    -v level    set verbosity level (def level: 0)
    -V          print version string and exit

    -n          go thru the actions, but do not update any files (def: do the action)
    -N          do not process anything, just parse arguments (def: process something)

    -l          print newlines in files as $'\n'

                NOTE: If find_args are supplied, then -l requires use of -print0.
                      By default, if no find_args are used, -print0 is used by find.
                      Filenames are printed, via -print0 pipe, via: ls -d -B -1

    dir               start searching under dir
    [find_args ...]   additional find args (def: -print w/o -l, -print0 w/ -l)

Exit codes:
     0         all OK
     1         some internal tool exited non-zero
     2         -h and help string printed or -V and version string printed
     3         command line error
 >= 10         internal error

nlfind version: 1.5.1 2025-03-27
```

```
/usr/local/bin/nonlfind [-h] [-v level] [-V] [-n] [-N] dir [find_args ...]

    -h          print help message and exit
    -v level    set verbosity level (def level: 0)
    -V          print version string and exit

    -n          go thru the actions, but do not update any files (def: do the action)
    -N          do not process anything, just parse arguments (def: process something)

    dir		    start searching under dir
    [find_args ...]   addition find args such as (def: -print)

Exit codes:
     0         all OK
     1         some internal tool exited non-zero
     2         -h and help string printed or -V and version string printed
     3         command line error
 >= 10         internal error

nonlfind version: 1.5.1 2025-03-27
```


# Reporting Security Issues

To report a security issue, please visit "[Reporting Security Issues](https://github.com/lcn2/nlfind/security/policy)".
