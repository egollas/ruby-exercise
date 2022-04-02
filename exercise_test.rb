# Test method for file exercise.rb and implementing assert helpers on test_utils.rb
require_relative './exercise'
require_relative './test_utils'

incoming = [{ date: 20_095_001, width: 2 }, { date: 20_095_001, height: 7 },
            { date: 20_095_001, depth: 3 }, { date: 20_095_002, width: 4 },
            { date: 20_095_002, height: 6 }, { date: 20_095_002, depth: 2 }]

incoming2 = [{ date: 20_095_001, width: 2 }, { date: 20_095_001, height: 7 },
             { date: 20_095_001, depth: 3 }, { date: 20_095_002, width: 4 },
             { date: 20_095_002, height: 6 }, { date: 20_095_002, depth: 2 },
             { date: 20_095_001, width: 8 }, { date: 20_095_002, depth: 5 }]

expected = [{ date: 20_095_001, width: 2, height: 7, depth: 3 },
            { date: 20_095_002, width: 4, height: 6, depth: 2 }]

expected2 = [{ date: 20_095_001, width: 8, height: 7, depth: 3 },
             { date: 20_095_002, width: 4, height: 6, depth: 5 }]

assert('combine information by date reference', outgoing(incoming), expected)
assert('Use the latest attributes values when attribute key is duplicated', outgoing(incoming2), expected2)
