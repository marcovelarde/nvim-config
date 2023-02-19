-- https://github.com/fatih/gomodifytags#adding-tags--options
GoAddTags = function(...)
  local command = string.gsub(
    ':! gomodifytags -file % -all -w -add-tags $tags',
    '%$(%w+)',
    { tags = table.concat({ ... }, ',') }
  )
  vim.cmd(command)
end

-- https://github.com/fatih/gomodifytags#removing-tags--options
GoRemoveTags = function(...)
  local command = string.gsub(
    ':! gomodifytags -file % -all -w -remove-tags $tags',
    '%$(%w+)',
    { tags = table.concat({ ... }, ',') }
  )
  vim.cmd(command)
end
