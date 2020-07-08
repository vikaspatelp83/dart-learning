/*
  PARAMETERS:
    -> Required
    -> Optional: 
      --> Positional
      --> Named
      --> Default:
         ---> Positional
         ---> Named
*/

void main() {
  // required parameters
  requiredParameters("NY", "Toronto", "San Diego");

  // optional positional parameters
  optionalPositionalParameters("NY", "Toronto");
  optionalPositionalParameters("NY", "Toronto", "San Diego");

  // optional named parameters
  optionalNamedParameters("NY", "Toronto");
  optionalNamedParameters("NY", "Toronto", c3: "San Diego");

  // default positional
  defaultPositionalParameters("NY", "Toronto");
  defaultPositionalParameters("NY", "Toronto", "San Diego");

  // default named
  defaultNamedParameters("NY", "Toronto");
  defaultNamedParameters("NY", "Toronto", c3: "San Diego");
}

// required parameters
void requiredParameters(String c1, String c2, String c3) {
  print("Required Parameters");
  print("$c1, $c2, $c3");
}

// optional positional parameters
void optionalPositionalParameters(String c1, String c2, [String c3]) {
  print("Optional Positional Parameters");
  print("$c1, $c2, $c3");
}

// optional named parameters
void optionalNamedParameters(String c1, String c2, {String c3}) {
  print("Optional Named Parameters");
  print("$c1, $c2, $c3");
}

// default positional parameters
void defaultPositionalParameters(String c1, String c2, [String c3 = "Mumbai"]) {
  print("deafault positional Parameters");
  print("$c1, $c2, $c3");
}

// default named parameters
void defaultNamedParameters(String c1, String c2, {String c3 = "Mumbai"}) {
  print("default Named Parameters");
  print("$c1, $c2, $c3");
}
