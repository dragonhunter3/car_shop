class Validation {
  static String? fieldValidation(String? value, String field) {
    if (value!.isEmpty) {
      return 'Please enter $field';
    }
    return null;
  }

  static String? emailValidation(String? value) {
    String pattern = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!.trim())) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? passwordValidation(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one digit';
    }
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  static String? confirmPassword(String? value, String confirm) {
    if (value != confirm) {
      return 'Passwords do not match';
    } else if (passwordValidation(value) != null) {
      return passwordValidation(value);
    }
    return null;
  }

  static String? phoneNumberValidation(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a phone number';
    }
    // Allow both formats +923352505018 and 03352505018
    RegExp regex = RegExp(r'^(\+92|0)(3[0-9]{2})[0-9]{7}$');
    if (!regex.hasMatch(value)) {
      return 'Invalid phone number format';
    }
    return null;
  }

  static String? cardNumberValidation(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a card number';
    }
    RegExp regex = RegExp(r'^\d{4}\s\d{4}\s\d{4}\s\d{4}$');
    if (!regex.hasMatch(value)) {
      return 'Please enter a valid card number';
    }
    return null;
  }

  static String? expiryDateValidation(String? value) {
    if (value!.isEmpty) {
      return 'Please enter an expiry date';
    }
    RegExp regex = RegExp(r'^(0[1-9]|1[0-2])\/\d{2}$');
    if (!regex.hasMatch(value)) {
      return 'Please enter a valid expiry date';
    }
    return null;
  }

  static String? cvvValidation(String? value) {
    if (value!.isEmpty) {
      return 'Please enter the CVV';
    }
    RegExp regex = RegExp(r'^\d{3}$');
    if (!regex.hasMatch(value)) {
      return 'Please enter a valid CVV';
    }
    return null;
  }

  static String? numberValidation(String? value, {String field = "number"}) {
    if (value == null || value.isEmpty) {
      return 'Please enter a $field';
    }
    // Regular expression to check if the input is a valid number (integer or decimal)
    RegExp regex = RegExp(r'^\d+(\.\d+)?$');
    if (!regex.hasMatch(value)) {
      return 'Please enter a valid $field (only digits or decimals allowed)';
    }
    return null;
  }



    // Add the date validation function
  static String? dateValidator(String? value) {
    // Check if the field is empty
    if (value == null || value.isEmpty) {
      return 'Please enter a date';
    }

    // Check if the date format is valid (DD/MM/YYYY)
    final regex = RegExp(r'^\d{2}/\d{2}/\d{4}$');
    if (!regex.hasMatch(value)) {
      return 'Invalid date format. Use DD/MM/YYYY';
    }

    // Validate the actual date
    final parts = value.split('/');
    final day = int.parse(parts[0]);
    final month = int.parse(parts[1]);
    final year = int.parse(parts[2]);

    // Basic checks for day and month
    if (day < 1 || day > 31 || month < 1 || month > 12) {
      return 'Invalid date';
    }

    // Further validation for days in months can be added here if needed
    return null; // Return null if validation passes
  }



  









}
