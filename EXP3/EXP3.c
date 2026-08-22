import re

code = input("Enter the code: ")

# Remove single-line comments
code = re.sub(r'//.*', '', code)

# Remove multi-line comments
code = re.sub(r'/\*.*?\*/', '', code, flags=re.DOTALL)

# Remove extra spaces, tabs and new lines
code = re.sub(r'\s+', ' ', code).strip()

print("After removing spaces, tabs, new lines and comments:")
print(code)