currencies = { japan: 'yen', us: 'doller', india: 'rupee' }
p currencies.keys
p currencies.values

p currencies.has_key?(:japan)
p currencies.has_key?(:italy)

new_currencies = { itly: 'euro', **currencies }
p new_currencies

p ({ itly: 'euro', **currencies })

p currencies.to_a
