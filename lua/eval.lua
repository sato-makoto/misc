num1 = 1
num2 = 2
formula = "foo = " .. tostring(num1) .. " + " ..  tostring(num2)

print(formula)
load(formula)()
print(foo)
