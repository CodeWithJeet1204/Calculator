// Length
double convertlength(double value, String fromUnit, String toUnit) {
  if (fromUnit == "Kilometer (km)" && toUnit == "Meter (m)") {
    return value * 1000;
  } else if (fromUnit == "Meter (m)" && toUnit == "Kilometer (km)") {
    return value / 1000;
  } else if (fromUnit == "Centimeter (cm)" && toUnit == "Meter (m)") {
    return value / 100;
  } else if (fromUnit == "Meter (m)" && toUnit == "Centimeter (cm)") {
    return value * 100;
  } else if (fromUnit == "Millimeter (mm)" && toUnit == "Meter (m)") {
    return value / 1000;
  } else if (fromUnit == "Meter (m)" && toUnit == "Millimeter (mm)") {
    return value * 1000;
  } else if (fromUnit == "Micrometer (µm)" && toUnit == "Meter (m)") {
    return value / 1000000;
  } else if (fromUnit == "Meter (m)" && toUnit == "Micrometer (µm)") {
    return value * 1000000;

    // Kilometer to other units
  } else if (fromUnit == "Kilometer (km)" && toUnit == "Centimeter (cm)") {
    return value * 100000;
  } else if (fromUnit == "Kilometer (km)" && toUnit == "Millimeter (mm)") {
    return value * 1000000;
  } else if (fromUnit == "Kilometer (km)" && toUnit == "Micrometer (µm)") {
    return value * 1000000000;

    // Meter to other units
  } else if (fromUnit == "Meter (m)" && toUnit == "Centimeter (cm)") {
    return value * 100;
  } else if (fromUnit == "Meter (m)" && toUnit == "Millimeter (mm)") {
    return value * 1000;
  } else if (fromUnit == "Meter (m)" && toUnit == "Micrometer (µm)") {
    return value * 1000000;

    // Centimeter to other units
  } else if (fromUnit == "Centimeter (cm)" && toUnit == "Millimeter (mm)") {
    return value * 10;
  } else if (fromUnit == "Centimeter (cm)" && toUnit == "Micrometer (µm)") {
    return value * 10000;

    // Millimeter to other units
  } else if (fromUnit == "Millimeter (mm)" && toUnit == "Micrometer (µm)") {
    return value * 1000;

    // Handle both units being the same
  } else if (fromUnit == toUnit) {
    return value;
  } else {
    throw Exception("Invalid conversion units");
  }
}

// Area
double convertarea(double value, String fromUnit, String toUnit) {
  if (fromUnit == "Square kilometer (km²)" && toUnit == "Square meter (m²)") {
    return value * 1000000;
  } else if (fromUnit == "Square meter (m²)" &&
      toUnit == "Square kilometer (km²)") {
    return value / 1000000;
  } else if (fromUnit == "Square centimeter (cm²)" &&
      toUnit == "Square meter (m²)") {
    return value / 10000;
  } else if (fromUnit == "Square meter (m²)" &&
      toUnit == "Square centimeter (cm²)") {
    return value * 10000;
  } else if (fromUnit == "Square millimeter (mm²)" &&
      toUnit == "Square meter (m²)") {
    return value / 1000000;
  } else if (fromUnit == "Square meter (m²)" &&
      toUnit == "Square millimeter (mm²)") {
    return value * 1000000;
  } else if (fromUnit == "Hectare (ha)" && toUnit == "Square meter (m²)") {
    return value * 10000;
  } else if (fromUnit == "Square meter (m²)" && toUnit == "Hectare (ha)") {
    return value / 10000;
  } else if (fromUnit == "Acre" && toUnit == "Square meter (m²)") {
    return value * 4046.85642;
  } else if (fromUnit == "Square meter (m²)" && toUnit == "Acre") {
    return value / 4046.85642;
  } else {
    throw Exception("Invalid conversion units");
  }
}

// Volume
double convertvolume(double value, String fromUnit, String toUnit) {
  if (fromUnit == "Cubic kilometer (km³)" && toUnit == "Cubic meter (m³)") {
    return value * 1000000000;
  } else if (fromUnit == "Cubic meter (m³)" &&
      toUnit == "Cubic kilometer (km³)") {
    return value / 1000000000;
  } else if (fromUnit == "Cubic centimeter (cm³)" &&
      toUnit == "Cubic meter (m³)") {
    return value / 1000000;
  } else if (fromUnit == "Cubic meter (m³)" &&
      toUnit == "Cubic centimeter (cm³)") {
    return value * 1000000;
  } else if (fromUnit == "Cubic millimeter (mm³)" &&
      toUnit == "Cubic meter (m³)") {
    return value / 1000000000;
  } else if (fromUnit == "Cubic meter (m³)" &&
      toUnit == "Cubic millimeter (mm³)") {
    return value * 1000000000;
  } else if (fromUnit == "Liter (L)" && toUnit == "Cubic meter (m³)") {
    return value * 0.001;
  } else if (fromUnit == "Cubic meter (m³)" && toUnit == "Liter (L)") {
    return value * 1000;
  } else if (fromUnit == "Gallon (US)" && toUnit == "Cubic meter (m³)") {
    return value * 0.00378541;
  } else if (fromUnit == "Cubic meter (m³)" && toUnit == "Gallon (US)") {
    return value * 264.172;
  } else if (fromUnit == "Gallon (UK)" && toUnit == "Cubic meter (m³)") {
    return value * 0.00454609;
  } else if (fromUnit == "Cubic meter (m³)" && toUnit == "Gallon (UK)") {
    return value * 220.062;
  } else {
    throw Exception("Invalid conversion units");
  }
}

// Temperature
double converttemperature(double value, String fromUnit, String toUnit) {
  if (fromUnit == "Celsius (°C)" && toUnit == "Fahrenheit (°F)") {
    return value * 9 / 5 + 32;
  } else if (fromUnit == "Fahrenheit (°F)" && toUnit == "Celsius (°C)") {
    return (value - 32) * 5 / 9;
  } else if (fromUnit == "Celsius (°C)" && toUnit == "Kelvin (K)") {
    return value + 273.15;
  } else if (fromUnit == "Kelvin (K)" && toUnit == "Celsius (°C)") {
    return value - 273.15;
  } else if (fromUnit == "Celsius (°C)" && toUnit == "Rankine (R)") {
    return (value + 273.15) * 9 / 5 + 459.67;
  } else if (fromUnit == "Rankine (R)" && toUnit == "Celsius (°C)") {
    return (value - 459.67) * 5 / 9 - 273.15;
  } else if (fromUnit == "Celsius (°C)" && toUnit == "Réaumur (°Ré)") {
    return value * 4 / 5;
  } else if (fromUnit == "Réaumur (°Ré)" && toUnit == "Celsius (°C)") {
    return value * 5 / 4;
  } else {
    throw Exception("Invalid conversion units");
  }
}

// Weight
double convertweight(double value, String fromUnit, String toUnit) {
  if (fromUnit == "Kilogram (kg)" && toUnit == "Gram (g)") {
    return value * 1000;
  } else if (fromUnit == "Gram (g)" && toUnit == "Kilogram (kg)") {
    return value / 1000;
  } else if (fromUnit == "Milligram (mg)" && toUnit == "Gram (g)") {
    return value / 1000;
  } else if (fromUnit == "Gram (g)" && toUnit == "Milligram (mg)") {
    return value * 1000;
  } else if (fromUnit == "Microgram (µg)" && toUnit == "Gram (g)") {
    return value / 1000000;
  } else if (fromUnit == "Gram (g)" && toUnit == "Microgram (µg)") {
    return value * 1000000;
  } else if (fromUnit == "Nanogram (ng)" && toUnit == "Gram (g)") {
    return value / 1000000000;
  } else if (fromUnit == "Gram (g)" && toUnit == "Nanogram (ng)") {
    return value * 1000000000;
  } else if (fromUnit == "Pound (lb)" && toUnit == "Kilogram (kg)") {
    return value * 0.453592;
  } else if (fromUnit == "Kilogram (kg)" && toUnit == "Pound (lb)") {
    return value * 2.20462;
  } else if (fromUnit == "Ounce (oz)" && toUnit == "Gram (g)") {
    return value * 28.3495;
  } else if (fromUnit == "Gram (g)" && toUnit == "Ounce (oz)") {
    return value / 28.3495;
  } else {
    throw Exception("Invalid conversion units");
  }
}

// Currency
double convertcurrency(double value, String fromUnit, String toUnit) {
  if (fromUnit == "US Dollar (\$)" && toUnit == "Indian Rupees (₹)") {
    return value * 84.0943;
  } else if (fromUnit == "Indian Rupees (₹)" && toUnit == "US Dollar (\$)") {
    return value * 0.011883;
  } else if (fromUnit == "US Dollar (\$)" && toUnit == "Euro (€)") {
    return value * 0.942475;
  } else if (fromUnit == "Euro (€)" && toUnit == "US Dollar (\$)") {
    return value * 1.06118;
  } else if (fromUnit == "US Dollar (\$)" && toUnit == "British Pound (£)") {
    return value * 0.792245;
  } else if (fromUnit == "British Pound (£)" && toUnit == "US Dollar (\$)") {
    return value * 1.26202;
  } else if (fromUnit == "US Dollar (\$)" && toUnit == "Japanese Yen (¥)") {
    return value * 139.139;
  } else if (fromUnit == "Japanese Yen (¥)" && toUnit == "US Dollar (\$)") {
    return value * 0.007155;
  } else if (fromUnit == "Indian Rupees (₹)" && toUnit == "Euro (€)") {
    return value * 0.0111919;
  } else if (fromUnit == "Euro (€)" && toUnit == "Indian Rupees (₹)") {
    return value * 89.2176;
  } else if (fromUnit == "Indian Rupees (₹)" && toUnit == "British Pound (£)") {
    return value * 0.0094309;
  } else if (fromUnit == "British Pound (£)" && toUnit == "Indian Rupees (₹)") {
    return value * 105.802;
  } else if (fromUnit == "Indian Rupees (₹)" && toUnit == "Japanese Yen (¥)") {
    return value * 1.65121;
  } else if (fromUnit == "Japanese Yen (¥)" && toUnit == "Indian Rupees (₹)") {
    return value * 0.605727;
  } else if (fromUnit == "Euro (€)" && toUnit == "British Pound (£)") {
    return value * 0.840513;
  } else if (fromUnit == "British Pound (£)" && toUnit == "Euro (€)") {
    return value * 1.18911;
  } else if (fromUnit == "Euro (€)" && toUnit == "Japanese Yen (¥)") {
    return value * 147.299;
  } else if (fromUnit == "Japanese Yen (¥)" && toUnit == "Euro (€)") {
    return value * 0.0067996;
  } else if (fromUnit == "British Pound (£)" && toUnit == "Japanese Yen (¥)") {
    return value * 175.858;
  } else if (fromUnit == "Japanese Yen (¥)" && toUnit == "British Pound (£)") {
    return value * 0.005689;
  } else {
    throw Exception("Invalid currency units");
  }
}
