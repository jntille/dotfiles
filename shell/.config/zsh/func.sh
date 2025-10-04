if [[ -d "$(dirname $0)/func" ]]; then
  for file in "$(dirname $0)/func/*.sh"; do
    if [[ -f "$file" ]]; then
      source "$file"
    fi
  done
fi
