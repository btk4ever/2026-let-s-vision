#!/usr/bin/env bash
# Usage: ./scripts/slide-index.sh [slides.md]
# Output: slide index table with page number, line range, layout, and title.

FILE="${1:-slides.md}"

if [[ ! -f "$FILE" ]]; then
  echo "File not found: $FILE" >&2
  exit 1
fi

awk '
BEGIN {
  state = "INIT"  # INIT -> HEADMATTER -> SLIDE
  page = 0
  slide_start = 0
  layout = ""
  title = ""
  in_frontmatter = 0
  printf "%-5s  %-11s  %-18s  %s\n", "Page", "Lines", "Layout", "Title"
  printf "%-5s  %-11s  %-18s  %s\n", "----", "-----------", "------------------", "-----"
}

function flush_slide() {
  if (page > 0) {
    end_line = NR - 1
    printf "S%02d    %-11s  %-18s  %s\n", page, slide_start "-" end_line, (layout ? layout : "-"), title
  }
}

/^---$/ {
  if (state == "INIT") {
    state = "HEADMATTER"
    next
  }
  if (state == "HEADMATTER") {
    # headmatter closed, slide 1 starts on next line
    state = "SLIDE"
    flush_slide()
    page = 1
    slide_start = NR + 1
    layout = ""
    title = ""
    in_frontmatter = 0
    next
  }
  if (state == "SLIDE" && in_frontmatter) {
    # frontmatter closing ---
    in_frontmatter = 0
    next
  }
  if (state == "SLIDE" && !in_frontmatter) {
    # new slide separator
    flush_slide()
    page++
    slide_start = NR
    layout = ""
    title = ""
    in_frontmatter = 1  # next lines might be frontmatter
    next
  }
}

state == "SLIDE" && in_frontmatter && /^[a-zA-Z_][a-zA-Z0-9_]*:/ {
  if ($0 ~ /^layout:/) {
    sub(/^layout:[[:space:]]*/, "")
    layout = $0
  }
  next
}

state == "SLIDE" && in_frontmatter && /^[^-]/ {
  # non-yaml, non-separator line while expecting frontmatter => no frontmatter
  in_frontmatter = 0
}

state == "SLIDE" && !in_frontmatter && /^#+[[:space:]]/ && title == "" {
  t = $0
  sub(/^#+[[:space:]]*/, "", t)
  title = t
}

END {
  flush_slide()
  printf "\nTotal: %d slides\n", page
}
' "$FILE"
