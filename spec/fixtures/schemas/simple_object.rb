object do
  prop(:first_name).required.str
  prop(:last_name).required.str
  prop(:middle_name).str.null
end
