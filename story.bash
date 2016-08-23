action=$(config action)
owner=$(config owner)
group=$(config group)
mode=$(config mode)
target=$(config target)
content=$(config content)

if test "${action}" == "create"; then
  touch $target || exit 1;

  if ! test -z "${content}"; then
    echo "${content}" > $target || exit 1;
    echo set target content
  fi

  echo target created

  if test "${owner}"; then 
    chown $owner $target || exit 1;
    echo set target owner to $owner
  fi
  
  if test "${group}"; then 
    chgrp $group $target || exit 1;
    echo set target group to $group
  fi
  
  if test "${mode}"; then 
    chmod $mode $target || exit 1;
    echo set target mode to $mode
  fi
  
elif test "${action}" == "remove"; then
  rm -f $target || exit 1;
  echo target removed
else
  echo unknown action $action
  exit 1
fi


