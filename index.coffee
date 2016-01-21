module.exports = (spec) -> (model) ->
  res = {}
  res.isvalid = yes
  for subject, tests of spec
    res[subject] =
      isvalid: yes
      messages: []
    for message, test of tests
      continue if test model
      res.isvalid = no
      res[subject].isvalid = no
      res[subject].messages.push message
  res
