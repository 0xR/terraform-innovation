output slugified {
  value   = replace(replace(lower(var.input), "/[^a-z0-9]+/", "-"), "/(^-|-$)/", "")
}
