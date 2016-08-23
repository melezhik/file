# SYNOPSIS

Simple file manager.

# INSTALL

    $ sparrow plg install file

# USAGE

## Manually

    $ sparrow plg run file \
    --param target=/tmp/foo-bar.txt \
    --param content=hello-world \
    --param owner=melezhik \
    --param group=users

## Via sparrowdo

    $ cat sparrowfile
  
    task_run %(
      task    => 'create file',
      plugin  => 'file',
      parameters => %(
        action  => 'create',
        owner   => 'Bill',
        group   => 'Users',
        mode    => '644',
        target  => '/etc/bill/hello.txt'
        content => 'hello Bill!'
      )
    );

    task_run %(
      task    => 'delete file',
      plugin  => 'file',
      parameters => %(
        action  => 'delete',
        target  => '/etc/bill/hello.txt'
    )

# Parameters

## action

One of two - `create|delete`. Default value is 'create'. Should be set.

## target

A file path for file to create/remove . No default value. Should be set.

## mode

Sets a file mode for the target. Default value is `644`. Optional.

## owner

Sets a target ownership to owner. No default value. Optional.

## group

Sets a target group to group. No default value. Optional.

## content

A file content. No default value. Optional.

# Author

[Alexey Melezhik](mailto:melezhik@gmail.com)


