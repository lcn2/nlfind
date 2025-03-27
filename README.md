# nlfind

find files with a newline in their name


# nonlfind

find files without a newline in their name


# To install

```sh
sudo make install
```


# To use

```sh
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

```sh
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

# Examples

```sh
mkdir -p foo
mkdir -p 'foo/bar
'
mkdir -p 'foo/fu
bar'
date > 'foo/the
date'
touch foo/normal
pwd > foo/file

/usr/local/bin/nlfind foo

/usr/local/bin/nonlfind foo

/usr/local/bin/nlfind -l foo

```


# Reporting Security Issues

To report a security issue, please visit "[Reporting Security Issues](https://github.com/lcn2/nlfind/security/policy)".
