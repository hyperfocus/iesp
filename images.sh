
FILE=$1
while read line
do
  if echo $line | grep -q image
  then
    OLD=`echo $line | awk '{print $2}' | cut -d: -f1`
    NEW=`echo $line | awk '{print "swim/ncr/"$2}' | cut -d: -f1`
    TAG=`echo $line | awk '{print "swim/ncr/"$2}' | cut -d: -f2`
    echo -en "- name: $OLD\n  newName: $NEW\n  newTag: $TAG\n"
  fi
done < $FILE
