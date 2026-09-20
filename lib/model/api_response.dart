class ApiResponse {
  final int statusCode;
  final String responseData;
  final bool isSuccess;
  final String? errorMessage; 

  ApiResponse({
    required this.statusCode,
    required this.responseData,
    required this.isSuccess,
    this.errorMessage
  });
}