# BMI Calculation = (Weight in pounds x 703) / (Height in inches x height in inches)

# User Input for Height and Weight
Height = int(input("Enter your Height in inches: "))
Weight = int(input("Enter your Weight in pounds: "))

# User Input for Name
Name = input("Enter your Name: ")

# BMI Calculation
BMI = round((Weight * 703) / (Height * Height), 1)


# Calculate BMI Range
def CalcRange(BMI):
    if BMI < 18.5:
        return "Underweight"
    elif BMI >= 18.5 and BMI <= 24.9:
        return "Normal Weight"
    elif BMI >= 25 and BMI <= 29.9:
        return "OverWeight"
    elif BMI >= 30 and BMI <= 34.9:
        return "Obese"
    elif BMI >= 35 and BMI <= 39.9:
        return "Severely Obese"
    elif BMI >= 40:
        return "Morbidly Obese"

# Print Output
print(f"Hi {Name}, your BMI is currently {BMI} Which means you are {CalcRange(BMI)}.")
