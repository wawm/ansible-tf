# Check if /tmp is on a separate partition
tmp_dev=$(df -h /tmp | awk 'NR==2 {print $1}')
root_dev=$(df -h / | awk 'NR==2 {print $1}')
if [ "$tmp_dev" = "$root_dev" ]; then
  echo "ERROR: /tmp is not on a separate partition."
  exit 1
fi

echo "Disk checks passed."